class User
  include Mongoid::Document
  field :user_name, type: String
  field :user_password, type: String
  field :real_name, type: String
  
  # Relations
  embeds_one :role

  # Indexes
  index({ user_name: 1 }, { unique: true, name: 'user_name_index' })
end