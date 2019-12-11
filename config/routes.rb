Rails.application.routes.draw do
<<<<<<< Updated upstream


  root "messages#index"
end
=======
  get 'messages/index'

  root "messages#index"
end
>>>>>>> Stashed changes
