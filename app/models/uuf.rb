class Uuf < ApplicationRecord

    def self.load_csv_data
        file = File.open('tmp/UF_2019.csv')
        file_data = file.readlines.map(&:chomp)
        mostrar = ""
        file_data.each_with_index do |row, index|
            next if index.zero?
            col = row.split(';').drop(1)
            day = 0
            col.each do |value|
                day += 1
                 Uuf.create(date: "2019-#{day<10 ? "0#{day}": day}-#{index}", value: value.to_f)
            end
        end

    end

end
