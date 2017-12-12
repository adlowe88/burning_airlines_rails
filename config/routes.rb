# == Route Map
#
#           Prefix Verb   URI Pattern                      Controller#Action
#            seats GET    /seats(.:format)                 seats#index
#                  POST   /seats(.:format)                 seats#create
#         new_seat GET    /seats/new(.:format)             seats#new
#        edit_seat GET    /seats/:id/edit(.:format)        seats#edit
#             seat GET    /seats/:id(.:format)             seats#show
#                  PATCH  /seats/:id(.:format)             seats#update
#                  PUT    /seats/:id(.:format)             seats#update
#                  DELETE /seats/:id(.:format)             seats#destroy
#     reservations GET    /reservations(.:format)          reservations#index
#                  POST   /reservations(.:format)          reservations#create
#  new_reservation GET    /reservations/new(.:format)      reservations#new
# edit_reservation GET    /reservations/:id/edit(.:format) reservations#edit
#      reservation GET    /reservations/:id(.:format)      reservations#show
#                  PATCH  /reservations/:id(.:format)      reservations#update
#                  PUT    /reservations/:id(.:format)      reservations#update
#                  DELETE /reservations/:id(.:format)      reservations#destroy
#          flights GET    /flights(.:format)               flights#index
#                  POST   /flights(.:format)               flights#create
#       new_flight GET    /flights/new(.:format)           flights#new
#      edit_flight GET    /flights/:id/edit(.:format)      flights#edit
#           flight GET    /flights/:id(.:format)           flights#show
#                  PATCH  /flights/:id(.:format)           flights#update
#                  PUT    /flights/:id(.:format)           flights#update
#                  DELETE /flights/:id(.:format)           flights#destroy
#            users GET    /users(.:format)                 users#index
#                  POST   /users(.:format)                 users#create
#         new_user GET    /users/new(.:format)             users#new
#        edit_user GET    /users/:id/edit(.:format)        users#edit
#             user GET    /users/:id(.:format)             users#show
#                  PATCH  /users/:id(.:format)             users#update
#                  PUT    /users/:id(.:format)             users#update
#                  DELETE /users/:id(.:format)             users#destroy
#        airplanes GET    /airplanes(.:format)             airplanes#index
#                  POST   /airplanes(.:format)             airplanes#create
#     new_airplane GET    /airplanes/new(.:format)         airplanes#new
#    edit_airplane GET    /airplanes/:id/edit(.:format)    airplanes#edit
#         airplane GET    /airplanes/:id(.:format)         airplanes#show
#                  PATCH  /airplanes/:id(.:format)         airplanes#update
#                  PUT    /airplanes/:id(.:format)         airplanes#update
#                  DELETE /airplanes/:id(.:format)         airplanes#destroy
# 

Rails.application.routes.draw do
  resources :seats
  resources :reservations
  resources :flights
  resources :users
  resources :airplanes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
