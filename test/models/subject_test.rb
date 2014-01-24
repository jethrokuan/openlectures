require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  def setup
    @s = build(:subject)
  end

  test "Subject title exists" do
    @s.title=""
    assert !@s.save, "Saved subject with no title"
  end

  test "Subject description exists" do
    @s.description = ""
    assert !@s.save, 'Saved subject without description'
  end

  test "Subject image_url exists" do
    @s.image_url = ""
    assert !@s.save, "Saved subject without image_url"
  end
end
