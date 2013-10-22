gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/idea.rb'


class TestIdea < Minitest::Test

  def test_it_exists
    idea = Idea.new
    assert idea
  end

  def test_it_takes_ideas
    idea = Idea.new(:title => "test", :description => "saves stuff")
    assert @title = "test"
    assert @description = "saves stuff"
  end

  def test_

end