class Ability
  include CanCan::Ability

  def initialize(user)
    if user.super_admin?
       can :manage, :all
    elsif user.admin?
      can :manage, :all
    #   can :read, Item
    #   can :create, Item
    #   can :update, Item do |item|
    #     item.try(:user) == user
    #   end
    #   can :destroy, Item do |item|
    #     item.try(:user) == user
    #   end
    elsif user.dietitian?
    #   can :read, Item
    can :manage, :all
    elsif user.patient?
    #   can :read, Item
    can :manage, :all
    end
  end
end
