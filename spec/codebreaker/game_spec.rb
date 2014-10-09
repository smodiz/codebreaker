require 'spec_helper'

module Codebreaker
  describe Game do
    let(:output) { double('output').as_null_object }
    let(:game) { Game.new(output) }
    
    describe "#start" do
      it 'sends a welcome message' do
        game.start('1234')

        expect(output).to have_received(:puts).with('Welcome to Codebreaker!')
      end
      it 'prompts for the first guess' do
        game.start('1234')

        expect(output).to have_received(:puts).with('Enter guess:')
      end
    end
    describe "#guess" do
      context 'sends the mark to output' do
        it "sends a mark with '+-'" do
          game.start('1234')

          game.guess('2535')

          expect(output).to have_received(:puts).with('+-')
        end
      end
    end
  end
end
