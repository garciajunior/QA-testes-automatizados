class SectionPage < SitePrism::Page
  element :welcome, "p[class='welcome-msg']"
  elements :corrente, "ul.menu li.menu-item-has-children li.menu-parent-item"
  # element :corrente_masculina, "a[href='https://www.malujoias.com.br/corrente/correntes-masculinas>Correntes Masculinas']"
  # element :item, '#product-collection-image-3'
  element :title_section, "h1['Correntes Masculinas']"

  def section_corrente
    corrente
  end

  def section_corrente_masculina
    corrente_masculina.click
  end
end
