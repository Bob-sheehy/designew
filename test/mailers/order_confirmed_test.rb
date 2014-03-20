require 'test_helper'

class OrderConfirmedTest < ActionMailer::TestCase
  test "recieved" do
    mail = OrderConfirmed.recieved
    assert_equal "Recieved", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "emailed" do
    mail = OrderConfirmed.emailed
    assert_equal "Emailed", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
