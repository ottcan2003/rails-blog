class Comment < ApplicationRecord
  has_many :notification, as: :notifiable
  belongs_to :post
  belongs_to :visitor
end
