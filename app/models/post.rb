class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged
	# I used that for default url since I wasn't able to do it the normal way
	has_attached_file :image, styles:{large:"600x600>", medium:"300x300>",thumb:"150x150#"}, 
						default_url: lambda{|image| ActionController::Base.helpers.asset_path('iceblock.png')}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
