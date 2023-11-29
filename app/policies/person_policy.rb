class PersonPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    false
  end

  def update?
    person?
  end

  def destroy?
    person?
  end

  def tree?
    true
  end

  def birthdays?
    true
  end

  def family?
    true
  end

  private

  def person?
    record.id == user.person_id || user.admin?
  end
end
