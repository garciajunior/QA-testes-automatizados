class UserPage < SitePrism::Page
  element :title, 'div[class="page-title"]'
  element :sair, 'a[title="Sair"]'
  
  def logout
    sair.click    
  end
end