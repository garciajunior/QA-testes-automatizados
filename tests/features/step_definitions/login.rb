Dado('que eu tenho um usuario') do |table|
  @email = table.rows_hash['email']
  @senha = table.rows_hash['senha']
  home.load  
end

Quando('eu faço login') do
  home.login('jhunior.get@hotmail.com', 'Soldado609*')
end

Entao('verifico se estou logado.') do
  expect(page).to have_current_path('https://www.malujoias.com.br/customer/account/', url: true) 
  expect( user_page.title.text).to eql 'Painel Geral'
end
 