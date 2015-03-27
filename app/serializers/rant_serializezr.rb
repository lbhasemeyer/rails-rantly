class RantSerializer < ActiveModel::Serializer

  attributes :id, :title, :body, :user_id, :created_at
  has_one :user, except: [:rants]

end
