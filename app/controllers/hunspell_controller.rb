class HunspellController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def verify_text
    render json: {
      invalid_words: spellcheck(params[:text])
    }
  end

  private

  def spellcheck(text)
    invalid_words = []

    text.gsub(/[^[:word:]\s]/, '').split.map do |word|
      if $sp1.spellcheck word
        puts "#{word} valido en base"
      else
        if $sp2.spellcheck(word) && $sp3.spellcheck(word)
          puts "#{word} valido"
        else
          invalid_words.push word
        end

      end
    end

    invalid_words
  end
end
