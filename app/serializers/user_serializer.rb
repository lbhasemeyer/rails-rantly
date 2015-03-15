class UserSerializer < ActiveModel::Serializer

  attributes :id, :first_name, :last_name, :email, :rant_ids
  has_many :rants, except: [:user]
  
end
