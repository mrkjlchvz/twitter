class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :read, :all
    can :destroy, Micropost do |micropost|
	micropost.user == user
    end
  end
end
