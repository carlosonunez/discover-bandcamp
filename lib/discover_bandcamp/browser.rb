require 'selenium-webdriver'
require 'singleton'

module DiscoverBandcamp
  class Browser
    include Singleton

    # Initializes a Chrome browser session driven through Selenium Hub, and
    # returns a configured driver.
    def self.activate!(selenium_hub_url:, browser:)
      self.driver = Selenium::WebDriver.for :remote,
        url: selenium_hub_url,
        desired_capabilities: browser
    end
  end
end
