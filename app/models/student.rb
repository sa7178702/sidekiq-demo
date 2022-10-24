class Student < ApplicationRecord
	require 'csv'
	
	def self.to_csv
    attributes = %w{id name email password address}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.find_each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end

end
