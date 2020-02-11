class EventPolicy < ApplicationPolicy
  def create?
    user.present?
  end

  def destroy?
    update?
  end

  def show?
    update?
  end

  def update?
    user_is_owner?(record)
  end

  #class Scope < Scope
  #  def resolve
  #    if user.present?
  #      user.admin? ? scope.all : scope.where(user: user)
  #    end
  #  end
  #end

  private

  def user_is_owner?(event)
    user.present? && (event.try(:user) == user)
  end
end
