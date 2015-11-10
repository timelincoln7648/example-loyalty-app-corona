local Library = require "CoronaLibrary"

-- Create library
local lib = Library:new{ name='Appsaholic', publisherId='com.perk.appsaholic' }

-------------------------------------------------------------------------------
-- BEGIN (Insert your implementation starting here)
-------------------------------------------------------------------------------

-- This sample implements the following Lua:
-- 
--    local PLUGIN_NAME = require "plugin_PLUGIN_NAME"
--    PLUGIN_NAME.test()
--    
lib.showMessage = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.showMessage() not supported in the simulator', { 'OK' } )
end

lib.init = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.init() not supported in the simulator', { 'OK' } )
end

lib.setListener = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.setListener() not supported in the simulator', { 'OK' } )
end

lib.showPortal = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.showPortal() not supported in the simulator', { 'OK' } )
end

lib.launchUnclaimedPage = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.launchUnclaimedPage() not supported in the simulator', { 'OK' } )
end

lib.trackEvent = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.trackEvent() not supported in the simulator', { 'OK' } )
end

lib.launchDatapoints = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.launchDatapoints() not supported in the simulator', { 'OK' } )
end

lib.launchLoginPage = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.launchLoginPage() not supported in the simulator', { 'OK' } )
end

lib.logoutUser = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.logoutUser() not supported in the simulator', { 'OK' } )
end

lib.suppressNotifications = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.suppressNotifications() not supported in the simulator', { 'OK' } )
end

lib.fetchNotifications = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.fetchNotifications() not supported in the simulator', { 'OK' } )
end

lib.getPerkAvailable = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.getPerkAvailable() not supported in the simulator', { 'OK' } )
end

lib.getUserSDKStatus = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.getUserSDKStatus() not supported in the simulator', { 'OK' } )
end

lib.toggleStatus = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.toggleStatus() not supported in the simulator', { 'OK' } )
end

lib.claimPoints = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.claimPoints() not supported in the simulator', { 'OK' } )
end

lib.getUserInfo = function()
	native.showAlert( 'Appsaholic Notice', 'Appsaholic.getUserInfo() not supported in the simulator', { 'OK' } )
end
-------------------------------------------------------------------------------
-- END
-------------------------------------------------------------------------------

-- Return an instance
return lib