Dado('que estou logado') do
  expect(section_page.welcome.text).to eql 'BEM-VINDO, ANTONIO JOSE GARCIA JUNIOR!'
end

Dado('escolho a secao masculina') do
  selected = section_page.section_corrente_masculina.each { |list| list.click if list.text == 'CORRENTE' }
  expect(selected).to eql 'CORRENTE'
  # section_page.section_corrente_masculina.wait_until_lists_visible(wait: 5)
  git
end

Entao('verifico se selecionei a seção Correntes Masculinas') do
  expect(section_page.title_section.text).to eql 'Correntes Masculinas'
end
