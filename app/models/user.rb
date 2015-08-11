class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:prestodoctor]

  def self.find_or_create_for_presto_oauth(oauth_data)
    User.find_or_create_by(presto_id: oauth_data.uid)
  end

  def update_presto_credentials(oauth_data)
    self.presto_token = oauth_data.credentials.token
    self.email = oauth_data.info.user_info.email
  end
end
