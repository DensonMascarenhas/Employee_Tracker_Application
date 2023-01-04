# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

MasterEmployeeRole.destroy_all
Division.destroy_all
Employee.destroy_all

MasterEmployeeRole.create!([
    {
        name:"HR Manager"
    },
    {
        name:"Project Manager"
    },
    {
        name:"Employee"
    }
])

Division.create!(
    name: "HR"
)


Employee.create!(
    email: 'examplehr@gmail.com',
    password: '123456789',
    name: 'Denson Mascarenhas',
    username: 'dmascare',
    designation:'Senior HR Manager',
    master_employee_role_id:1,
    division_id: 1

)



p "#{Employee.count} Employee(s) created successfully..."