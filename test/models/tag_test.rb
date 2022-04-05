require "test_helper"

class TagTest < ActiveSupport::TestCase
  def setup
    @tag = tags(:one)
  end
  
  test "Access Tags Table " do
    assert_equal("ゆっくり", @tag.name, "ゆっくり = " + @tag.name + " ?")
    assert true
  end
end
