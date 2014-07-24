class Location < ActiveRecord::Base

  has_many :visits
  validates :name, presence: true, length: { maximum: 30 }, format: { with: /[:alnum:]/ }
  validates :city, presence: true

  def self.iron_find(id)
    self.find id
  end

  def self.last_created(limit = 10)
    Location.order(created_at: :desc).limit(limit)
  end

  def total_visits_in_month_of_year(month, year)
    d = DateTime.new(year, month, 01)
    self.visits.where(['from_date >= ? AND to_date < ?', d, d.end_of_month]).count
  end

end
