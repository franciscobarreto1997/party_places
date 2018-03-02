class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

 def dashboard?
   record == user #owner can book
 end

end
