require 'test_helper'

class GainControllerTest < ActionController::TestCase

  setup do

  end

  test 'index is non-empty' do
    get :index
    result = assigns(:gains)
    assert_not_nil result

  end
end
