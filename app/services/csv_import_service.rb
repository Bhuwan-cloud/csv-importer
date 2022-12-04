class CsvImportService 
    require 'csv'
    def initialize(file)
        @file = file
        @count = 0
    end 

    def importcsv 
        @count =0 
        CSV.foreach(@file.path, headers: true) do |row|
            Person.create row.to_hash
            @count += 1
        end 
    end 

    def number_imported
        @count
    end 
end 