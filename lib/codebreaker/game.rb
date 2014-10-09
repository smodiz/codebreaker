module Codebreaker
  
  class Game

    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret
      @marker = Marker.new(secret)
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess:'
    end

    def guess(guess)
      @output.puts @marker.mark(guess)
    end

  end

end