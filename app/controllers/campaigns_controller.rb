class CampaignsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @campaings = Campaign.all
  end
end
