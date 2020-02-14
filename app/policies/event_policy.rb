class EventPolicy < ApplicationPolicy

  def create?
    user.present?
  end

  def new?
    create?
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  def index?
    true
  end

  def show?
    true
  end

  def update?
    user_is_owner?(record)
  end

  def subscribe?
    !edit?
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
