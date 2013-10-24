gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/idea_box/idea'
require './lib/idea_box/idea_store'

class IdeaStoreTest < Minitest::Test

  def test_save_and_retrieve_an_idea
    idea_attributes = {"title" => "celebrate", "description" => "with champagne"}
    IdeaStore.create(idea_attributes)
    id = IdeaStore.all.count - 1

    # assert_equal 1, IdeaStore.count

    idea = IdeaStore.find(id)
    assert_equal "celebrate", idea.title
    assert_equal "with champagne", idea.description
  end

  def 

end