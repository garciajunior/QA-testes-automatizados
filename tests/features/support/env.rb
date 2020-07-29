require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)

HEADLESS = ENV['HEADLESS']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENVIRONMENT_TYPE}.yml")

Capybara.register_driver :selenium do |app|
  if HEADLESS.eql?('com_headless')
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => { 'args' => ['--disable-infobars',
                                        'windows-size=1366,768'] }
      )
    )
  elsif HEADLESS.eql?('sem_headless')
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => { 'args' => ['headless', 'disable-gpu',
                                        '--disable-infobars',
                                        'windows-size=1366,768'] }
      )
    )
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 30
  config.app_host = CONFIG['url_home']
end
