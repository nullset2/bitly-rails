class Url < ApplicationRecord
  validates :original_url, presence: true, length: {maximum: 2048}, format: { with: URI.regexp(%w(http https)) }
end
