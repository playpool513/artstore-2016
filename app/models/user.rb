class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def to_admin
    self.update_columns(admin: true)
  end

  def to_normal
    self.update_columns(admin: false)
  end
end
