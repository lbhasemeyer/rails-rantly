class RantSerializer < ActiveModel::Serializer

  attributes :id, :title, :body, :user_id
  has_one :user, except: [:rants]

end
