class Company < ApplicationRecord
    validates :name, presence: true
    validates :city, presence: true
    validates :identification, presence: true
    validates :adress, presence: true
    validates :email, presence: true
    validates :phone, presence: true
end
