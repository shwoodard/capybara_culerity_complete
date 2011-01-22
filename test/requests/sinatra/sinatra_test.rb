require 'sinatra_helper'

class CapybaraTest < Test::Unit::TestCase
  def setup
  end

  def teardown
  end

  def test_has_containter
    visit '/'
    assert_equal Capybara::Node::Element, find('#container').class
  end

  def test_fails_wihout_container
    visit '/fail'
    
    assert_raises(Capybara::ElementNotFound) do
      find('#container')
    end
  end

end
