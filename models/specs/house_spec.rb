require("minitest/autorun")
require_relative("../house")

class TestHouse < MiniTest::Test

  def setup
    options = {"id" => 1, "name" => "Gryffindor", "logo" => "images/shield_gry.jpg"
    }

      @house = House.new(options)
  end


  def test_name()

    assert_equal("Gryffindor", @house.name())
  end

  def test_last_name()

    assert_equal("images/shield_gry.jpg", @house.logo())
  end

end
