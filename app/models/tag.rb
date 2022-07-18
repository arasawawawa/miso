class Tag < ApplicationRecord
    has_many :clinic_tags
    has_many :case_tags
    has_many :doctor_tags
    has_many :menu_tags
end
