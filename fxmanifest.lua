fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'sobing4413'
description 'Hair shaver'
version '1.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

dependencies {
    'qb-core',
    'ox_inventory'
}