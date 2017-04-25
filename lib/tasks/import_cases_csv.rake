require 'csv'

namespace :import_cases_csv do
  task :create_cases => :environment do
    csv_text = File.read('./app/assets/data/trial-and-terror.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Case.create!(row.to_hash)
    end
  end
end