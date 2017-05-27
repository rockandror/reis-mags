module CustomFunctions
  # Add custom methods here
end

RSpec.configure do |config|
  config.include CustomFunctions, type: :feature
end