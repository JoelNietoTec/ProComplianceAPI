# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#    genders = Gender.create([ {name: 'Femenino', english_name: 'Female'}, {name: 'Masculino', english_name: 'Male'}, {name: 'Otro', english_name: 'Other'} ])
#    participant_types = ParticipantType.create([ {name: 'Individuo', english_name: 'Individual'}, {name: 'Entidad', english_name: 'Entity'} ])
#   table_types = TableType.create([{ name: 'Simple', english_name: 'Single'}, {name: 'Compuesto', english_name: 'Complex'}])
#  task_status = TaskStatus.create([ {name: 'No niciado', english_name: 'To do'}, {name: 'En curso', english_name: 'Doing'}, {name: 'Completado', english_name: 'Done'}])

# matrix_types = MatrixType.create([{name: 'Individuos', english_name: 'Individuals'}, {name: 'Entidades', english_name: 'Entities'}])
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }