require "sidekiq/web"

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  if !Rails.env.development?
    Sidekiq::Web.use Rack::Auth::Basic do |username, password|
      username == ENV.fetch("SIDEKIQ_WEB_USER") &&
        password == ENV.fetch("SIDEKIQ_WEB_PASSWORD")
    end
  end
  mount Sidekiq::Web => "/sidekiq"
  mount PgHero::Engine, at: "pghero"end
