-----------------------------------------------------------------------------------------
--	FILE:	 ModInGame.lua
--  Gedemon (2017)
-----------------------------------------------------------------------------------------


local initialLeaderHeadSetting = Options.GetGraphicsOption("Leaders", "Quality")

-----------------------------------------------------------------------------------------
-- Hide LeaderHead
-----------------------------------------------------------------------------------------

function HideLeaderHead()
	ContextPtr:LookUpControl("/InGame/DiplomacyActionView/LeaderAnchor"):SetHide(true)
	ContextPtr:LookUpControl("/InGame/LeaderScene/TopLetterbox"):SetHide(true)
	ContextPtr:LookUpControl("/InGame/LeaderScene/BottomLetterbox"):SetHide(true)
end

function OnEnterGame()
	ContextPtr:LookUpControl("/InGame/DiplomacyActionView/LeaderAnchor"):RegisterWhenShown(HideLeaderHead)
	Options.SetGraphicsOption("Leaders", "Quality", 0)
	Options.ApplyGraphicsOptions()
end
Events.LoadScreenClose.Add(OnEnterGame)


function OnExitGame()
	Options.SetGraphicsOption("Leaders", "Quality", initialLeaderHeadSetting)
	Options.ApplyGraphicsOptions()
end
Events.LeaveGameComplete.Add(OnExitGame)