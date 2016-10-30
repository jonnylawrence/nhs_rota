require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "valid signup information" do
    get signup_path
    assert_difference 'Doctor.count', 1 do
      post doctors_path, params: { doctor: { name:  "Example Doctor",
                                         email: "doctor@example.com",
                                         password:              "password",
                                         password_confirmation: "password" } }
    end
    follow_redirect!
    assert_template 'doctors/show'
    assert is_logged_in?
  end
end
