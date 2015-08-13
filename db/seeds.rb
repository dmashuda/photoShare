# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(
    :email                 => "bdreichelt@gmail.com",
    :password              => "123456",
    :password_confirmation => "123456"
)
user.save!(:validate => false)

user2 = User.new(
    :email                 => "danmashuda@gmail.com",
    :password              => "123456",
    :password_confirmation => "123456"
)
user2.save!(:validate => false)