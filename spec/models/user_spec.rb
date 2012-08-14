require 'spec_helper'

describe User do
  
  before do 
  	@user = User.new(name: "Example User", email: "user@example.com", password: "example", salt: "encryption")
	end
  
  subject {@user}

  it { should respond_to(:name) }
  it { should respond_to(:email) }
 

  it { should be_valid }

  describe "when name is not present" do 
  	before { @user.name = " "}
  	it { should_not be_valid}
  end

  describe "when name is too long" do
    before { @user.name = "a" * 51}
    it {should_not be_valid}
  end 

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_scrappy.org example.user@beast.foo@bar.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        @user.should_not be be_valid
      end 
    end 
  end

  describe "when email formait is valid" do
    it "should be valid"  do 
      addresses = %w[user@scrappy.COM a_US-er@f.b.org user.lst@bar.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        @user.should be_valid
      end 
    end
  end

  describe "when password is not present" do
    before { @user.password = " " }
    it { should_not be_valid}
  end 

   describe "when salt is not present" do
    before { @user.salt = " " }
    it { should_not be_valid}
  end 

end

