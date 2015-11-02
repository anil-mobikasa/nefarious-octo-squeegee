namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    
    #[User].each(&:delete_all)
    #[Role].each(&:delete_all)
    puts "Deleted ALL"
       
    @patient_role_id = Role.where(:name => 'patient').first.id
    @dietitian_role_id = Role.where(:name => 'dietitian').first.id
    @admin_role_id = Role.where(:name => 'admin').first.id
    
    puts "Creating Patients"
    User.populate 10 do |user|

        user.username = Faker::Name.name
        user.first_name = Populator.words(1).titleize
        user.middle_name = Populator.words(1).titleize
        user.last_name = Populator.words(1).titleize
        #user.designation = Populator.words(1..3).titleize
        user.role_id = @patient_role_id
        user.gender = ['Male', 'Female']
        user.approved = [true, false]
        user.location = ['Delhi','Mumbai', 'Jaipur', 'Chennai']
        user.agreement = [true, false]
        user.height = 140..190
        user.weight = 20..150
        user.health_insurance = 200000..1000000
        user.uid_number = 3400000..1000900
        user.sign_in_count = 3
        user.address = Populator.words(1..6).titleize
        user.dob = 60.years.ago..22.years.ago
        user.doj = 5.years.ago..Time.now
        user.email = Faker::Internet.email
        user.encrypted_password = "12345678"
        

    end
    
        puts "10 patients Added"
        puts "Creating Dietitians"
    
    #user_ids = User.pluck(:id)

    User.populate 10 do |user|

        user.username = Faker::Name.name
        user.first_name = Populator.words(1).titleize
        user.middle_name = Populator.words(1).titleize
        user.last_name = Populator.words(1).titleize
        #user.designation = Populator.words(1..3).titleize
        user.approved = [true, false]
        user.role_id = @dietitian_role_id
        user.gender = ['Male', 'Female']
        user.location = ['Delhi','Mumbai', 'Jaipur', 'Chennai']
        user.agreement = [true, false]
        user.height = 140..190
        user.weight = 20..150
        user.health_insurance = 200000..1000000
        user.uid_number = 3400000..1000900
        user.sign_in_count = 3
        user.address = Populator.words(1..6).titleize
        user.dob = 60.years.ago..22.years.ago
        user.doj = 5.years.ago..Time.now
        user.email = Faker::Internet.email
        user.encrypted_password = "12345678"
        

    
    end
    puts "10 dietitian Added"
    puts "Creating Admins"
    
    #user_ids = User.pluck(:id)

    User.populate 10 do |user|

        user.username = Faker::Name.name
        user.first_name = Populator.words(1).titleize
        user.middle_name = Populator.words(1).titleize
        user.last_name = Populator.words(1).titleize
        #user.designation = Populator.words(1..3).titleize
        user.role_id = @admin_role_id
        user.gender = ['Male', 'Female']
        user.location = ['Delhi','Mumbai', 'Jaipur', 'Chennai']
        user.agreement = [true, false]
        user.height = 140..190
        user.weight = 20..150
        user.health_insurance = 200000..1000000
        user.uid_number = 3400000..1000900
        user.sign_in_count = 3
        user.address = Populator.words(1..6).titleize
        user.dob = 60.years.ago..22.years.ago
        user.doj = 5.years.ago..Time.now
        user.email = Faker::Internet.email
        user.encrypted_password = "12345678"
        
    
    end
   puts "10 Admin Added"
    end
end