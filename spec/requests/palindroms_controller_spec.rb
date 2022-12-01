# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'
require 'selenium-webdriver'

# testing PalindromsController
RSpec.describe PalindromsController, type: :controller do
  context 'res_array function check' do
    it 'returns correct array' do
      expect(PalindromsHelper.result_array(11)).to eq([0, 1, 2, 3, 11])
      expect(PalindromsHelper.result_array(0)).to eq([0])
      expect(PalindromsHelper.result_array(-1)).to eq([])
    end
  end

  describe 'GET index' do
    context 'check index(main) page' do
      it 'has a 200 status code' do
        get :index
        expect(response.status).to eq(200)
      end
    end
  end
end
