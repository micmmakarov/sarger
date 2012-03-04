require 'test_helper'

class GainControllerTest < ActionController::TestCase

  setup do

  end

  test 'index is non-empty' do
    get :index
    result = assigns(:gains)
    assert_not_nil result

    assert_template :index
    assert_select '.gains'
  end
end
