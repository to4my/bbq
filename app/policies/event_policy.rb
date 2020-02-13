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

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def user_is_owner?(event)
    user.present? && (event.try(:user) == user)
  end
end
