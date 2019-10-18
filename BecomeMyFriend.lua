local function BecomeFriend(friendName)
	for i = 1, BNGetNumFriends() do
		local info = C_BattleNet.GetFriendAccountInfo(i)
		if info.battleTag == friendName then
			return
		end
	end
	BNSendFriendInvite(friendName)
end

BecomeFriend("Ketho#2355")
