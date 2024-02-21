Config = {}
Config.UseTruckerJob = false                            -- true = The shops stock is based on when truckers refill it | false = shop inventory never runs out
Config.UseTarget = GetConvar('UseTarget', 'false') ==
    'true'                                              -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.ShopsInvJsonFile = './json/shops-inventory.json' -- json file location

Config.SellCasinoChips = {
    coords = vector4(950.37, 34.72, 71.87, 33.82),
    radius = 1.5,
    ped = 's_m_y_casino_01'
}

-- optional requiredJob = {'police', 'ambulance'}
-- optional requiredGang = {'ballas', 'vagps'}
-- optional requiredLicense = {'driver', 'business', 'weapon'}

local bandage = 2
local lotto = 2
local beer = 2

Config.Products = {
    ['normal'] = {
        { name = 'tosti',         price = 2,       amount = 50,   info = {}, type = 'item' },
        { name = 'water_bottle',  price = 2,       amount = 50,   info = {}, type = 'item' },
        { name = 'kurkakola',     price = 2,       amount = 50,   info = {}, type = 'item' },
        { name = 'twerks_candy',  price = 2,       amount = 50,   info = {}, type = 'item' },
        { name = 'snikkel_candy', price = 2,       amount = 50,   info = {}, type = 'item' },
        { name = 'sandwich',      price = 2,       amount = 50,   info = {}, type = 'item' },
        { name = 'beer',          price = 7,       amount = 50,   info = {}, type = 'item' },
        { name = 'whiskey',       price = 10,      amount = 50,   info = {}, type = 'item' },
        { name = 'vodka',         price = 12,      amount = 50,   info = {}, type = 'item' },
        { name = 'bandage',       price = bandage, amount = 50,   info = {}, type = 'item' },
        { name = 'lighter',       price = 2,       amount = 50,   info = {}, type = 'item' },
        { name = 'rolling_paper', price = 2,       amount = 5000, info = {}, type = 'item' },
        { name = 'lotto',         price = lotto,   amount = 100,  info = {}, type = 'item' }
    },
    ['liquor'] = {
        { name = 'beer',    price = beer, amount = 50, info = {}, type = 'item' },
        { name = 'whiskey', price = 10,   amount = 50, info = {}, type = 'item' },
        { name = 'vodka',   price = 12,   amount = 50, info = {}, type = 'item' },
    },
    ['hardware'] = {
        { name = 'lockpick',          price = 200, amount = 50,  info = {}, type = 'item' },
        { name = 'weapon_wrench',     price = 250, amount = 250, info = {}, type = 'item' },
        { name = 'weapon_hammer',     price = 250, amount = 250, info = {}, type = 'item' },
        { name = 'repairkit',         price = 250, amount = 50,  info = {}, type = 'item', requiredJob = { 'mechanic', 'police' } },
        { name = 'screwdriverset',    price = 350, amount = 50,  info = {}, type = 'item' },
        { name = 'phone',             price = 100, amount = 50,  info = {}, type = 'item' },
        { name = 'radio',             price = 250, amount = 50,  info = {}, type = 'item' },
        { name = 'binoculars',        price = 50,  amount = 50,  info = {}, type = 'item' },
        { name = 'firework1',         price = 50,  amount = 50,  info = {}, type = 'item' },
        { name = 'firework2',         price = 50,  amount = 50,  info = {}, type = 'item' },
        { name = 'firework3',         price = 50,  amount = 50,  info = {}, type = 'item' },
        { name = 'firework4',         price = 50,  amount = 50,  info = {}, type = 'item' },
        { name = 'fitbit',            price = 400, amount = 150, info = {}, type = 'item' },
        { name = 'cleaningkit',       price = 150, amount = 150, info = {}, type = 'item' },
        { name = 'advancedrepairkit', price = 500, amount = 50,  info = {}, type = 'item', requiredJob = { 'mechanic' } },
    },
    ['weedshop'] = {
        { name = 'joint',          price = 10,  amount = 50,   info = {}, type = 'item' },
        { name = 'weapon_poolcue', price = 100, amount = 50,   info = {}, type = 'item' },
        { name = 'weed_nutrition', price = 20,  amount = 50,   info = {}, type = 'item' },
        { name = 'empty_weed_bag', price = 2,   amount = 1000, info = {}, type = 'item' },
        { name = 'rolling_paper',  price = 2,   amount = 1000, info = {}, type = 'item' },
    },
    ['gearshop'] = {
        { name = 'diving_gear', price = 2500, amount = 10, info = {}, type = 'item' },
        { name = 'jerry_can',   price = 200,  amount = 50, info = {}, type = 'item' },
    },
    ['leisureshop'] = {
        { name = 'parachute',   price = 2500, amount = 10, info = {}, type = 'item' },
        { name = 'binoculars',  price = 50,   amount = 50, info = {}, type = 'item' },
        { name = 'diving_gear', price = 2500, amount = 10, info = {}, type = 'item' },
        { name = 'diving_fill', price = 500,  amount = 10, info = {}, type = 'item' },
    },
    ['weapons'] = {
        { name = 'weapon_knife',         price = 250,  amount = 250, info = {}, type = 'weapon' },
        { name = 'weapon_bat',           price = 250,  amount = 250, info = {}, type = 'weapon' },
        { name = 'weapon_hatchet',       price = 250,  amount = 250, info = {}, type = 'weapon' },
        { name = 'pistol_ammo',          price = 250,  amount = 250, info = {}, type = 'item',   requiredLicense = { 'weapon' } },
        { name = 'weapon_pistol',        price = 2500, amount = 5,   info = {}, type = 'weapon', requiredLicense = { 'weapon' } },
        { name = 'weapon_snspistol',     price = 1500, amount = 5,   info = {}, type = 'weapon', requiredLicense = { 'weapon' } },
        { name = 'weapon_vintagepistol', price = 4000, amount = 5,   info = {}, type = 'weapon', requiredLicense = { 'weapon' } },
    },
    ['pizzeria'] = {
        { name = 'pizza', price = 3, amount = 1000, info = {}, type = 'item' }
    },
    ['casino'] = {
        { name = 'casinochips', price = 1, amount = 999999, info = {}, type = 'item' }
    },
    ['market'] = {
        { name = 'tomato', price = 100,   amount = 0.5, info = {}, type = 'item' },
        { name = 'lotto',  price = lotto, amount = 100, info = {}, type = 'item' }
    },
    ['beanmachine'] = {
        { name = 'coffee', price = 0.5, amount = 50, info = {}, type = 'item' },
        { name = 'tosti',  price = 1,   amount = 50, info = {}, type = 'item' },
        { name = 'donuts', price = 1,   amount = 50, info = {}, type = 'item' },
    },
    ['bowling'] = {
        { name = 'tosti',        price = 2,     amount = 50,     info = {}, type = 'item' },
        { name = 'water_bottle', price = 2,     amount = 50,     info = {}, type = 'item' },
        { name = 'kurkakola',    price = 2,     amount = 50,     info = {}, type = 'item' },
        { name = 'beer',         price = beer,  amount = 50,     info = {}, type = 'item' },
        { name = 'bandage',      price = 2,     amount = 999999, info = {}, type = 'item' },
        { name = 'lotto',        price = lotto, amount = 999999, info = {}, type = 'item' }
    },
    ['bahama'] = {
        { name = 'cleaningkit',  price = 150,   amount = 150,    info = {}, type = 'item', requiredGang = { 'bahama' } },
        { name = 'lockpick',     price = 200,   amount = 50,     info = {}, type = 'item', requiredGang = { 'bahama' } },
        { name = 'tosti',        price = 2,     amount = 50,     info = {}, type = 'item' },
        { name = 'water_bottle', price = 2,     amount = 50,     info = {}, type = 'item' },
        { name = 'kurkakola',    price = 2,     amount = 50,     info = {}, type = 'item' },
        { name = 'beer',         price = beer,  amount = 50,     info = {}, type = 'item' },
        { name = 'bandage',      price = 2,     amount = 999999, info = {}, type = 'item' },
        { name = 'lotto',        price = lotto, amount = 999999, info = {}, type = 'item' }
    },
    ['stadium'] = {
        { name = 'tosti',           price = 2,      amount = 50,    info = {}, type = 'item' },
        { name = 'water_bottle',    price = 2,      amount = 50,    info = {}, type = 'item' },
        { name = 'kurkakola',       price = 2,      amount = 50,    info = {}, type = 'item' },
        { name = 'beer',            price = beer,   amount = 50,    info = {}, type = 'item' },
        { name = 'lotto',           price = lotto,  amount = 999999,info = {}, type = 'item' },
        { name = 'coffee',          price = 0.5,    amount = 50,    info = {}, type = 'item' }
    },
    -- FACÇÃO 1 GROTA
    ['grota'] = {
        { name = 'cleaningkit',     price = 150,     amount = 150,    info = {}, type = 'item', requiredGang = { 'grota' } },
        { name = 'lockpick',        price = 200,     amount = 50,     info = {}, type = 'item', requiredGang = { 'grota' } },
        { name = 'tosti',           price = 2,       amount = 50,     info = {}, type = 'item' },
        { name = 'water_bottle',    price = 2,       amount = 50,     info = {}, type = 'item' },
        { name = 'kurkakola',       price = 2,       amount = 50,     info = {}, type = 'item' },
        { name = 'beer',            price = beer,    amount = 50,     info = {}, type = 'item' },
        { name = 'bandage',         price = bandage, amount = 999999, info = {}, type = 'item' },
        { name = 'lotto',           price = lotto,   amount = 999999, info = {}, type = 'item' },
        { name = 'empty_weed_bag',  price = 20,      amount = 999999, info = {}, type = 'item' }
    },
    ['pharmacy'] = {
        { name = 'bandage', price = bandage, amount = 999999, info = {}, type = 'item' }
    },
    ['pillbox'] = {
        { name = 'bandage', price = bandage, amount = 999999, info = {}, type = 'item' }
    },
    ['phones'] = {
        { name = 'phone',        price = 100, amount = 999999, info = {}, type = 'item' },
        { name = 'black_phone',  price = 100, amount = 999999, info = {}, type = 'item' },
        { name = 'yellow_phone', price = 100, amount = 999999, info = {}, type = 'item' },
        { name = 'red_phone',    price = 100, amount = 999999, info = {}, type = 'item' },
        { name = 'green_phone',  price = 100, amount = 999999, info = {}, type = 'item' },
        { name = 'white_phone',  price = 100, amount = 999999, info = {}, type = 'item' },
        -- { name = 'phone_dongle', price = 30,  amount = 999999, info = {}, type = 'item' },
        { name = 'phone',        price = 100, amount = 999999, info = {}, type = 'item' }
    },
    ['brewery'] = {
        { name = 'beer',    price = beer, amount = 50, info = {}, type = 'item' },
        { name = 'whiskey', price = 5,    amount = 50, info = {}, type = 'item' },
        { name = 'vodka',   price = 3,    amount = 50, info = {}, type = 'item' },
    }
}

