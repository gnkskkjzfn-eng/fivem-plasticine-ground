-- Plasticine Ground Effect Configuration
-- Adjust these values to customize the effect

Config = {
    -- Enable/disable the plasticine effect
    Enabled = true,
    
    -- Effect strength (0.0 to 1.0)
    -- Higher = more plasticine smooth appearance
    Strength = 0.7,
    
    -- Saturation multiplier (0.0 to 2.0)
    -- 1.0 = normal saturation
    -- < 1.0 = more muted colors
    -- > 1.0 = more vibrant colors
    Saturation = 1.15,
    
    -- Contrast multiplier (0.0 to 2.0)
    -- 1.0 = normal contrast
    -- < 1.0 = flatter appearance
    -- > 1.0 = more contrast
    Contrast = 0.85,
    
    -- Softness factor (0.0 to 1.0)
    -- Higher = softer, more smoothed normals
    Softness = 0.65,
    
    -- Specular intensity for highlights (0.0 to 1.0)
    -- Lower = less shiny, more matte plasticine look
    SpecularIntensity = 0.12,
    
    -- Specular exponent (4.0 to 128.0)
    -- Lower = broader, softer highlights
    -- Higher = sharper, smaller highlights
    SpecularExponent = 6.0,
    
    -- Subsurface scattering fake strength (0.0 to 1.0)
    -- Adds light bleed for clay-like appearance
    SubsurfaceStrength = 0.2,
    
    -- Color tint for plasticine effect RGB (0.0 to 1.0 each)
    ColorTintR = 1.0,
    ColorTintG = 0.98,
    ColorTintB = 0.95,
    
    -- Diffuse brightness boost (0.0 to 2.0)
    DiffuseBrightness = 1.1,
    
    -- Effect range - how far from player to apply effect (in meters)
    EffectRange = 150.0,
    
    -- Debug mode - shows effect status in console
    Debug = false
}

-- Presets for quick configuration
Presets = {
    -- Soft clay-like appearance
    SoftClay = {
        Strength = 0.8,
        Saturation = 1.1,
        Contrast = 0.8,
        Softness = 0.75,
        SpecularIntensity = 0.08,
        SpecularExponent = 5.0,
        SubsurfaceStrength = 0.25,
        DiffuseBrightness = 1.15
    },
    
    -- Smooth plastic appearance
    SmoothPlastic = {
        Strength = 0.65,
        Saturation = 1.2,
        Contrast = 0.9,
        Softness = 0.55,
        SpecularIntensity = 0.15,
        SpecularExponent = 8.0,
        SubsurfaceStrength = 0.15,
        DiffuseBrightness = 1.05
    },
    
    -- Matte plasticine
    MattePlasticine = {
        Strength = 0.75,
        Saturation = 1.0,
        Contrast = 0.75,
        Softness = 0.8,
        SpecularIntensity = 0.05,
        SpecularExponent = 4.0,
        SubsurfaceStrength = 0.3,
        DiffuseBrightness = 1.2
    }
}

-- Export function to change preset
function SetPreset(presetName)
    if Presets[presetName] then
        for k, v in pairs(Presets[presetName]) do
            Config[k] = v
        end
        if Config.Debug then
            print("^2[Plasticine Ground]^7 Preset '" .. presetName .. "' applied")
        end
    else
        print("^1[Plasticine Ground]^7 Preset '" .. presetName .. "' not found")
    end
end
