class Result < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :Teams, presence: true,
                    length: { minimum: 5 }
end
