class HunspellController < ApplicationController
  def test

    spellcheck"hola bola crayola"
    spellcheck"hola como estas"

  end

  private

  def spellcheck(text)

    # TODO: add dinamic dictionaries
    aff_path = Rails.root + 'lib/dictionaries/index.aff'
    dic_path = Rails.root + 'lib/dictionaries/index.dic'

    sp = Hunspell.new(aff_path.to_s, dic_path.to_s)

    text.split.map do |word|
      puts "es #{word} valido? #{sp.spellcheck(word)}"
    end
  end
end
