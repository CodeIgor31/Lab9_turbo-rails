# frozen_string_literal: true

Rails.application.routes.draw do
  root 'palindroms#index', as: 'home'
  post 'palindroms/result', to: 'palindroms#result'
end
