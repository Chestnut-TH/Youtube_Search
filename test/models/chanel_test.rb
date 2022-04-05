require "test_helper"

class ChanelTest < ActiveSupport::TestCase
  def setup
    @chanel = chanels(:one)
  end
  
  test "Access Chenel Table " do
    assert_equal("test_name", @chanel.name, "test_name = " + @chanel.name + " ?")
    assert true
  end
end
