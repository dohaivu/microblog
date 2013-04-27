include ApplicationHelper
include SessionsHelper

def valid_signin(user)
	fill_in "Email", with: user.email.upcase
	fill_in "Password", with: user.password
	click_button "Sign in"	

end

# def sign_in(user)
#   visit signin_path
#   fill_in "Email",    with: user.email
#   fill_in "Password", with: user.password
#   click_button "Sign in"
#   # Sign in when not using Capybara as well.
#   #post sessions_path, {:session => { :email => user.email, :password => user.password }}
# end

RSpec::Matchers.define :have_error_message do |message|
	match do |page|
		page.should have_selector('div.alert.alert-error', text: message)
	end
end

