class User
  include Mongoid::Document
  field :user_name, type: String
  field :user_password, type: String
  field :real_name, type: String
  
  # Relations
  embed_one :role
end