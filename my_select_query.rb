require 'csv'

class MySelectQuery
    def initialize(content)
        @data = CSV.parse(File.read(content).strip, headers: true)
        # @data = CSV.parse(content.strip, headers: true)
    end

    def where(column, criteria)
        result = []
        @data.each do |row|

            if (row[column] == criteria)
                result << row.to_s.chomp
            end
        end
        result
    end
end

def _main()
    instance = MySelectQuery.new("nba_player_data.csv")
    puts instance.where("name", "Matt Zunic")
end

_main()
