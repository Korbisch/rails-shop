require "test_helper"

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Rails Shop Order Confirmation", mail.subject
    assert_equal ["john@doe.com"], mail.to
    assert_equal ["rails-shop@example.com"], mail.from
    assert_match "Thank you for your recent order from The Pragmatic Store.", mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "Rails Shop Order Shipped", mail.subject
    assert_equal ["john@doe.com"], mail.to
    assert_equal ["rails-shop@example.com"], mail.from
    assert_match "<h3>Rails Shop Order Shipped</h3>", mail.body.encoded
  end

end
