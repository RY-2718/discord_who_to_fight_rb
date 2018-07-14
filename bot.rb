require 'bundler/setup'
require 'discordrb'
require 'dotenv'

Dotenv.load

bot = Discordrb::Commands::CommandBot.new(
	token: ENV['TOKEN'],
  client_id: ENV['CLIENT_ID'].to_i(),
	prefix:'/',
)

bot.command :who_to_fight do |event, *args|
  if args.size == 0
    event.send_message('usage: /who_to_fight userA userB userC ...')
    return
  end
	users = args.shuffle.slice(0, 2)
	event.send_message("Next squids and octarians are: #{users[0]}, #{users[1]}")
end

bot.run
