class Article < ActiveRecord::Base
	belong_to :category
	validate_presence_of :content, :title

	scope :alphabetical, -> {order(:title)}
	scope :active, -> {where(active: true)}
end
