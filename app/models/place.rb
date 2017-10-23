class Place < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length: { maximum: 40, minimum: 3, too_short: "Awfully short name for a restaurant, no?", too_long: "Is this the name of a restaurant or a run-on sentence?" }
    validates :address, presence: true
    validates :description, presence: true
end
