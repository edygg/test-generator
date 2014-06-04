class Role
  include Mongoid::Document
  field :role_name, type: String
  
  # Relations
  belongs_to :user
end