# frozen_string_literal: true

# Palindroms controller
class PalindromsController < ApplicationController
  def index; end

  def result
    @number = params[:num].to_i
    @res_arr = PalindromsHelper.result_array(@number)
    @squares = PalindromsHelper.result_array(@number).map{|el| el**2}
    @hash = Hash[@res_arr.zip @squares]
    redirect_to home_path, notice: 'Вводите числа >= 0' if @res_arr.size.zero?
  end
end
