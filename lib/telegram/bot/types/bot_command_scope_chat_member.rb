# frozen_string_literal: true

module Telegram

  module Bot

    module Types

      class BotCommandScopeChatMember < Base

        attribute :type, Types::String.default('chat_member')

        attribute :chat_id, Types::String

        attribute :user_id, Types::Integer

      end

    end

  end

end
