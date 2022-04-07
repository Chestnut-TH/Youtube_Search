class Chanel < ApplicationRecord
    validates :name, presence: true
    validates :url, presence: true
    validates :tag1, presence: true
end
