class HomePage < SitePrism::Page
  set_url '/'
  element :campo_email, 'input[name="login[username]"]'
  element :campo_password, '#pass'
  element :loged, '#send2'

  def login(email, password)
    campo_email.set email
    campo_password.set password
    loged.click
  end
end
