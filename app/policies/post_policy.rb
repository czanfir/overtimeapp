class PostPolicy < ApplicationPolicy

  def update?
    record.user_id == user.id || admin_types.include?(user.type)
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
