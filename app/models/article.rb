class Article < ApplicationRecord
	# You can call this whatever you want
	# has_one_attached :banana
	has_one_attached :pdf

	def Article.attributes
		%i[
			title
			pdf
		]
	end
end
