# frozen_string_literal: true

require './lib/caesar.rb'

describe '#caesar_cipher' do
  it 'moves every character a set number of steps down' do
    expect(caesar_cipher('hat in a string', 5)).to eql('mfy ns f xywnsl')
  end

  it 'keeps all special symbols' do
    expect(caesar_cipher('get.some!', 2)).to eql('igv.uqog!')
  end

  it 'keeps case' do
    expect(caesar_cipher('small BOOBS', 3)).to eql('vpdoo ERREV')
  end

  it 'shifts numbers' do
    expect(caesar_cipher('testing123', 4)).to eql('xiwxmrk567')
  end

  it 'wraps from z to a' do
    expect(caesar_cipher('what a string xy', 5)).to eql('bmfy f xywnsl cd')
  end
end
