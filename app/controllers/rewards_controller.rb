class RewardsController < ApplicationController
  def destroy
    @reward = Reward.destroy(params[:id])

    redirect_to tasks_url
  end

  def update
    @reward = Reward.find(params[:id])
    Reward.claim_reward(@reward)

    redirect_to tasks_url
  end
end
