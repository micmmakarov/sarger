class GainController < ApplicationController

  def index
    id = current_user.id
    @gains = Gain.all(
        :conditions => {:user_id => id},
        :order => 'notice desc'
    )

  end

end
