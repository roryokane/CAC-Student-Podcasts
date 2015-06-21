class PodcastPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    super && true
  end

  def create?
    true
  end

  def update?
    user.admin? || record.user == user
  end

  def destroy?
    user.admin? || record.user == user
  end
end