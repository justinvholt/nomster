class Place < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :photos
    
    validates :name, presence: true, length: { maximum: 40, minimum: 3, too_short: "Awfully short name for a restaurant, no?", too_long: "Is this the name of a restaurant or a run-on sentence?" }
    validates :address, presence: true
    validates :description, presence: true

    geocoded_by :address
    after_validation :geocode

end
