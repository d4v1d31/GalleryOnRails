#encoding: utf-8
namespace :db do
  desc "Fill the Database with initial data"
  task :initialize => :environment do
    Rake::Task['db:reset'].invoke




    #Create Permissions
    #for User Role
    r1 = Role.create!(name: "Registered User")
    p1 = Permission.create!(name: "Administrator" value: "admin")


  end
end