Config.Locations = {
    -- 24/7 Locations
    ['247supermarket'] = {
        ['label'] = 'Supermercado 24h',
        ['coords'] = vector4(24.47, -1346.62, 29.5, 271.66),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(26.45, -1315.51, 29.62, 0.07)
    },

    ['247supermarket2'] = {
        ['label'] = 'Supermercado 24h',
        ['coords'] = vector4(-3039.54, 584.38, 7.91, 17.27),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-3047.95, 590.71, 7.62, 19.53)
    },

    ['247supermarket3'] = {
        ['label'] = 'Supermercado 24h',
        ['coords'] = vector4(-3242.97, 1000.01, 12.83, 357.57),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-3245.76, 1005.25, 12.83, 269.45)
    },

    ['247supermarket4'] = {
        ['label'] = 'Supermercado 24h',
        ['coords'] = vector4(1728.07, 6415.63, 35.04, 242.95),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(1741.76, 6419.61, 35.04, 6.83)
    },

    ['247supermarket5'] = {
        ['label'] = 'Supermercado 24h',
        ['coords'] = vector4(1959.82, 3740.48, 32.34, 301.57),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(1963.81, 3750.09, 32.26, 302.46)
    },

    ['247supermarket6'] = {
        ['label'] = 'Supermercado 24h',
        ['coords'] = vector4(549.13, 2670.85, 42.16, 99.39),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(541.54, 2663.53, 42.17, 120.51)
    },

    ['247supermarket7'] = {
        ['label'] = 'Supermercado 24h',
        ['coords'] = vector4(2677.47, 3279.76, 55.24, 335.08),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(2662.19, 3264.95, 55.24, 168.55)
    },

    ['247supermarket8'] = {
        ['label'] = 'Supermercado 24h',
        ['coords'] = vector4(2556.66, 380.84, 108.62, 356.67),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(2553.24, 399.73, 108.56, 344.86)
    },

    ['247supermarket9'] = {
        ['label'] = 'Supermercado 24h',
        ['coords'] = vector4(372.66, 326.98, 103.57, 253.73),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(379.97, 357.3, 102.56, 26.42)
    },

    -- Posto LTD Locations
    ['ltdgasoline'] = {
        ['label'] = 'Posto LTD',
        ['coords'] = vector4(-47.02, -1758.23, 29.42, 45.05),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-40.51, -1747.45, 29.29, 326.39)
    },

    ['ltdgasoline2'] = {
        ['label'] = 'Posto LTD',
        ['coords'] = vector4(-706.06, -913.97, 19.22, 88.04),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-702.89, -917.44, 19.21, 181.96)
    },

    ['ltdgasoline3'] = {
        ['label'] = 'Posto LTD',
        ['coords'] = vector4(-1820.02, 794.03, 138.09, 135.45),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1829.29, 801.49, 138.41, 41.39)
    },

    ['ltdgasoline4'] = {
        ['label'] = 'Posto LTD',
        ['coords'] = vector4(1164.71, -322.94, 69.21, 101.72),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Open Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(1160.62, -312.06, 69.28, 3.77)
    },

    ['ltdgasoline5'] = {
        ['label'] = 'Posto LTD',
        ['coords'] = vector4(1697.87, 4922.96, 42.06, 324.71),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(1702.68, 4917.28, 42.22, 139.27)
    },

    -- Rob's Liquor Locations
    ['robsliquor'] = {
        ['label'] = 'Licor do Rob',
        ['coords'] = vector4(-1221.58, -908.15, 12.33, 35.49),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1226.92, -901.82, 12.28, 213.26)
    },

    ['robsliquor2'] = {
        ['label'] = 'Licor do Rob',
        ['coords'] = vector4(-1486.59, -377.68, 40.16, 139.51),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1468.29, -387.61, 38.79, 220.13)
    },

    ['robsliquor3'] = {
        ['label'] = 'Licor do Rob',
        ['coords'] = vector4(-2966.39, 391.42, 15.04, 87.48),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-2961.49, 376.25, 15.02, 111.41)
    },

    ['robsliquor4'] = {
        ['label'] = 'Licor do Rob',
        ['coords'] = vector4(1165.17, 2710.88, 38.16, 179.43),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(1194.52, 2722.21, 38.62, 9.37)
    },

    ['robsliquor5'] = {
        ['label'] = 'Licor do Rob',
        ['coords'] = vector4(1134.2, -982.91, 46.42, 277.24),
        ['ped'] = 'mp_m_shopkeep_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-shopping-basket',
        ['targetLabel'] = 'Loja aberta',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(1129.73, -989.27, 45.97, 280.98)
    },

    -- Hardware Store Locations
    ['hardware'] = {
        ['label'] = 'Loja de eletrônicos',
        ['coords'] = vector4(45.68, -1749.04, 29.61, 53.13),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Loja de ferragens aberta',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(89.15, -1745.29, 30.09, 315.25)
    },

    ['hardware2'] = {
        ['label'] = 'Loja de eletrônicos',
        ['coords'] = vector4(2747.71, 3472.85, 55.67, 255.08),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Loja de ferragens aberta',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(2704.68, 3457.21, 55.54, 176.28)
    },

    ['hardware3'] = {
        ['label'] = 'Loja de eletrônicos',
        ['coords'] = vector4(-421.83, 6136.13, 31.88, 228.2),
        ['ped'] = 'mp_m_waremech_01',
        ['scenario'] = 'WORLD_HUMAN_CLIPBOARD',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-wrench',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['hardware'],
        ['showblip'] = true,
        ['blipsprite'] = 402,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-438.25, 6146.9, 31.48, 136.99)
    },

    -- Ammunation Locations
    ['ammunation'] = {
        ['label'] = 'Loja de armas',
        ['type'] = 'weapon',
        ['coords'] = vector4(-659.1837, -938.9872, 21.8294, 95.0492),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-660.61, -938.14, 21.83, 167.22)
    },
    ['ammunation2'] = {
        ['label'] = 'Loja de armas',
        ['type'] = 'weapon',
        ['coords'] = vector4(812.9083, -2155.1357, 29.6192, 355.6047),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(820.97, -2146.7, 28.71, 359.98)
    },
    ['ammunation3'] = {
        ['label'] = 'Loja de armas',
        ['type'] = 'weapon',
        ['coords'] = vector4(1698.0101, 3757.4001, 34.7054, 129.4300),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(1687.17, 3755.47, 34.34, 163.69)
    },
    ['ammunation4'] = {
        ['label'] = 'Loja de armas',
        ['type'] = 'weapon',
        ['coords'] = vector4(-326.0397, 6081.2344, 31.4548, 150.3703),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-322.6801, 6074.2334, 31.2302, 50.8239)
    },
    ['ammunation5'] = {
        ['label'] = 'Loja de armas',
        ['type'] = 'weapon',
        ['coords'] = vector4(246.7637, -51.3564, 69.9412, 347.6186),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(239.7063, -43.2068, 69.7353, 245.5033)
    },
    ['ammunation6'] = {
        ['label'] = 'Loja de armas',
        ['type'] = 'weapon',
        ['coords'] = vector4(18.8056, -1108.1664, 29.7972, 156.3047),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-5.82, -1107.48, 29.0, 164.32)
    },
    ['ammunation7'] = {
        ['label'] = 'Loja de armas',
        ['type'] = 'weapon',
        ['coords'] = vector4(2564.7202, 298.9973, 108.7350, 261.4292),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(2569.6304, 306.8786, 108.6096, 69.7765)
    },
    ['ammunation8'] = {
        ['label'] = 'Loja de armas',
        ['type'] = 'weapon',
        ['coords'] = vector4(-1112.3445, 2697.1235, 18.5543, 130.7369),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1108.6788, 2687.0010, 18.7507, 49.6268)
    },
    ['ammunation9'] = {
        ['label'] = 'Loja de armas',
        ['type'] = 'weapon',
        ['coords'] = vector4(841.1052, -1028.7247, 28.1949, 266.0162),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(847.83, -1020.36, 27.88, 88.29)
    },
    ['ammunation10'] = {
        ['label'] = 'Loja de armas',
        ['type'] = 'weapon',
        ['coords'] = vector4(-1310.8857, -394.2686, 36.6958, 9.4636),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1318.1255, -390.1190, 36.4173, 86.2828)
    },
    ['ammunation11'] = {
        ['label'] = 'Loja de armas',
        ['type'] = 'weapon',
        ['coords'] = vector4(-3166.9268, 1086.9480, 20.8388, 168.5009),
        ['ped'] = 's_m_y_ammucity_01',
        ['scenario'] = 'WORLD_HUMAN_COP_IDLES',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-gun',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weapons'],
        ['showblip'] = true,
        ['blipsprite'] = 110,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-3159.9111, 1080.4003, 20.6948, 58.3743)
    },

    -- Casino Locations
    ['casino'] = {
        ['label'] = 'Cassino Diamante',
        ['coords'] = vector4(978.46, 39.07, 74.88, 64.0),
        ['ped'] = 'csb_tomcasino',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-coins',
        ['targetLabel'] = 'Comprar fichas',
        ['products'] = Config.Products['casino'],
        ['showblip'] = true,
        ['blipsprite'] = 617,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(972.6, 9.22, 81.04, 233.38)
    },

    ['casinobar'] = {
        ['label'] = 'Casino Bar',
        ['coords'] = vector4(968.13, 29.85, 74.88, 208.86),
        ['ped'] = 'a_m_y_smartcaspat_01',
        ['scenario'] = 'WORLD_HUMAN_VALET',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-wine-bottle',
        ['targetLabel'] = 'Casino Bar aberto',
        ['products'] = Config.Products['liquor'],
        ['showblip'] = false,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(937.16, 1.0, 78.76, 152.4)
    },

    -- Weedshop Locations
    ['weedshop'] = {
        ['label'] = 'Smoke On The Water',
        ['coords'] = vector4(-1168.26, -1573.2, 4.66, 105.24),
        ['ped'] = 'a_m_y_hippy_01',
        ['scenario'] = 'WORLD_HUMAN_AA_SMOKE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-cannabis',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['weedshop'],
        ['showblip'] = true,
        ['blipsprite'] = 140,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1162.13, -1568.57, 4.39, 328.52)
    },

    -- Sea Word Locations
    ['seaword'] = {
        ['label'] = 'Palavra do mar',
        ['coords'] = vector4(-1687.03, -1072.18, 13.15, 52.93),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_IMPATIENT',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-fish',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['gearshop'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1674.18, -1073.7, 13.15, 333.56)
    },

    -- Leisure Shop Locations
    ['leisureshop'] = {
        ['label'] = 'Loja de Lazer',
        ['coords'] = vector4(-1505.91, 1511.95, 115.29, 257.13),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['leisureshop'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1507.64, 1505.52, 115.29, 262.2)
    },
    ---------------------------------------------------------
    -----------------------------GABZ------------------------
    ---------------------------------------------------------
    ['dinershop'] = {
        ['label'] = 'Lanchonete',
        ['coords'] = vector4(1588.8889, 6457.0410, 26.0140, 148.2924),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['normal'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(1587.4924, 6446.6924, 25.1537, 274.3381)
    },

    ['bowling'] = {
        ['label'] = 'Lanchonete do Boliche',
        ['coords'] = vector4(756.3604, -767.5927, 26.3373, 91.5977),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['bowling'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(761.6263, -777.4189, 26.3078, 333.0988)
    },
    ['beanmachine'] = {
        ['label'] = 'Bean Machine',
        ['coords'] = vector4(121.6618, -1040.4008, 29.2779, 72.9523),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['beanmachine'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(110.4448, -1036.0248, 29.3473, 294.0791)
    },
    -- ['bahama'] = {
    --     ['label'] = 'Bahama',
    --     ['coords'] = vector4(-1400.5063, -601.9289, 30.3200, 229.2225),
    --     ['ped'] = 'a_m_y_smartcaspat_01',
    --     ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
    --     ['radius'] = 1.5,
    --     ['targetIcon'] = 'fas fa-leaf',
    --     ['targetLabel'] = 'Produtos Bahama',
    --     ['products'] = Config.Products['bahama'],
    --     ['showblip'] = true,
    --     ['blipsprite'] = 52,
    --     ['blipscale'] = 0.5,
    --     ['blipcolor'] = 0,
    --     ['delivery'] = vector4(-1400.5063, -601.9289, 30.3200, 229.2225)
    -- },
    ['grota'] = {
        ['label'] = 'Grota',
        ['coords'] = vector4(-1.99, -1826.84, 29.15, 88.46),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos Grota',
        ['products'] = Config.Products['grota'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1.99, -1826.84, 29.15, 88.46)
    },
    ['grota2'] = {
        ['label'] = 'Grota',
        ['coords'] = vector4(494.09, -1531.22, 29.28, 222.86),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos Grota',
        ['products'] = Config.Products['grota'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(497.21, -1544.39, 29.23, 254.97)
    },

    ['pillbox'] = {
        ['label'] = 'Farmácia Pillbox',
        ['coords'] = vector4(312.8144, -594.5536, 43.2841, 8.4303),
        ['ped'] = 'a_m_y_smartcaspat_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos',
        ['products'] = Config.Products['pillbox'],
        ['showblip'] = true,
        ['blipsprite'] = 51,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(312.8144, -594.5536, 43.2841, 8.4303)
    },
    ['pharmacy'] = {
        ['label'] = 'Farmácia',
        ['coords'] = vector4(-1198.6682, -1460.2369, 4.3739, 40.6232),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos',
        ['products'] = Config.Products['pharmacy'],
        ['showblip'] = true,
        ['blipsprite'] = 51,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1203.3907, -1449.9313, 4.2309, 30.4102)
    },
    ['market'] = {
        ['label'] = 'Mercadinho',
        ['coords'] = vector4(-1206.5999, -1460.0212, 4.3739, 339.7818),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos do mercadinho',
        ['products'] = Config.Products['market'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1208.8557, -1453.5406, 4.3780, 117.8275)
    },

    -- ERVAS
    ['herbs'] = {
        ['label'] = 'Ervas',
        ['coords'] = vector4(-1211.7295, -1463.9995, 4.3739, 325.8336),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos',
        ['products'] = Config.Products['herbs'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1213.9570, -1456.0320, 4.3611, 245.0305)
    },
    ['coffeshop'] = {
        ['label'] = 'Cafeteria',
        ['coords'] = vector4(-1216.3995, -1467.7593, 4.3739, 332.4940),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos',
        ['products'] = Config.Products['beanmachine'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1219.9354, -1459.5172, 4.3390, 343.1470)
    },
    ['brewery'] = {
        ['label'] = 'Loja de bedida',
        ['coords'] = vector4(-1224.9504, -1439.9308, 4.3739, 139.3698),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos',
        ['products'] = Config.Products['brewery'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1220.3866, -1449.2478, 4.3417, 114.7719)
    },
    ['digitalden'] = {
        ['label'] = 'Loja de bedida',
        ['coords'] = vector4(-1232.1082, -1439.7189, 4.3739, 225.1024),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos',
        ['products'] = Config.Products['phones'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1225.9545, -1453.0018, 4.3182, 349.7784)
    },
    ['donuts'] = {
        ['label'] = 'Loja de doces',
        ['coords'] = vector4(-1245.6998, -1454.4163, 4.3739, 54.4068),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos',
        ['products'] = Config.Products['beanmachine'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.5,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-1257.7272, -1461.9727, 4.2723, 111.6201)
    },
    -- ['pizzeria'] = {
    --     ['label'] = 'Loja de doces',
    --     ['coords'] = vector4(812.1154, -751.6722, 26.7808, 78.0544),
    --     ['ped'] = 'a_m_y_beach_01',
    --     ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
    --     ['radius'] = 1.5,
    --     ['targetIcon'] = 'fas fa-leaf',
    --     ['targetLabel'] = 'Produtos',
    --     ['products'] = Config.Products['pizzeria'],
    --     ['showblip'] = true,
    --     ['blipsprite'] = 52,
    --     ['blipscale'] = 0.5,
    --     ['blipcolor'] = 0,
    --     ['delivery'] = vector4(812.1154, -751.6722, 26.7808, 78.0544)
    -- },

    -- ['burgershop1'] = {
    --     ['label'] = 'Lanchonete',
    --     ['coords'] = vector4(-1190.0497, -896.3528, 13.7984, 28.0998),
    --     ['ped'] = 'a_m_y_beach_01',
    --     ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
    --     ['radius'] = 1.5,
    --     ['targetIcon'] = 'fas fa-leaf',
    --     ['targetLabel'] = 'Produtos da loja',
    --     ['products'] = Config.Products['burgershop'],
    --     ['showblip'] = true,
    --     ['blipsprite'] = 536,
    --     ['blipscale'] = 0.8,
    --     ['blipcolor'] = 1,
    --     ['delivery'] = vector4(-1201.0186, -880.2032, 13.3339, 284.9164)
    -- }

    ['stadiumShop1'] = {
        ['label'] = 'Estádio',
        ['coords'] = vector4(-291.10, -1934.27, 30.14, 320.25),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Produtos da loja',
        ['products'] = Config.Products['stadium'],
        ['showblip'] = true,
        ['blipsprite'] = 52,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 0,
        ['delivery'] = vector4(-288.73, -1927.57, 30.14, 356.54)
    }

    

}
