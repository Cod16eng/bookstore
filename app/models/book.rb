class Book < ApplicationRecord
	belongs_to :category
	belongs_to :author
	belongs_to :publisher

	validates :title, :category_id, :author_id, :publisher_id, :isbn, 
			  :price, :buy, :year, :format, :excerpt, :pages, 
			  presence: true
					
end
