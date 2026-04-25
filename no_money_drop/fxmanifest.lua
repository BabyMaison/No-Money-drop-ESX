fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'BabyMaison'
description 'Blocks dropping money and black_money with ox_inventory while keeping Give enabled.'
version '1.0.0'

shared_script '@ox_lib/init.lua'

dependencies {
    'ox_lib',
    'ox_inventory'
}

server_scripts {
    'config.lua',
    'server.lua'
}
