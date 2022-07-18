class Clinic < ApplicationRecord
    has_many :doctors
    has_many :menus
    has_many :cases
    has_many :clinic_tags
end
