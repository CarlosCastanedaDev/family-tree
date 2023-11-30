class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    user.admin?
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    author? || user.admin?
  end

  def destroy?
    author? || user.admin?
  end

  def author?
    record.author_id == user.person.id
  end
end
