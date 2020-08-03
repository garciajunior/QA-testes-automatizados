class SectionPage < SitePrism::Page
  element :welcome, "p[class='welcome-msg']"
  elements :lists, 'ul.menu li a '
  # element :item, '#product-collection-image-3'
  element :title_section, "h1['Correntes Masculinas']"

  def section_corrente_masculina
    lists
  end
end

