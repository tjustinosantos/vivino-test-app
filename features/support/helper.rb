# frozen_string_literal: true

# Helper class to assist on common test interactions
module Helper
  require 'selenium-webdriver'
  def scroll_all_down
    width = DRIVER.window_size.width
    height = DRIVER.window_size.height
    appium = Appium::TouchAction.new(DRIVER)
    action = appium.swipe(start_x: (width / 2), start_y: (height - 100), end_x: (width / 3), end_y: 500, duration: 500)
    action.perform
  end

  def wait_for
    Selenium::WebDriver::Wait.new(timeout: 10).until { yield }
  end

  def slide_to_rate(element)
    x = element.location.x
    y = element.location.y
    @action = Appium::TouchAction.new(DRIVER).swipe(start_x: x, start_y: y, end_x: x + 50, end_y: y, duration: 1000)
    @action.perform
  end
end
World(Helper)
