class Reward < ActiveRecord::Base
  belongs_to :user

  def self.claim_reward(reward)
    reward.user.points -= reward.value
    reward.user.save
  end
end
