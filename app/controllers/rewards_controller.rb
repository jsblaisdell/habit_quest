class RewardsController < ApplicationController
  def create
    @reward = current_user.rewards.create(reward_params)

    redirect_to tasks_url
  end

  def destroy
    @reward = Reward.destroy(params[:id])

    redirect_to tasks_url
  end

  def update
    @reward = Reward.find(params[:id])
    Reward.claim_reward(@reward)

    redirect_to tasks_url
  end

  private

  def reward_params
    params.require(:reward).permit(:name, :value)
  end
end
