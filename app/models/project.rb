class Project < ActiveRecord::Base
    has_many :tickets, dependent: :destroy
    validates :title, presence: true,
                    length: { minimum: 5 }
    validates :text, presence: true,
                    length: { minimum: 5 }
end
