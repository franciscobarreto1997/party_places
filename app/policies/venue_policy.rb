class VenuePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
    scope.all #anyone can view any restaurant
    #scope.where(user: user) #display only venues from current_user(owner)
    end
  end

  def create?
    return true #anyone can create a venue
  end

  def edit?
    user_is_owner?
  end

  def update?
    user_is_owner? #owner can destroy venue
  end

  def destroy?
    user_is_owner?
  end


  private

  def user_is_owner?
    record.user == user
  end

end
