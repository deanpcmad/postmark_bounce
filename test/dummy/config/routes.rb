Rails.application.routes.draw do
  mount PostmarkBounce::Engine => "/postmark_bounce"
end
