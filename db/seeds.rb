# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Company.destroy_all
Topup.destroy_all
User.destroy_all
Investment.destroy_all
puts "destroyed all data"


user_one = User.create!(email: "ben@gmail.com", password: "123456", borrower: true)
company_one = Company.create!(company_number: "08933368",
                               company_name: "Manufacturing Company Ltd",
                               risk_score: "Low Risk",
                               years_credit_history: 8,
                               business_category: "Manufacturing",
                               office_address: "1 Bunfield Row",
                               last_year_ebit: 600000,
                               last_year_interest: 100000,
                               last_year_debt: 2000000,
                               last_year_assets: 4000000,
                               loan_type: "Working Capital",
                               borrowing_length: 24,
                               use_of_funds_description: "Machinery",
                               required_funds: 300000,
                               days_remaining: 24,
                               loan_rate: 1.84,
                               user: user_one)
company_one.remote_doc_accounts_url = "http://d2vlcm61l7u1fs.cloudfront.net/media%2F340%2F340d020a-829c-41f7-a447-75063212de2a%2FphpXcJFAg.png"
company_one.save

user_two = User.create!(email: "owen@gmail.com", password: "123456", borrower: true)
company_two = Company.create!(company_number: "07933368",
                               company_name: "Construction Company Ltd",
                               risk_score: "Medium Risk",
                               years_credit_history: 5,
                               business_category: "Construction",
                               office_address: "10 Bunfield Row",
                               last_year_ebit: 300000,
                               last_year_interest: 270000,
                               last_year_debt: 2000000,
                               last_year_assets: 3000000,
                               loan_type: "Expansion Capital",
                               borrowing_length: 36,
                               use_of_funds_description: "To grow projects portfolio",
                               required_funds: 800000,
                               days_remaining: 26,
                               loan_rate: 2.57,
                               user: user_two)

user_three = User.create!(email: "will@gmail.com", password: "123456", borrower: true)
company_three = Company.create!(company_number: "02933368",
                                 company_name: "Agriculture Company Ltd",
                                 risk_score: "High Risk",
                                 years_credit_history: 1,
                                 business_category: "Agriculture",
                                 office_address: "12 Bunfield Row",
                                 last_year_ebit: 200000,
                                 last_year_interest: 2000000,
                                 last_year_debt: 2000000,
                                 last_year_assets: 2200000,
                                 loan_type: "Asset Finance/Refinance",
                                 borrowing_length: 12,
                                 use_of_funds_description: "To purchase machinery",
                                 required_funds: 500000,
                                 days_remaining: 12,
                                 loan_rate: 15.25,
                                 user: user_three)

user_four = User.create!(email: "hassan@gmail.com", password: "123456", borrower: true)
company_four = Company.create!(company_number: "01933368",
                               company_name: "Finance Company Ltd",
                               risk_score: "Low Risk",
                               years_credit_history: 7,
                               business_category: "Financial and Business Services",
                               office_address: "12 Cavendish Row",
                               last_year_ebit: 1000000,
                               last_year_interest: 200000,
                               last_year_debt: 2000000,
                               last_year_assets: 5000000,
                               loan_type: "Expansion Capital",
                               borrowing_length: 24,
                               use_of_funds_description: "Marketing Campaign",
                               required_funds: 400000,
                               days_remaining: 29,
                               loan_rate: 1.84,
                               user: user_four)

user_five = User.create!(email: "jim@gmail.com", password: "123456", borrower: true)
company_five = Company.create!(company_number: "02333368",
                               company_name: "Healthcare Company Ltd",
                               risk_score: "High Risk",
                               years_credit_history: 2,
                               business_category: "Education and Healthcare",
                               office_address: "1 Bunfield Row",
                               last_year_ebit: 400000,
                               last_year_interest: 2000000,
                               last_year_debt: 2000000,
                               last_year_assets: 2300000,
                               loan_type: "Expansion Capital",
                               borrowing_length: 24,
                               use_of_funds_description: "Purchase of MRI machines",
                               required_funds: 500000,
                               days_remaining: 20,
                               loan_rate: 11.93,
                               user: user_five)

