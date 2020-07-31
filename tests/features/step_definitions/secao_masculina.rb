Dado('que estou logado') do
  expect(section_page.welcome.text).to eql 'BEM-VINDO, ANTONIO JOSE GARCIA JUNIOR!'

end

Dado('seleciono a secao corrente') do
    expect(section_page.section_corrente).to eq ['Corrente']
end

Dado('escolho a secao masculina') do
 section_page.section_corrente_masculina
end

Entao('verifico se selecionei a seção Correntes Masculinas') do
  expect(section_page.title_section.text).to eql 'Correntes Masculinas'
end
