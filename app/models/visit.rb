class Visit < ActiveRecord::Base

  belongs_to :location

  validates :from_date, presence: true
  validates :to_date, presence: true
  validates :user_name, presence: true, format: { with: /[[:alnum:]]/ }
  validates_associated :location

  validate :from_date_is_before_to_date
  validate :from_date_is_future

  def from_date_is_future
    if from_date.to_i < Time.now.to_i
      errors.add(:from_date, "must be in the future")
    end
  end

  def from_date_is_before_to_date
    if from_date.to_i > to_date.to_i
      errors.add(:from_date, "can't be after to date")
    end
  end

end

