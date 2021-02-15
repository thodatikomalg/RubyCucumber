class LoginPage

  include PageObject

  link(:sign_on, text: 'SIGN-ON')
  link(:register, text:'REGISTER')
  link(:support, text:'SUPPORT')
  link(:home,text:'HOME')
  text_field(:username, :name=>'userName')
  text_field(:password, :name=>'password')
  button(:sign_in, :name=>'login')
end