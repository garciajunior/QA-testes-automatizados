Dir[File.join(File.dirname(__FILE__),
              '../pages/*_page.rb')].each { |file| require file }

module Pages
  def home
    @home ||= HomePage.new
  end
  def user_page
    @user_page ||= UserPage.new
  end

  def section_page
    @section_page ||=SectionPage.new
  end
end
