class Task < ApplicationRecord
    validates :title, :start_date, :end_date, :presence => true
    validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, :allow_blank => true
    validate :overlap
  
    def overlap
      puts 'validate overlap'
      if (Task.where("(? BETWEEN start_date AND end_date OR ? BETWEEN start_date AND end_date)", self.start_date, self.end_date).any?)
          puts 'We have overlap'
          errors.add(:task, 'it overlaps dates')
      end
    end
  end
