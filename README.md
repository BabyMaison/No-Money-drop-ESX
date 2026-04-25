# esx_no_money_drop

Stops players from dropping `money` and `black_money` on the floor when using ox_inventory.
Blocked drops use ox_lib notifications.

Giving money through ox_inventory's Give button is still allowed because the script only blocks swaps where `toType` is `drop`.

## Install

1. Put `esx_no_money_drop` in your server resources folder.
2. Make sure `ox_lib` and `ox_inventory` start before this resource:

```cfg
ensure ox_lib
ensure ox_inventory
ensure esx_no_money_drop
```

## Configure

Edit `config.lua` if you want to change the blocked item names or notification text.


## Dependencies

ox_lib
ox_inventory


-- BabyMaison | OCCULT 
