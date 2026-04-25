local blockedItems = Config.BlockedItems or {
    money = true,
    black_money = true
}

local function notify(source)
    if not Config.Notify or not source then return end

    TriggerClientEvent('ox_lib:notify', source, {
        id = Config.NotifyId or 'money_drop_blocked',
        title = Config.NotifyTitle or 'Inventory',
        description = Config.NotifyDescription or 'You cannot drop money. Use the give option instead.',
        type = Config.NotifyType or 'error',
        duration = Config.NotifyDuration or 3500,
        position = Config.NotifyPosition or 'top-right',
        icon = Config.NotifyIcon or 'ban'
    })
end

exports.ox_inventory:registerHook('swapItems', function(payload)
    if payload.toType ~= 'drop' then return end

    local itemName = payload.fromSlot and payload.fromSlot.name
    if not itemName or not blockedItems[itemName] then return end

    notify(payload.source)
    return false
end, {
    itemFilter = blockedItems
})
