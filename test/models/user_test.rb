require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user with a valid email should be valid" do
    user = User.new(email: 'email@email.com', password_digest: 'password')
    assert user.valid?
  end

  test "user with a invalid email should be invalid" do
    user = User.new(email: 'emailemail.com', password_digest: 'password')
    assert_not user.valid?
  end

  test "user with a blank email should be invalid" do
    user = User.new(email: '', password_digest: 'password')
    assert_not user.valid?
  end

  test 'user with taken email should be invalid' do 
    other_user = users(:one) 
    user = User.new(email: other_user.email, password_digest: 'password') 
    assert_not user.valid? 
  end 
end
