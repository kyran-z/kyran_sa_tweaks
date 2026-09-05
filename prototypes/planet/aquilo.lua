--------------------------------------- NOISE EXPRESSIONS
data:extend({
    {
        type = "noise-function", name = "ky_aquilo_simple_billows",
        parameters = { "seed1", "octaves", "input_scale" },
        expression = "abs(quick_multioctave_noise{x = x, y = y, seed0 = map_seed, seed1 = seed1, input_scale = input_scale, output_scale = 1, offset_x = 10000, octaves = octaves, octave_input_scale_multiplier = 0.5, octave_output_scale_multiplier = 0.75})"
    }, {
        type = "noise-expression", name = "ky_aquilo_elevation",
        expression = "max(lerp(scattered_islands, clustered_archipelago, 0.7), aquilo_elevation + 3)",
        local_expressions = {
            scattered_islands = "-18 + 35 * clamp(scattered_peaks * 2.5 - 1.8, 0, 1) + 12 * island_detail",
            clustered_archipelago = "-16 + 40 * clamp(archipelago_density * 2.0 - 1.3, 0, 1) + 18 * (pow(voronoi_large * max(0, voronoi_cell * 1.5 - 0.3) + 0.8 * voronoi_small * max(0, aux + 0.4), 0.65))",
            scattered_peaks = "abs(amplitude_corrected_multioctave_noise{x = x, y = y, seed0 = map_seed, seed1 = 1000, input_scale = segmentation_mult / 2.2, offset_x = -15000, octaves = 5, persistence = 0.75, amplitude = 1.2})",
            archipelago_density = "abs(amplitude_corrected_multioctave_noise{x = x, y = y, seed0 = map_seed, seed1 = 2000, input_scale = segmentation_mult / 1.5, offset_x = 8000, octaves = 4, persistence = 0.7, amplitude = 1.2})",
            island_detail = "min(ky_aquilo_simple_billows{seed1 = 2100, octaves = 4, input_scale = segmentation_mult / 1.8}, ky_aquilo_simple_billows{seed1 = 3100, octaves = 4, input_scale = segmentation_mult / 1.3}, ky_aquilo_simple_billows{seed1 = 4100, octaves = 4, input_scale = segmentation_mult})",
            voronoi_large = "voronoi_facet_noise{x = x + ky_aquilo_wobble_x * 3.5, y = y + ky_aquilo_wobble_y * 3.5, seed0 = map_seed, seed1 = 'ky_aquilo-archipelagos', grid_size = 90, distance_type = 'euclidean', jitter = 0.85}",
            voronoi_cell = "voronoi_cell_id{x = x + ky_aquilo_wobble_x * 3.5, y = y + ky_aquilo_wobble_y * 3.5, seed0 = map_seed, seed1 = 'ky_aquilo-archipelagos', grid_size = 90, distance_type = 'euclidean', jitter = 0.85}",
            voronoi_small = "voronoi_facet_noise{x = x + ky_aquilo_wobble_x * 3.5, y = y + ky_aquilo_wobble_y * 3.5, seed0 = map_seed, seed1 = 'ky_aquilo-islands', grid_size = 35, distance_type = 'euclidean', jitter = 0.9}",
            segmentation_mult = "1 / 20"
        }
    }, {
        type = "noise-expression", name = "ky_aquilo_spawn_island_mask",
        expression = "clamp(ky_aquilo_spawn_shape_noise - 0.3, 0, 1) * ky_aquilo_spawn_falloff",
        local_expressions = {
            base_dist = "sqrt(x*x + y*y)",
            ky_aquilo_spawn_shape_noise = "0.7 + multioctave_noise{x = x*0.8, y = y*0.8, seed0 = map_seed, seed1 = 45678, octaves = 3, persistence = 0.65, input_scale = 1/40} * 0.6",
            ky_aquilo_spawn_falloff = "clamp(1.8 - base_dist / 30, 0, 1)"
        }
    },
    {
        type = "noise-expression", name = "ky_aquilo_aux_scale",
        expression = "2.0"
    }, {
        type = "noise-expression", name = "ky_aquilo_wobble_x",
        expression = "multioctave_noise{x = x, y = y, seed0 = map_seed, seed1 = 12243, octaves = 4, persistence = 0.7, input_scale = ky_aquilo_aux_scale / 60, output_scale = 0.7}"
    }, {
        type = "noise-expression", name = "ky_aquilo_wobble_y",
        expression = "multioctave_noise{x = x, y = y, seed0 = map_seed, seed1 = 13243, octaves = 4, persistence = 0.7, input_scale = ky_aquilo_aux_scale / 60, output_scale = 0.7}"
    }, {
        type = "noise-expression", name = "ky_aquilo_aux",
        expression = "0.5 + multioctave_noise{x = x + ky_aquilo_wobble_x * 140 / ky_aquilo_aux_scale, y = y + ky_aquilo_wobble_y * 140 / ky_aquilo_aux_scale, seed0 = map_seed, seed1 = 14243, octaves = 4, persistence = 0.8, input_scale = ky_aquilo_aux_scale / 12, output_scale = 1}"
    }
})

data:extend({
    {
        type = "autoplace-control", name = "quartz",
        localised_name = { "", "[entity=quartz] ", { "entity-name.quartz" } },
        richness = true, order = "e-d", category = "resource"
    }
})

local aquilo = data.raw["planet"]["aquilo"].map_gen_settings
aquilo.property_expression_names.elevation = "ky_aquilo_elevation"
aquilo.property_expression_names.aux = "ky_aquilo_aux"

aquilo.property_expression_names["entity:crude-oil:probability"] = nil
aquilo.property_expression_names["entity:crude-oil:richness"] = nil
aquilo.property_expression_names["entity:bitumen:probability"] =
    "aquilo_crude_oil_probability"
aquilo.property_expression_names["entity:bitumen:richness"] =
    "aquilo_crude_oil_richness"

aquilo.autoplace_settings.entity.settings["crude-oil"] = nil
aquilo.autoplace_settings.entity.settings["bitumen"] = {}
aquilo.autoplace_settings.entity.settings["quartz"] = {}
aquilo.autoplace_controls["quartz"] = {}

local tile_collision_masks = require(
    "__kyran_sa_tweaks__/prototypes/planet/collision-masks")

data.raw["tile"]["ammoniacal-ocean"].collision_mask =
    tile_collision_masks.new_ammonia_ocean()
data.raw["tile"]["ammoniacal-ocean-2"].collision_mask =
    tile_collision_masks.new_ammonia_ocean()
data.raw["tile"]["brash-ice"].collision_mask =
    tile_collision_masks.new_ammonia_ocean()
