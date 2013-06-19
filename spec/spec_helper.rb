$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)

require 'xing'
require 'rspec'
require 'webmock/rspec'
require 'pry'
require 'json'

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end

def fixture_as_json(path)
  absolute_path = File.expand_path path, fixture_path
  JSON.parse(File.read absolute_path)
end


RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true

  config.filter_run :focus
  config.run_all_when_everything_filtered                = true

  # make RSpec stop after first failure
  config.fail_fast                                       = true
end
