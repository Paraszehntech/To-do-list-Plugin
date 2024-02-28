class Todo < ActiveRecord::Base
    enum status: [:open, :closed]

    validates :title, presence: true
end
