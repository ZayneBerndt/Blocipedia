class WikiPolicy < ApplicationPolicy
  
 def index?
  true 
 end

 def show?
    destroy?
  end

  def create?
    user.present?
  end

  def new?
    destroy?
  end

  def update?
    destroy?
  end

  def edit?
    destroy?
  end

 def destroy?
  user.present? && (record.user == user || user.admin? || user.premium?)
 end 
end 