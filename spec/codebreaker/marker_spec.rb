require 'spec_helper'

module Codebreaker
  describe Marker do
    let(:marker) { Marker.new('1234') }

    describe "#mark" do
      context 'with no matches' do
        it "sends a mark with ''" do
          expect(marker.mark('5678')).to eq ''
        end
      end 
      context 'with one number match' do
        it "sends a mark with '-'" do
          expect(marker.mark('2555')).to eq '-'
        end
      end
      context 'with 1 exact match' do   
        it "sends a mark with '+'" do
          expect(marker.mark('1555')).to eq '+'
        end
      end
      context 'with 2 number matches' do
        it "sends a mark with '--'" do
          expect(marker.mark('2355')).to eq '--'
        end
      end
      context 'with one number match and one exact match (in that order)' do
        it "sends a mark with '+-'" do
          expect(marker.mark('2535')).to eq '+-'
        end
      end
    end
  end
end
