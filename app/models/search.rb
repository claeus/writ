class Search
	# extend ActiveModel::Naming
	attr_reader :term

	def to_partial_path
		'searches/show'
	end
	
	def initialize(options = {})
		@term = options.fetch(:term, "")
	end

	def found_posts
		posts
	end

	private

	def posts
		Post.where('body iLike ?', search_term)
	end

	def search_term
		"%#{term}%"
	end
	
end