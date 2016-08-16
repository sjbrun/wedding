class Rejoinder < ActiveRecord::Base

  validates :names, presence: true, uniqueness: true, length: { minimum:3, maximum: 100 }
  validates :yes, inclusion: { in: [ true, false ] }
  validates :number, presence: true
  validate :number_is_greater_than_zero,
                    if: [:yes?]

  def number_is_greater_than_zero
    unless number > 0
      errors.add(:number, " of guests must be greater than 0 if attending.")
    end
  end
  
end
