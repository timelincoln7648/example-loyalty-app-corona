--local library = require "plugin.library"
local perk = require "plugin.perk"
local widget = require "widget"

local PERK_APP_KEY = "1c0c9ce06a92572ad1a0f185f45aa027b1d610d8"
local PERK_EVENT_ID = "4269e64138f77445c329c4b7448ad4c3fe643562"
local PERK_AD_EVENT_ID = "7a0fa06977e9c4e49cccb0a97fde7d905d394d1e"

local displayText
local hideNotifications = true
local toggleNotificationsButton

display.setStatusBar(display.HiddenStatusBar)
display.setDefault("background", 1, 1, 1)

perk.init(PERK_APP_KEY)

local function perkListener( event )
    native.showAlert( event.name, event.message, { "OK" } )
end
perk.setListener(perkListener)

-- callbacks for Adserver advance call backs. IF required please uncomment.
--perk.setAdServerCallbackForListeners( )
--

local defaultFontSize = 11
local defaultFill = {default = {0.5, 0.5, 0.5, 0.8}, over = {0.5, 0.5, 0.5, 1}}
local defaultLabelColor = {default = {0, 0, 0, 1}, over = {0, 0, 0, 1}}

local headerText = display.newText({
    text = "Appsaholic Integration Example",
    x = display.contentWidth / 2,
    y = 20,
    fontSize = 18 
})
headerText:setFillColor(0, 0, 0)

local basicStepsText = display.newText({
    text = "Basic Integration Steps",
    x = display.contentWidth / 2,
    y = 60,
    fontSize = 15
})
basicStepsText:setFillColor(0.5, 0.5, 0.5)

local launchPortalText = display.newText({
    text = "Launching the Appsaholic Portal",
    x = display.contentWidth / 2,
    y = 100,
})
launchPortalText:setFillColor(0.5, 0.5, 0.5)

local function onLaunchPortalButton()
    perk.showPortal()
end
local launchPortalButton = widget.newButton({
    shape = "roundedRect",
    x = display.contentWidth / 2,
    y = 130,
    label = "OPEN APPSAHOLIC PORTAL",
    cornerRadius = 2,
    fillColor = defaultFill,
    labelColor = defaultLabelColor,
    onRelease = onLaunchPortalButton,
    fontSize = defaultFontSize,
    height = 30
})

local triggerEventText = display.newText({
    text = "Trigger an Achievement",
    x = display.contentWidth / 2,
    y = 170,
})
triggerEventText:setFillColor(0.5, 0.5, 0.5)

local function onTriggerEventButton()
    perk.trackEvent(PERK_EVENT_ID, PERK_EVENT_ID, "false")
end
local triggerEventButton = widget.newButton({
    shape = "roundedRect",
    x = display.contentWidth / 2,
    y = 200,
    label = "SAMPLE ACHIEVEMENT",
    cornerRadius = 2,
    fillColor = defaultFill,
    labelColor = defaultLabelColor,
    onRelease = onTriggerEventButton,
    fontSize = defaultFontSize,
    height = 30
})

local advancedStepsText = display.newText({
    text = "Advanced Integration Options",
    x = display.contentWidth / 2,
    y = 250,
    fontSize = 15
})
advancedStepsText:setFillColor(0.5, 0.5, 0.5)

local advancedInstructionsText = display.newText({
    text = "Add the ability to show pending notifications and a way for users to claim them.",
    x = display.contentWidth / 2,
    y = 320,
    width = display.contentWidth - 75,
    height = 100,
    fontSize = defaultFontSize,
    align = "center"
})
advancedInstructionsText:setFillColor(0.5, 0.5, 0.5)

local function onUnclaimedPageButton()
    perk.launchUnclaimedPage()
end
local unclaimedPageButton = widget.newButton({
    shape = "roundedRect",
    x = display.contentWidth / 2 - 60,
    y = 320,
    width = 120,
    label = "UNCLAIMED PAGE",
    cornerRadius = 2,
    fillColor = defaultFill,
    labelColor = defaultLabelColor,
    onRelease = onUnclaimedPageButton,
    fontSize = defaultFontSize - 2,
    height = 25
})

local function onUnreadCountButton()
    perk.fetchNotifications()
end
local unclaimedPageButton = widget.newButton({
    shape = "roundedRect",
    x = display.contentWidth / 2 + 60,
    y = 320,
    width = 110,
    label = "GET UNREAD COUNT",
    cornerRadius = 2,
    fillColor = defaultFill,
    labelColor = defaultLabelColor,
    onRelease = onUnreadCountButton,
    fontSize = defaultFontSize - 2,
    height = 25
})

local docsText = display.newText({
    text = "For more information, check out the full documentation here.",
    x = display.contentWidth / 2 - 60,
    y = display.contentHeight,
    width = display.contentWidth / 2 - 40,
    height = 120,
    fontSize = defaultFontSize,
    align = "center"
})
docsText:setFillColor(0.5, 0.5, 0.5)

local function onDocsButton()
    system.openURL("http://docs.appsaholic.com/docs/configuring-the-appsaholic-plugin-for-corona-sdk")
end
local docsButton = widget.newButton({
    shape = "roundedRect",
    x = display.contentWidth / 2 + 60,
    y = display.contentHeight - 40,
    width = display.contentWidth / 2 - 60,
    label = "APPSAHOLIC DOCS",
    cornerRadius = 2,
    fillColor = defaultFill,
    labelColor = defaultLabelColor,
    onRelease = onDocsButton,
    fontSize = defaultFontSize - 2,
    height = 25
})
