# frozen_string_literal: true

require 'appium_lib'
require 'appom'

appium_lib_options = {
  server_url: 'http://0.0.0.0:4723/wd/hub'
}

caps = {
  deviceName: 'Simulator',
  platformName: 'Android',
  app: File.join(File.dirname(__FILE__), 'app-world-beta.apk'),
  appPackage: 'vivino.web.app.beta',
  appActivity: 'com.sphinx_solution.fragmentactivities.MainActivity',
  newCommandTimeout: '3600'
}

Appom.register_driver do
  options = {
    appium_lib: appium_lib_options,
    caps: caps
  }
  Appom.configure do |config|
    config.max_wait_time = 10
  end
  $driver = Appium::Driver.new(options, false)
end
