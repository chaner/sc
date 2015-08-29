require "./lib/caps.rb"
require "test/unit"

class TestCaps < Test::Unit::TestCase

  def test_caps
    assert_equal('soCiaLchOruS.coM', caps('SocialChorus.com') )
    assert_equal('shOulDweIgnOreSpaCes?', caps('shouldWeIgnoreSpaces?') )
  end

end
