class ProductPolicy < ApplicationPolicy

def new?
    user.role == 'Seller' || record.user == user
  end

  def edit?
      user.role == 'Seller' || record.user == user
  end

  def update?
     user.role == 'Seller' || record.user == user
  end

  def destroy?
    user.role == 'Seller' || record.user == user
  end

end