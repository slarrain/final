class Menu < ActiveRecord::Base
    belongs_to :food

    validates :date, presence: true
end
