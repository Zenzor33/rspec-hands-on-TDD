# README

## Book Specific Modifications

### Installation

#### Updates to `spec_helper.rb`

- Add `require 'factory_bot_rails'` (pasted from the book)
- Add `config.include FactoryBot::Syntax::Methods` (pasted from the book)
  - This allows direct usage of FactoryBot's methods (like `create`, `build`, `attributes_for`, etc.) in your tests without needing to prefix them with `FactoryBot`.
  - Example: `user = create(:user)` instead of `user = FactoryBot.create(:user)`

#### Updates to `application.rb`

Configure the Rails model generator to use FactoryBot for creating factory file stubs whenever a new model is generated:

```ruby
require "factory_bot_rails"

config.generators do |g|
  g.test_framework :rspec, fixture: true
  g.fixture_replacement :factory_bot, dir: "spec/factories"
end
```
