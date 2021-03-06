class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :collaborators
  has_many :wikis 
  before_create :default_user_role_standard

 def admin?
 role == 'admin'
 end

 def standard?
  role == 'standard'
 end 

 def premium?
  role == 'premium'
end 

private 

 def default_user_role_standard
 self.role == 'standard'
end 

end
