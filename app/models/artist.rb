class Artist < ActiveRecord::Base
    has_many :shows
    has_many :venues, through: :shows
end