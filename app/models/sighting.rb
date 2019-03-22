class Sighting < ApplicationRecord
    belongs_to :animal
    validates :date, :time, :latitude, :longitude, presence: true
    validates :date, :time, :latitude, :longitude, format: {:with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, message: ''}
end
