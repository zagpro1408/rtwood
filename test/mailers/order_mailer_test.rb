require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "for_employee" do
    mail = OrderMailer.for_employee
    assert_equal "For employee", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
