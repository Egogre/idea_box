gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/app.rb'
gem 'sinatra'
require 'sinatra/base'

class TestApp < Minitest::Test

  def test_it_exists
    app = IdeaBoxApp.new
    assert app
  end

  def test_basic_idea
    idea = Idea.new(:title => "title", :description => "desription")
    assert @title = "title"
    assert @description = "description"
  end

  def test_ideas_can_be_sorted_by_rank
    diet = Idea.new(:title => "diet", :description => "cabbage soup")
    exercise = Idea.new(:title => "exercise", :description => "long distance running")
    drink = Idea.new(:title => "drink", :description => "carrot smoothy")
    
    exercise.like!
    exercise.like!
    drink.like!
    
    ideas = [diet, exercise, drink]
    
    assert_equal [exercise, drink, diet], ideas.sort
  end

end