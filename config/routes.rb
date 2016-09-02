PostmarkBounce::Engine.routes.draw do

  root to: "webhook#event", via: :post

  put "/:message_id/hide", to: "emails#hide"

end
