class VenuePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
    #scope.all #anyone can view any restaurant
    scope.where(user: user) #display only venues from current_user(owner)
    end
  end

  def create?
    return true #anyone can create a venue
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end


end
