local vulcanus = data.raw["planet"]["vulcanus"].map_gen_settings
vulcanus.property_expression_names["entity:coal:probability"] = nil
vulcanus.property_expression_names["entity:coal:richness"] = nil
vulcanus.property_expression_names["entity:carbon:probability"] =
    "vulcanus_coal_probability"
vulcanus.property_expression_names["entity:carbon:richness"] =
    "vulcanus_coal_richness"
vulcanus.autoplace_settings.entity.settings["coal"] = nil
vulcanus.autoplace_settings.entity.settings["carbon"] = {}
