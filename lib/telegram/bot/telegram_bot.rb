# telegram_bot.rb

require 'telegram/bot'

class TelegramBot

  def initialize(token)

    @token = token

  end

  def run

    Telegram::Bot::Client.run(@token) do |bot|

      bot.listen do |message|

        case message.text

        when '/start'

          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}! Welcome to my bot.")

        when '/help'

          bot.api.send_message(chat_id: message.chat.id, text: "Here are the available commands:\n/start - start the bot\n/help - view this help message\n/echo <message> - echo the provided message")

        when /^\/echo (.+)/

          bot.api.send_message(chat_id: message.chat.id, text: "You said: #{$1}")

        else

          bot.api.send_message(chat_id: message.chat.id, text: "Sorry, I don't understand that command.")

        end

      end

    end

  end

end
