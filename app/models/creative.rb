class Creative < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :user_id, :campaign_id, :image, :start_date, :end_date, :expiration_date, :description, :code, :type, :ad_size, :image_cache

  belongs_to :campaign, polymorphic: true

  belongs_to :user, polymorphic: true
  
  mount_uploader :image, CreativeUploader

end
