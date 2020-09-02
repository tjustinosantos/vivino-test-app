# Vivino test app

### About the project
Simple test 

### Dependencies

* ruby 2.6.6
gem 'appium_lib', '~> 10.6.0'
gem 'appom'
gem 'cucumber'
gem 'rspec'
gem 'rubocop'

### Project Structure

               .
               +-- features
                  +-- _pages
                  |   +-- home.rb
                  |   +-- search.rb
                  |   +-- wine.rb
                  +-- step_definitions
                  |   +-- my_steps.rb
                  +-- support
                  |   +-- app-world-beta.apk
                  |   +-- env.rb
                  |   +-- helper.rb
                  +-- wine_page.feature
                  +-- .gitignore
                  +-- Gemfile
                  +-- Gemfile.lock
                  +-- README.md
    
### Installation Instructions

* Use RVM to handle rubies and gemsets

 * See installation instructions here (https://rvm.io/rvm/install)
 
* Install and select ruby version
 
              $ rvm install ruby-2.6.6
              $ rvm use ruby-2.6.6

 
* Install bundler
 
             $ gem install bundler
 
* Project Installation
 
             $ git clone https://github.com/tjustinosantos/vivino-test-app.git
             $ bundle

* Appium 
              $ npm install -g appium
              
### Running Tests

* Start appium (server url is already set to http://0.0.0.0:4723/wd/hub)

            $ cucumber features --tags @create_page

* Tests cases about creating a new page

            $ cucumber features --tags @create_page

* Tests cases about setting restriction to a page

            $ cucumber features --tags @set_restriction
