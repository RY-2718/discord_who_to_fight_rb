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
    event.send_message('usage: /who_to_fight 人数 userA userB userC ...')
    return
  end
  users = args.slice(1, args.size - 1).shuffle.slice(0, args[0].to_i())
  event.send_message("Next squids and octarians are: #{users.join(', ')}")
end

bot.run
