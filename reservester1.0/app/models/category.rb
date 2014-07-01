class Category < ActiveRecord::Base
	has_and_belongs_to_many :restaurants

	def self.search_for(keywords)
	  # keywords is an array of keywords, so iterate over each keyword in the list and
	  # execute a search query for each keyword- then collect all results
	  keywords.inject([]) do |results, keyword|
		results += where('LOWER(name) LIKE :keyword', :keyword => "%#{keyword.downcase}%").all
	  end
	end
end
