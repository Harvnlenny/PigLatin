require 'minitest/autorun'
require 'pig_latin'

class Test_Pig_Latin < MiniTest::Test
  def test_01_human
    expected = "umanhay"
    assert_equal expected, PigLatin.translate("human")
  end

end  