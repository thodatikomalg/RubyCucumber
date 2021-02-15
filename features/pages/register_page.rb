class RegisterPage

  include PageObject

  text_field(:first_name, name: 'firstName')
  text_field(:last_name, name: 'lastName')
  text_field(:phone, name: 'phone')
  text_field(:email, id: 'userName')
  text_field(:address, name: 'address1')
  text_field(:city, name: 'city')
  text_field(:state, name: 'state')
  text_field(:postal_code, name: 'postalCode')
  text_field(:user_name, id: 'email')
  text_field(:password,name: 'password')
  text_field(:confirm_password,name: 'confirmPassword')

  select_list(:country, name: 'country')

  button(:submit, name: 'register')

  b(:success_message,tag_name:'b')


end