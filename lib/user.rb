# frozen_string_literal: true

class User
  attr_accessor(:email, :age)
  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all_users << self
  end

  def self.all
    @@all_users
  end

  def self.find_by_email(email)
    @@all_users.each do |user|
      if user.email == email
        return x
      else
        puts 'Unknwon user'
      end
    end
  end
end
