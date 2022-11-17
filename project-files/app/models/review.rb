class Review < ActiveRecord::Base
    belongs_to :customer
    belongs_to :restaurant

    def full_review
            "#{self.customer.name} gave their meal #{self.score} stars."
    end
end