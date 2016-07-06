require "watir-webdriver"
require "selenium/server"

server = Selenium::Server.new(Dir["bin/*.jar"].first, background: true, log: "selenium.log")
server << ENV["CHROME_OPTS"]
server.start

caps = load_yaml("capabilities.yml")

Before do 
    @browser = Watir::Browser.new(:remote, url: "http://localhost:4444/wd/hub", desired_capabilities: caps)
    @browser.window.maximize
end

After do |scenario|
    if scenario.failed?
        filename= "results/images/error-#{@current_page.class}-#{Time.now}.png"
        @current_page.save_screenshot(filename)
        embed(filename, "image/png")
    end
    @browser.close unless @browser.nil?
end

at_exit do
    server.stop
end