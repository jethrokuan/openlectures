require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  def setup
    @t = build(:topic)
  end
  test "Topic title exists" do
    @t.title=""
    assert !@t.save, "Saved topic with invalid title"
  end
  test "Topic subject_id exists" do
    @t.subject_id=""
    assert !@t.save, "Saved topic with invalid subject_id"
  end
  test "Topic position exists" do
    @t.position=""
    assert !@t.save, "Saved topic with invalid position"
  end
end
