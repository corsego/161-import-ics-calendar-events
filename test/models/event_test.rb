require "test_helper"

class EventTest < ActiveSupport::TestCase
  test "create_from_ics" do
    file_path = "test/fixtures/files/Sunday+morning+yoga+in+Antibes+.ics"
    event = Event.create_from_ics(file_path)
    assert_equal "Sunday morning yoga in Antibes", event.summary
  end
end
