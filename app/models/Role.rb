class Role
  include Mongoid::Document
  field :role_name, type: String
  
  # Relations
  embedded_in :user
end