require 'spec_helper'
require 'caps'

describe 'caps' do
  it 'handles nil' do
    expect(caps(nil)).to eq(nil)
  end

  it 'capitalizes every third character by default, excluding periods' do
    expect(caps('SocialChorus.com')).to eq('soCiaLchOruS.coM')
    expect(caps('shouldWeIgnoreSpaces?')).to eq('shOulDweIgnOreSpaCes?')
  end

  it 'capitalizes every x character, excluding periods' do
    expect(caps('SocialChorus.com', 0, 4)).to eq('socIalcHoruS.com')
  end

  it 'does not change the original string' do
    original = 'SocialChorus.com'
    expect(caps(original)).to eq('soCiaLchOruS.coM')
    expect(original).to eq('SocialChorus.com')
  end
end
