class Rejoinder < ActiveRecord::Base
  validates :names, presence: true, uniqueness: true, length: { minimum:3, maximum: 100 }
  validates :number, presence: true
  validates :yes, presence: true
end
