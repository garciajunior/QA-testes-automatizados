World(Helper)
After '@deslogar' do
  user_page.logout
  sleep(5)
end

# depois de cada cenario, tira um print e remove todos os espaços e virgulas
After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, '-').tr('/', '-')
  scenario_name = scenario.name.delete(',', '')
  scenario_name = scenario.name.delete('(', '')
  scenario_name = scenario.name.delete(')', '')
  scenario_name = scenario.name.delete('#', '')

  # se o cenario falhar ele vai chamar o metodo take passando
  # dois parametros o nome do cenario com nome minusculo e o resultado
  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
end
