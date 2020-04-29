class PartiesController < ApplicationController
  def new
    vowells = ['a', 'e', 'i','o','u']
    letters = ('a'..'z').to_a
    consonants = letters - vowells
    @letters = vowells.sample(5) + consonants.to_a.sample(5)
    @party = Party.new
  end

  def create
    @party = Party.new(params_party)
    if from_the_array

    end

  end

  private
  def params_party
    params.require(:party).permit(:word)
  end

  def from_the_array
    params[:party][:word].split('').each do |letter|
      if @letters.include?(letter)
        @letters.delete_at(@letters.index(letter))
      else
        false
      end
      return true
    end
  end

  def valid_word

  end

end
