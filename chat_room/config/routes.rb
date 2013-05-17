ChatRoom::Application.routes.draw do
  root :to => 'chats#room'

  get  '/login' => 'sessions#new', :as => :login
  post '/login' => 'sessions#create', :as => :login
  get  '/chatroom' => 'chats#room', :as => :chat
  get  '/chatroom2' => 'chats#room2', :as => :chat2
  post '/new_message' => 'chats#new_message', :as => :new_message
end
