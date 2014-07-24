class User < ActiveRecord::Base

validates :name, presence: true
validates :location_id, presence: true
validates :visit_id, presence: true

validate :premium_false_for_default
# validate :default_premium

# def default_premium
#     self.premium ||= false

# end

def premium_false_for_default
  unless premium.present?
    premium = false
  end
end

end