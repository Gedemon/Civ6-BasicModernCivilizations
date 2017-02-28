-----------------------------------------------------------------------------------------
--	FILE:	 ModInGame.lua
--  Gedemon (2017)
-----------------------------------------------------------------------------------------


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
end
Events.LoadScreenClose.Add(OnEnterGame)