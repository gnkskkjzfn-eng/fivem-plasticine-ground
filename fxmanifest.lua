fx_version 'cerulean'
game 'gta5'

author 'Plasticine Ground Effect'
description 'FiveM client-side plasticine ground effect using screen-space post-processing'
version '1.0.0'

client_scripts {
    'config.lua',
    'client.lua'
}

files {
    'shaders/plasticine_screen.fx'
}

ui_page 'html/ui.html'

files {
    'html/ui.html',
    'html/ui.js',
    'html/ui.css'
}

provide 'plasticine_ground'
