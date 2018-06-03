
require 'slack-ruby-bot'

class Bot < SlackRubyBot::Bot
    scan(/.*/) do |client, data, match|
      not_in_dic_words = HunspellController.spellcheck(match[0])
      not_in_dic_words_as_text = ''

      words_added = 0
      not_in_dic_words.each do |word|
        not_in_dic_words_as_text = not_in_dic_words_as_text + ', ' if words_added > 0
        not_in_dic_words_as_text = not_in_dic_words_as_text + word
        words_added = words_added + 1
      end

      unless words_added < 1
        client.web_client.chat_postEphemeral({
          text: 'Your message might not be pretty and clear for all members of this channel. These are the terms I think they might have hard time understanding:',
          attachments: [
            {
              text: not_in_dic_words_as_text,
              color: '#F35A00'
            }
          ],
          channel: data.channel,
          user: data.user
        })
      end
    end
end
