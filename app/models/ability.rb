class Ability
  include CanCan::Ability

  def initialize(user)
    if user.super_admin?
      puts"+++super_admin+++"
       can :manage, :all
    elsif user.admin?
      puts"+++admin+++"
      #can :manage, :all
      can :read, User

      #can :create, User
      # can :update, User do |item|
      #   item.try(:user) == user
      # end
      #can :destroy, Item do |item|
      #  item.try(:user) == user
      #end
    elsif user.dietitian?
      puts"+++dietitian+++"
      #can :read, Item
      #can :manage, :all
    elsif user.patient?
      puts"+++patient+++"
      #can :read, Item
      #can :manage, :all
    end
  end
end
