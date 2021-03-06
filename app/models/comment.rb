class Comment < ApplicationRecord
  belongs_to :league
  belongs_to :user
  validates :content, presence: :true

  accepts_nested_attributes_for :user, reject_if: :all_blank

end
