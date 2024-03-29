# Generated by cucumber-sinatra. (2011-10-08 14:59:22 -0300)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'site.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Site

class SiteWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  SiteWorld.new
end
