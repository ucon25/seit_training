require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium/webdriver'
require 'dotenv'


# firefox
# Capybara.default_driver = :selenium

# chrome


Dotenv.load
if ENV['BROWSER'] == 'chrome'
	# javascript_driver method dr capybara
	Capybara.register_driver :chrome do |app|
  	Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
else
 Capybara.javascript_driver = :selenium
end

# require 'selenium/webdriver'
#
# Capybara.default_driver = :selenium_chrome
#
# url = "https://#{ENV['TB_KEY']}:#{ENV['TB_SECRET']}@hub.testingbot.com/wd/hub"
#
# capabilities = Selenium::WebDriver::Remote::Capabilities.new
#
# capabilities['platform'] = ENV['SELENIUM_PLATFORM'] || 'ANY'
# capabilities['name'] = 'My first Test'
# capabilities['browserName'] = ENV['SELENIUM_BROWSER'] || 'chrome'
# capabilities['version'] = ENV['SELENIUM_VERSION'] if ENV['SELENIUM_VERSION']
#
# browser = Selenium::WebDriver.for :chrome
#
# Before do |scenario|
# 	@browser = browser
# end
#
# at_exit do
# 	browser.quit
# end
