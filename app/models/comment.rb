class Comment < ApplicationRecord

  belongs_to :user
  validates :content, presence: true # PAR-FAIT !

end
