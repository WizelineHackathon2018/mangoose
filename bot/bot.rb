
require 'slack-ruby-bot'

class Bot < SlackRubyBot::Bot
    scan(/.*/) do |client, data, match|
      client.web_client.chat_postEphemeral({
        text: 'Your message might not be pretty and clear for all members of this channel. These are the terms I think they might have hard time understanding:',
        attachments: [
          {
            text: 'wey, scaffold',
            color: '#F35A00'
          }
        ],
        channel: data.channel,
        user: data.user
      })
    end
end
