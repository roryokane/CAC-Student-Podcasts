class User < ActiveRecord::Base
  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  devise :database_authenticatable, :recoverable, :rememberable,
         :trackable, :validatable
  # The other Devise modules available are:
  # :registerable, :confirmable, :lockable, :timeoutable and :omniauthable

  def email_required?
    # undo Devise's default requiring of an email
    false
  end
end
