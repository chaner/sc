require 'spec_helper'
require 'caps'

describe 'caps' do
  it 'capitalizes every third character, excluding periods' do
    expect(caps('SocialChorus.com')).to eq('soCiaLchOruS.coM')
    expect(caps('shouldWeIgnoreSpaces?')).to eq('shOulDweIgnOreSpaCes?')
  end

  it 'does not change the original string' do
    original = 'SocialChorus.com'
    expect(caps(original)).to eq('soCiaLchOruS.coM')
    expect(original).to eq('SocialChorus.com')
  end
end
