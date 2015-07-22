class Campaign < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :user_id, :description, :start_date, :end_date, :expiration_date, :status

  belongs_to :user
  has_many :creatives

  accepts_nested_attributes_for :creatives, :allow_destroy => true

end
