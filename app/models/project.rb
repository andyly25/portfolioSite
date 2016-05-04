class Project < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged
	has_attached_file :image, styles:{large:"1000x1000>", medium:"300x300>",thumb:"150x150#"}, 
	default_url: lambda{|image| ActionController::Base.helpers.asset_path('iceblock.png')}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
