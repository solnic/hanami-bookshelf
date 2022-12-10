# require_with_metadata: true
# frozen_string_literal: true

require "capybara/rspec"

Capybara.app = Hanami.app
Capybara.server = :puma, {Silent: true}

RSpec.configure do |config|
  config.include Capybara::DSL, Capybara::RSpecMatchers, :web
end
