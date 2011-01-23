Rails.application.routes.draw do
  get "/fail" => "test#fail"
  root :to => "test#index"
end
