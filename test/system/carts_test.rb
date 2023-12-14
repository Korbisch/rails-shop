require "application_system_test_case"

class CartsTest < ApplicationSystemTestCase
  include ActiveJob::TestHelper

  test 'invalid cart' do
    visit carts_url + '/999999999'

    perform_enqueued_jobs
    assert_performed_jobs 1

    mail = ActionMailer::Base.deliveries.last
    assert_equal ["admin@rails-shop.com"], mail.to
    assert_equal "Failure", mail.subject

    assert_text 'Invalid cart'
    assert_current_path catalog_index_url
  end
end