user_six = User.create!(email: "pip@gmail.com", password: "123456", borrower: true)
company_six = Company.create!(company_number: "07993368",
                               company_name: "Restaurant Company Ltd",
                               risk_score: "Medium Risk",
                               years_credit_history: 6,
                               business_category: "Hotels & Restaurants",
                               office_address: "10 Bunfield Row",
                               last_year_ebit: 700000,
                               last_year_interest: 875000,
                               last_year_debt: 2000000,
                               last_year_assets: 3000000,
                               loan_type: "Working Capital",
                               borrowing_length: 24,
                               use_of_funds_description: "Inventory purchases",
                               required_funds: 600000,
                               days_remaining: 19,
                               loan_rate: 3.28,
                               user: user_six)

user_seven = User.create!(email: "tyler@gmail.com", password: "123456", borrower: true)
company_seven = Company.create!(company_number: "02933368",
                                 company_name: "Real Estate Company Ltd",
                                 risk_score: "High Risk",
                                 years_credit_history: 3,
                                 business_category: "Real Estate and Renting",
                                 office_address: "12 Bunfield Row",
                                 last_year_ebit: 300000,
                                 last_year_interest: 1034400,
                                 last_year_debt: 2500000,
                                 last_year_assets: 2900000,
                                 loan_type: "Asset Finance/Refinance",
                                 borrowing_length: 36,
                                 use_of_funds_description: "Pay Suppliers",
                                 required_funds: 500000,
                                 days_remaining: 10,
                                 loan_rate: 9.94,
                                 user: user_seven)

user_eight = User.create!(email: "sandrine@gmail.com", password: "123456", borrower: true)
company_eight = Company.create!(company_number: "01933368",
                               company_name: "Tourism Company Ltd",
                               risk_score: "Low Risk",
                               years_credit_history: 9,
                               business_category: "Tourism",
                               office_address: "12 Cavendish Row",
                               last_year_ebit: 1000000,
                               last_year_interest: 500000,
                               last_year_debt: 2000000,
                               last_year_assets: 5000000,
                               loan_type: "Expansion Capital",
                               borrowing_length: 24,
                               use_of_funds_description: "Digital Marketing Campaign targetting travel agencies",
                               required_funds: 400000,
                               days_remaining: 29,
                               loan_rate: 2.29,
                               user: user_eight)

user_nine = User.create!(email: "boots@gmail.com", password: "123456", borrower: true)
company_nine = Company.create!(company_number: "04935360",
                               company_name: "Transport Company Ltd",
                               risk_score: "Medium Risk",
                               years_credit_history: 6,
                               business_category: "Transport Storage and Communication",
                               office_address: "17 Cavendish Row",
                               last_year_ebit: 1500000,
                               last_year_interest: 2500000,
                               last_year_debt: 2000000,
                               last_year_assets: 3000000,
                               loan_type: "Asset Finance/Refinance",
                               borrowing_length: 24,
                               use_of_funds_description: "Purchasing a 18 wheeler truck",
                               required_funds: 500000,
                               days_remaining: 6,
                               loan_rate: 4.28,
                               user: user_nine)
user_ten = User.create!(email: "arthur@gmail.com", password: "123456", borrower: true)
company_ten = Company.create!(company_number: "01934378",
                               company_name: "Retail Company Ltd",
                               risk_score: "Medium Risk",
                               years_credit_history: 4,
                               business_category: "Wholesale and Retail Trade",
                               office_address: "19 Cavendish Row",
                               last_year_ebit: 950000,
                               last_year_interest: 2375000,
                               last_year_debt: 4000000,
                               last_year_assets: 5500000,
                               loan_type: "Working Capital",
                               borrowing_length: 36,
                               use_of_funds_description: "Purchase of raw material supply",
                               required_funds: 800000,
                               days_remaining: 29,
                               loan_rate: 5.67,
                               user: user_ten)

user_eleven = User.create!(email: "lana@gmail.com", password: "123456", borrower: true)
company_eleven = Company.create!(company_number: "08233368",
                               company_name: "Manufacturing Company Ltd 2",
                               risk_score: "Medium Risk",
                               years_credit_history: 5,
                               business_category: "Manufacturing",
                               office_address: "25 Bunfield Row",
                               last_year_ebit: 950000,
                               last_year_interest: 2375000,
                               last_year_debt: 4000000,
                               last_year_assets: 5500000,
                               loan_type: "Expansion Capital",
                               borrowing_length: 36,
                               use_of_funds_description: "To grow projects portfolio",
                               required_funds: 800000,
                               days_remaining: 26,
                               loan_rate: 5.67,
                               user: user_eleven)
