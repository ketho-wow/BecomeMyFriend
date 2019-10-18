local isClassic = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

local function GetBattleTag(i)
	if isClassic then
		return select(3, BNGetFriendInfo(i))
	else
		return C_BattleNet.GetFriendAccountInfo(i).battleTag
	end
end

local function BecomeFriend(region, friendName)
	if GetCurrentRegion() == region then
		for i = 1, BNGetNumFriends() do
			if GetBattleTag(i) == friendName then
				return
			end
		end
		BNSendFriendInvite(friendName)
	end
end

BecomeFriend(3, "Ketho#2355") -- EU
