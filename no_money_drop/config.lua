Config = Config or {}

Config.BlockedItems = {
    money = true,
    black_money = true
}

Config.Notify = true
Config.NotifyId = 'money_drop_blocked'
Config.NotifyTitle = 'Inventory'
Config.NotifyDescription = 'You cannot drop money. Use the give option instead.'
Config.NotifyType = 'error'
Config.NotifyDuration = 3500
Config.NotifyPosition = 'top-right'
Config.NotifyIcon = 'ban'
