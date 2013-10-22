gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/app.rb'

class TestApp < Minitest::Test

  def test_it_exists
    app = IdeaBoxApp.new
    assert app
  end

end