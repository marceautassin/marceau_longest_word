class PartiesController < ApplicationController
  def new
    vowells = ['a', 'e', 'i','o','u']
    letters = ('a'..'z').to_a
    consonants = letters - vowells
    # @letters = vowells.sample(5) + consonants.to_a.sample(5)
    @letters = ['a', 'b', 'a', 'n', 'd', 'o', 'n']
    @party = Party.new
  end

  def create
    @party = Party.new(params_party)
    grid = params[:grid].split('')
    # console
    @party.word.split('').each do |letter|
      if grid.include?(letter)
        valid_word
        if @result

        end
      else
        false
      end
    end

  end

  private
  def params_party
    params.require(:party).permit(:word)
  end

  def valid_word
    @result = Word.exists?(word: @party.word)
  end

end
