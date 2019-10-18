local function BecomeFriend(region, friendName)
	if GetCurrentRegion() == region then
		for i = 1, BNGetNumFriends() do
			local info = C_BattleNet.GetFriendAccountInfo(i)
			if info.battleTag == friendName then
				return
			end
		end
		BNSendFriendInvite(friendName)
	end
end

BecomeFriend(3, "Ketho#2355") -- EU
