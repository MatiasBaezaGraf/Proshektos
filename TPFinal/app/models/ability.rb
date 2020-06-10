# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
        user ||= User.new # guest user (not logged in)

        if user.id == 1
            can :manage, :all
        end 

        if user.admin?
          can :index, Car
          can :show, Car
          can :manage, Reservation
          can :manage, Service
          can :manage, Fuel
          can :manage, Type
        else
          can :index, Service
          can :index, Car
          can :show, Car
          can :create, Reservation
          can :index, Reservation
          can :show, Reservation
          can :create, User
          can :read, User, :id => user.id
          can :update, User, :id => user.id
        end
  end
end
