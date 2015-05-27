require 'minitest/autorun'
require 'pig_latin'

class Test_Pig_Latin < MiniTest::Test
  def test_01_human
    expected = "umanhay"
    assert_equal expected, PigLatin.translate("human")
  end

  def test_02_transformation
    expected = "ansformationtray"
    assert_equal expected, PigLatin.translate("transformation")
  end
  
  def test_03_occupying
    expected = "occupyingyay"
    assert_equal expected, PigLatin.translate("occupying")
  end    

end  