require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  include ActiveJob::TestHelper

  test "check dynamic payment checkout fields" do
    visit catalog_index_url

    click_on 'Add to Cart', match: :first

    click_on 'Checkout'

    assert has_no_field? 'Routing number'
    assert has_no_field? 'Account number'
    assert has_no_field? 'Credit card number'
    assert has_no_field? 'Expiration date'
    assert has_no_field? 'Po number'

    page.select 'Check', from: 'Pay type'

    assert has_field? 'Routing number'
    assert has_field? 'Account number'
    assert has_no_field? 'Credit card number'
    assert has_no_field? 'Expiration date'
    assert has_no_field? 'Po number'

    page.select 'Credit card', from: 'Pay type'

    assert has_no_field? 'Routing number'
    assert has_no_field? 'Account number'
    assert has_field? 'Credit card number'
    assert has_field? 'Expiration date'
    assert has_no_field? 'Po number'

    page.select 'Purchase order', from: 'Pay type'

    assert has_no_field? 'Routing number'
    assert has_no_field? 'Account number'
    assert has_no_field? 'Credit card number'
    assert has_no_field? 'Expiration date'
    assert has_field? 'Po number'

  end

  test "check order and email delivery" do
    LineItem.delete_all
    Order.delete_all

    visit catalog_index_url

    click_on 'Add to Cart', match: :first

    click_on 'Checkout'

    fill_in 'Name', with: 'John Doe'
    fill_in 'Address', with: '123 Main Street'
    fill_in 'Email', with: 'john@example.com'

    select 'Check', from: 'Pay type'
    fill_in "Routing number", with: "123456"
    fill_in "Account number", with: "789123"

    click_button "Create Order"
    assert_text 'Your order was successfully created.'

    perform_enqueued_jobs
    perform_enqueued_jobs
    assert_performed_jobs 2

    orders = Order.all
    assert_equal 1, orders.size

    order = orders.first
    assert_equal "John Doe", order.name
    assert_equal "123 Main Street", order.address
    assert_equal "john@example.com", order.email
    assert_equal "Check", order.pay_type
    assert_equal 1, order.line_items.size

    mail = ActionMailer::Base.deliveries.last
    assert_equal ["john@example.com"], mail.to
    assert_equal 'John Doe <rails-shop@example.com>', mail[:from].value
    assert_equal "Rails Shop Order Confirmation", mail.subject

  end

end
