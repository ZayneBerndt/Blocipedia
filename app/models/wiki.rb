class Wiki < ActiveRecord::Base
  belongs_to :user

  scope :visible_to, ->  (user) {user ? all: where(public: true)}
 
 def default_wiki_public
    if self.public.nil?
      self.public = true
    end
  end

end
