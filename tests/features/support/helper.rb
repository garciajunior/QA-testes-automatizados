require 'fileutils'
# metodo que tira os screenshot
module Helper
  def take_screenshot(file_name, result)
    timer_path = Time.now.strftime('%F').to_s
    file_path = "results/screenshot/test_#{result}/run_#{timer_path}"
    screenshot = "#{file_path}/#{file_name}.png"
    page.save_screenshot(screenshot)
    attach(screenshot, 'image/png')
  end
end
