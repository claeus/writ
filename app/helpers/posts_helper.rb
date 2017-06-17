module PostsHelper
	
	def tagged text
		link_hash_tags(strip_tags(text)).html_safe
	end


	private

	def link_hash_tags text
			text.gsub(/#(\w+)/) { |match| link_to(match, hashtag_path($1))}
	end

end