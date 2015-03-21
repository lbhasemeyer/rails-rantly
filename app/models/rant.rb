class Rant < ActiveRecord::Base

  belongs_to :user
  validates :title, presence: true
  validates :body, length: { minimum: 144 }

end
