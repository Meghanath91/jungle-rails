require 'rails_helper'

RSpec.describe User, type: :model do

 
  describe 'Validations' do

    

    it "is valid with valid attributes" do 
      test_user=User.create({name:"Meghanath",email:"cy@gmail.com",password:"password"})
      expect(test_user).to be_valid
    end

    it "is not valid without a name" do
      test_user=User.create({name:nil,email:"dark@gmail.com",password:"password"})
      expect(test_user).to_not be_valid
    end

    it "is not valid without a email" do
      test_user=User.create({name:"Meghanath",email:nil,password:"password"})
      expect(test_user).to_not be_valid
    end

    it "is not valid without a password" do
      test_user=User.create({name:"megan",email:"raj@gmail.com",password:nil})
      expect(test_user).to_not be_valid
    end

    it "is should not create a user with same email" do
      test_user1=User.create({name:"meganfox",email:"raj@gmail.com",password:"password"})
      test_user2=User.create({name:"raj",email:"raj@gmail.com",password:"password"})
      expect(test_user2).to_not be_valid
    end

   
  end

  describe '.authenticate_with_credentials' do

    it "if user exists & password authenticated " do
      test_user3=User.create({name:"psytron",email:"psy@gmail.com",password:"password"})
      expect(User.authenticate_with_credentials(test_user3[:email],"password")).to_not be_nil
    end

    it "if user doesn't exists " do
      expect(User.authenticate_with_credentials("","password")).to be_nil

    end

    it "if user exists and password not authenticated" do
      test_user3=User.create({name:"psytron",email:"psy@gmail.com",password:"password"})
      expect(User.authenticate_with_credentials(test_user3[:email],"pass")).to be_nil
    end


    
  end

end
