local function BecomeFriend(friendName)
	for i = 1, BNGetNumFriends() do
		local battleTag = select(3, BNGetFriendInfo(i))
		if battleTag == friendName then
			return
		end
	end
	BNSendFriendInvite(friendName)
end

BecomeFriend("Ketho#2355")
