# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Static content', type: :system do
  scenario 'valid sequence of numbers' do
    visit home_path

    fill_in :num, with: '11'

    find('#btn').click

    expect(find('#counter')).to have_text('5')
  end

  scenario 'invalid input' do
    visit home_path

    fill_in :num, with: '-1'

    find('#btn').click

    expect(find('#alert-msg')).to have_text('Вводите числа >= 0')
  end
end
