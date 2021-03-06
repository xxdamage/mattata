local istuesday = {}
local HTTP = require('socket.http')
local mattata = require('mattata')

function istuesday:init(configuration)
	istuesday.arguments = 'istuesday'
	istuesday.commands = mattata.commands(self.info.username, configuration.commandPrefix):c('istuesday'):c('iit').table
	istuesday.help = configuration.commandPrefix .. 'istuesday - Tells you if it\'s Tuesday or not. Alias: ' .. configuration.commandPrefix .. 'iit.'
end

function istuesday:onMessageReceive(message, language)
	local str, res = HTTP.request('http://www.studentology.net/tuesday')
	if res ~= 200 then
		mattata.sendMessage(message.chat.id, language.errors.connection, nil, true, false, message.message_id)
		return
	end
	local output
	if str:match('YES') then
		output = 'Yes!'
	else
		output = 'No.'
	end
	mattata.sendMessage(message.chat.id, output, nil, true, false, message.message_id)
end

return istuesday