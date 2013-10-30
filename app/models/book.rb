class Book < ActiveRecord::Base
  attr_accessible :author, :book_name, :language, :publication, :year
	validates_format_of :book_name, :with => /[a-z]/, :uniqueness => true
	validates :year, presence: true, numericality: true
	validates :language, presence: true
	validates :author, presence: true
	validates :publication, presence: true
end
