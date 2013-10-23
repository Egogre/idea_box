gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/idea_box/idea.rb'


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

  def test_ideas_can_be_liked
    idea = Idea.new(:title => "diet", :description => "carrots and cucumbers")
    assert_equal 0, idea.rank
    idea.like!
    assert_equal 1, idea.rank
  end

  def test_ideas_can_be_liked_more_than_once
    idea = Idea.new(:title => "exercise", :description => "stickfighting")
    assert_equal 0, idea.rank
    5.times do
      idea.like!
    end
    assert_equal 5, idea.rank
  end

end