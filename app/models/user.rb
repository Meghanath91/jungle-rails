class User < ActiveRecord::Base

  has_secure_password

  
  validates :password, length: {in:6..20}
  validates :email,presence: true
  validates :email, uniqueness: true
  validates :name, presence: true
 
    
   def self.authenticate_with_credentials(email,password)
    user = User.find_by_email(email.downcase.strip)
    if user
      if user.authenticate(password)
        return user
      else
        return nil
      end
    else
     return nil
    end
  end 
    
  

  
  
end
