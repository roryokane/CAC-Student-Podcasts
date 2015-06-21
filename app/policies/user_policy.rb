class UserPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    super && true
  end

  def create?
    user.admin?
  end

  def update?
    user.admin? || user == record
  end

  def destroy?
    user.admin? || user == record
  end
end