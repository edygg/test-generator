class Role
  include Mongoid::Document
  field :role_name, type: String
  
  # Relations
  embedded_to :user
end