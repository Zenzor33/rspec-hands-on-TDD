# README

Book specific modifications:

- spec_helper.rb

* require 'factory_bot_rails' #pasted from book
* config.include FactoryBot::Syntax::Methods # pasted from book

* The config.include allows FactoryBot's methods (like create, build, attributes_for, etc.) directly in your tests without needing to prefix them with FactoryBot.
* eg: user = create(:user) instead of user = FactoryBot.create(:user)
