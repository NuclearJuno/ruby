class Post < ApplicationRecord
  validates :title, length: { maximum: 20,
    too_long: "%{count} characters is the maximum allowed", minimum: 5,
    too_short: "%{count} characters is the minimum allowed" }
 validates :description, length: { maximum: 2000,
   too_long: "%{count} characters is the maximum allowed", minimum: 100,
   too_short: "%{count} characters is the minimum allowed" }
  validates :description, presence: true
end
