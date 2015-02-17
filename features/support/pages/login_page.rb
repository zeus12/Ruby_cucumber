class LoginPage
  include PageObject


  text_field(:username, :id => "user_id")
  text_filed(:password, :id => "user_password")
  button(:login, :value => "Login")

end