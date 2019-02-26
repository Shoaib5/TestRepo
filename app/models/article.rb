class Article < ApplicationRecord
  has_many :comments , dependent: :destroy
  validates_associated :comments
  validates :title , :text, presence: true, length:{minimum: 5}

  before_validation :normalize_title

  def normalize_title
    if self.title.blank?
      self.title = 'Named!!!!!!!'
    end
  end
end
