local triggers = {
	'^/a[@'..bot.username..']*',
	'^/u[@'..bot.username..']*',
}

local action = function(msg)
    if msg.chat.type ~= 'private' then
        return nil
    end
    if string.match(msg.text, '^/a') then
        local receiver = config.admin
        local input = msg.text:input()
        if not input then
            sendMessage(msg.from.id, 'Nil Value')
            return nil
        end
        local last_name = ''
        --if msg.from.last_name then
            --last_name = '\n*Last*: '..msg.from.last_name
        --end
        --local text = '*First*: '..msg.from.first_name..last_name..'\n*Username*: @'..msg.from.username..' ('..msg.from.id..')\n\n'..input
	    --sendMessage(receiver, text, true, false, true)
	    local target = msg.message_id
				local feed = msg.text:sub(4, 14)
		local text = ''..feed..''
	    sendMessage (receiver, text, target)
			    forwardMessage (receiver, msg.from.id, target)

	    sendMessage(msg.from.id, '*pm sent*\n*Arman Bot Service Msg\n*Your Pm⬇️\n\n'..input, true, false, true) -- You Can ReplaceArman Bot Service Msg
	end
	if string.match(msg.text, '^/u') then
	    if msg.from.id ~= config.admin then
	        return nil
	    end
	    if not msg.reply_to_message then
            sendReply(msg, 'Reply to  Feedback :|', false)
			return nil
		end
		local input = msg.text:input()
		if not input then
            sendMessage(msg.from.id, 'Type /u <Pm>"')
            return nil
        end
		msg = msg.reply_to_message
		local name = msg.forward_from.first_name
		local receiver = msg.forward_from.id
		local feed = msg.text:sub(4, 14)
		local text = ''..input
		sendMessage(receiver, text, true, false, true)
		sendMessage(config.admin, '_Sent To User!_:\n\n'..input, true, false, true)
	end
end

return {
	action = action,
	triggers = triggers
}
