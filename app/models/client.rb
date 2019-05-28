require 'httparty'
class EmailValidation
  include HTTParty
  def email_responses
    self.class.get('https://apilayer.net/api/check?access_key=1f01e549bca1686923035a6bedaada58&email=kawther.esam14@gmail.com&smtp=1&format=1')
  end 
end
email_validation = EmailValidation.new 
if "#{email_validation.email_responses["smtp_check"]}" == "false"
  p "this is not a stmp valid email, please re-enter a valid email"
elsif "#{email_validation.email_responses["format_valid"]}" == "false"
  p "Your Email format is not valid"
else 
  p "Welcome, #{email_validation.email_responses["user"]} your requset was done successfully"
end