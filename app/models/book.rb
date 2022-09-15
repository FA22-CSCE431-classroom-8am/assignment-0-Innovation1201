class Book < ApplicationRecord
    validates :title, presence: true
    t.string :author
    t.integer :price
    t.date :published-date
end
