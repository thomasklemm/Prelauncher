Prelauncher::Application.routes.draw do
  # Create mails
  resources :subscribers, only: :create

  # Static pages
  get '*id' => 'high_voltage/pages#show', as: :static
  # Root
  root to: 'high_voltage/pages#show', id: 'landing'
end
