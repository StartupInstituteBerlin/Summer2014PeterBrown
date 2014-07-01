class Restaurant < ActiveRecord::Base
	# attr_accessible :address, :description, :name, :phone, :photo, :photo_cache, :owner_id
	mount_uploader :photo, PhotoUploader
	validates :name, :owner, presence: true
 
	belongs_to :owner
	has_many :reservations
	has_and_belongs_to_many :categories

	accepts_nested_attributes_for :reservations

	def self.search_for(keywords)
	  # keywords is an array of keywords, so iterate over each keyword in the list and
	  # execute a search query for each keyword- then collect all results
	  results = keywords.inject([]) do |akk, keyword|
		akk += where('LOWER(name) LIKE :keyword', :keyword => "%#{keyword.downcase}%").all

	  end

	  # results hold array of matching restaurants
      potential_categories = Category.search_for(keywords)

      # add restaurants contained in each category to search results
      potential_categories.each do |category|
        results += category.restaurants
      end

      # add uniq to get rid of duplicates in array

      results.uniq
	end

end
