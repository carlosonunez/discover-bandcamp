require 'discover_bandcamp/bandcamp'
require 'discover_bandcamp/browser'
require 'discover_bandcamp/logging'

include DiscoverBandcamp
raise "Please define the Selenium Hub URL" if ENV['SELENIUM_HUB_URL'].nil?
hub_url = ENV['SELENIUM_HUB_URL'] || "http://hub:4444"
browser_to_use = ENV['BROWSER_TO_USE'].to_sym || :chrome

Browser.activate!(selenium_hub_url: hub_url,
                  browser: browser_to_use)
