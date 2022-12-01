# frozen_string_literal: true

require 'test_helper'

class PalindromsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get palindroms_index_url
    assert_response :success
  end
end
