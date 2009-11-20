require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "confirmation" do
    @expected.subject = 'OrderMailer#confirmation'
    @expected.body    = read_fixture('confirmation')
    @expected.date    = Time.now

    assert_equal @expected.encoded, OrderMailer.create_confirmation(@expected.date).encoded
  end

end
