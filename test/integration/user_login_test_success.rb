require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  def setup
    @doctor = doctors(:alison)
  end

  test "login with valid information followed by logout" do
    get login_path
    post login_path, params: { session: { email:    @doctor.email,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @doctor
    follow_redirect!
    assert_template 'doctors/sho  w'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", doctor_path(@doctor)

    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path,      count: 0
    assert_select "a[href=?]", user_path(@doctor), count: 0
  end
end