user_twelve = User.create!(email: "yas@gmail.com", password: "123456", borrower: true)
company_twelve = Company.create!(company_number: "05923368",
                                 company_name: "Manufacturing Company Ltd 3",
                                 risk_score: "High Risk",
                                 years_credit_history: 3,
                                 business_category: "Manufacturing",
                                 office_address: "30 Bunfield Row",
                                 last_year_ebit: 300000,
                                 last_year_interest: 1034400,
                                 last_year_debt: 2500000,
                                 last_year_assets: 2900000,
                                 loan_type: "Asset Finance/Refinance",
                                 borrowing_length: 36,
                                 use_of_funds_description: "Pay Suppliers",
                                 required_funds: 500000,
                                 days_remaining: 10,
                                 loan_rate: 9.94,
                                 user: user_twelve)

user_thirteen = User.create!(email: "hassaninvest@gmail.com", password: "123456", borrower: false)
user_fourteen = User.create!(email: "willinvest@gmail.com", password: "123456", borrower: false)
user_fifteen = User.create!(email: "oweninvest@gmail.com", password: "123456", borrower: false)

Investment.create(credit_amount: 30000, user: user_thirteen, company: company_one)
Investment.create(credit_amount: 50000, user: user_thirteen, company: company_two)
Investment.create(credit_amount: 40000, user: user_thirteen, company: company_three)
Investment.create(credit_amount: 20000, user: user_thirteen, company: company_four)
Investment.create(credit_amount: 50000, user: user_thirteen, company: company_five)
Investment.create(credit_amount: 40000, user: user_thirteen, company: company_six)
Investment.create(credit_amount: 35000, user: user_thirteen, company: company_seven)
Investment.create(credit_amount: 5000, user: user_thirteen, company: company_eight)
Investment.create(credit_amount: 40000, user: user_thirteen, company: company_nine)
Investment.create(credit_amount: 60000, user: user_thirteen, company: company_ten)
Investment.create(credit_amount: 60000, user: user_thirteen, company: company_eleven)
Investment.create(credit_amount: 60000, user: user_thirteen, company: company_twelve)


Investment.create(credit_amount: 40000, user: user_fourteen, company: company_one)
Investment.create(credit_amount: 40000, user: user_fourteen, company: company_two)
Investment.create(credit_amount: 40000, user: user_fourteen, company: company_three)
Investment.create(credit_amount: 40000, user: user_fourteen, company: company_four)
Investment.create(credit_amount: 40000, user: user_fourteen, company: company_five)
Investment.create(credit_amount: 40000, user: user_fourteen, company: company_six)
Investment.create(credit_amount: 40000, user: user_fourteen, company: company_seven)
Investment.create(credit_amount: 40000, user: user_fourteen, company: company_eight)
Investment.create(credit_amount: 40000, user: user_fourteen, company: company_nine)
Investment.create(credit_amount: 40000, user: user_fourteen, company: company_ten)
Investment.create(credit_amount: 40000, user: user_fourteen, company: company_eleven)
Investment.create(credit_amount: 40000, user: user_fourteen, company: company_twelve)



Investment.create(credit_amount: 20000, user: user_fifteen, company: company_one)
Investment.create(credit_amount: 40000, user: user_fifteen, company: company_two)
Investment.create(credit_amount: 50000, user: user_fifteen, company: company_three)
Investment.create(credit_amount: 60000, user: user_fifteen, company: company_four)
Investment.create(credit_amount: 50000, user: user_fifteen, company: company_five)
Investment.create(credit_amount: 40000, user: user_fifteen, company: company_six)
Investment.create(credit_amount: 40000, user: user_fifteen, company: company_seven)
Investment.create(credit_amount: 30000, user: user_fifteen, company: company_eight)
Investment.create(credit_amount: 20000, user: user_fifteen, company: company_nine)
Investment.create(credit_amount: 10000, user: user_fifteen, company: company_ten)
Investment.create(credit_amount: 10000, user: user_fifteen, company: company_eleven)
Investment.create(credit_amount: 10000, user: user_fifteen, company: company_twelve)



Topup.create(amount_cents: 100000000, user: user_thirteen)
Topup.create(amount_cents: 250000000, user: user_fourteen)
Topup.create(amount_cents: 400000000, user: user_fifteen)


puts "finished creating data"
