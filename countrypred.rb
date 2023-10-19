require 'csv'



module Predictions

  def loan_eligibility(countryname)
    
    
  end

  def un_seat_authority(countryname)

  end

  def war_predictions(countryname)
  
  end

end


class WorldInfo
    include Predictions

    # attr_accessor :country

    def initialize(countryname)
      @countriesdata = [  {    "Country": "USA",    "Population": 331000000,    "GDP (in trillions US$)": 25.035,    "States": 50,    "Army Strength": 1430000,    "Development Status": "Developed"  },  {    "Country": "China",    "Population": 1444216107,    "GDP (in trillions US$)": 18.321,    "States": 23,    "Army Strength": 2300000,    "Development Status": "Developing"  },  
      {    "Country": "Japan",    "Population": 126010000,    "GDP (in trillions US$)": 4.301,    "States": 47,    "Army Strength": 247150,    "Development Status": "Developed"  },  {    "Country": "Germany",    "Population": 83190556,    "GDP (in trillions US$)": 4.031,    "States": 16,    "Army Strength": 183000,    "Development Status": "Developed"  },  
      {    "Country": "India",    "Population": 1393409038,    "GDP (in trillions US$)": 3.469,    "States": 28,    "Army Strength": 1391000,    "Development Status": "Developing"  },  {    "Country": "UK",    "Population": 67886004,    "GDP (in trillions US$)": 3.199,    "States": 4,    "Army Strength": 233000,    "Development Status": "Developed"  }, 
      {    "Country": "France",    "Population": 67081000,    "GDP (in trillions US$)": 2.778,    "States": 18,    "Army Strength": 202760,    "Development Status": "Developed"  },  {    "Country": "Canada",    "Population": 38005238,    "GDP (in trillions US$)": 2.2,    "States": 13,    "Army Strength": 95000,    "Development Status": "Developed"  }, 
      {    "Country": "Russia",    "Population": 145912025,    "GDP (in trillions US$)": 2.113,    "States": 85,    "Army Strength": 1013000,    "Development Status": "Developing"  },  {    "Country": "Italy",    "Population": 60317116,    "GDP (in trillions US$)": 1.99,    "States": 20,    "Army Strength": 267500,    "Development Status": "Developed"  }]

    end
    
    def start_predictions
        puts "-------------------------------Welcome to PredictWorld-------------------------------"
        puts "Enter the Country Name : "
        countryname = gets.chomp

        WorldInfo.loan_eligibility(countryname)
        WorldInfo.un_seat_authority(countryname)
        WorldInfo.war_predictions(countryname)
    end

end
    







