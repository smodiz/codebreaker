module Codebreaker
  class Marker
    def initialize(secret)
      @secret = secret
    end

    def mark(guess)
      '+'*exact_match_count(guess) + '-'*number_match_count(guess)
    end

    protected
    def exact_match_count(guess)
      (0..3).inject(0) do |count, index|
        count + (exact_match?(guess,index)? 1 : 0)
      end 
    end

    def number_match_count(guess)
      (0..3).inject(0) do |count, index|
        count + (number_match?(guess,index)? 1 : 0)
      end 
    end

    def exact_match?(guess,index)
      @secret[index] == guess[index]
    end

    def number_match?(guess,index)
       @secret.include?(guess[index]) && !exact_match?(guess,index)
    end
  end
end
