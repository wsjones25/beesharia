# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Company.destroy_all
User.destroy_all


user_one = User.create!(email: "ben@gmail.com", password: "123456", borrower: true)
company_one = Company.create!(company_number: "08933368",
                               company_name: "Dias Ltd",
                               risk_score: "Medium Risk",
                               years_credit_history: 5,
                               business_category: "Manufacturing",
                               office_address: "1 Bunfield Row",
                               last_year_ebit: 225000,
                               last_year_interest: 5000,
                               last_year_debt: 170000,
                               last_year_assets: 200000,
                               loan_type: "Working Capital",
                               borrowing_length: 24,
                               use_of_funds_description: "Machinery",
                               required_funds: 100000,
                               days_remaining: 24,
                               loan_rate: 7.22,
                               user: user_one)

user_two = User.create!(email: "owen@gmail.com", password: "123456", borrower: true)
company_one = Company.create!(company_number: "07933368",
                               company_name: "Day Inn Ltd",
                               risk_score: "Low Risk",
                               years_credit_history: 12,
                               business_category: "Agriculture",
                               office_address: "10 Bunfield Row",
                               last_year_ebit: 325000,
                               last_year_interest: 5000,
                               last_year_debt: 17000,
                               last_year_assets: 200000,
                               loan_type: "Working Capital",
                               borrowing_length: 24,
                               use_of_funds_description: "Agricultural Machinery",
                               required_funds: 50000,
                               days_remaining: 24,
                               loan_rate: 7.22,
                               user: user_two)

user_three = User.create!(email: "will@gmail.com", password: "123456", borrower: true)
company_three = Company.create!(company_number: "02933368",
                                 company_name: "Once Only Ltd",
                                 risk_score: "High Risk",
                                 years_credit_history: 1,
                                 business_category: "Construction",
                                 office_address: "12 Bunfield Row",
                                 last_year_ebit: 32500,
                                 last_year_interest: 10000,
                                 last_year_debt: 80000,
                                 last_year_assets: 20000,
                                 loan_type: "Expansion Capital",
                                 borrowing_length: 36,
                                 use_of_funds_description: "Pay Suppliers",
                                 required_funds: 50000,
                                 days_remaining: 12,
                                 loan_rate: 9.22,
                                 user: user_three)

user_four = User.create!(email: "hassan@gmail.com", password: "123456", borrower: true)
company_four = Company.create!(company_number: "01933368",
                               company_name: "Flying Ltd",
                               risk_score: "Low Risk",
                               years_credit_history: 20,
                               business_category: "Wholesale and Retail Trade",
                               office_address: "12 Cavendish Row",
                               last_year_ebit: 322500,
                               last_year_interest: 10000,
                               last_year_debt: 20000,
                               last_year_assets: 200000,
                               loan_type: "Marketing",
                               borrowing_length: 12,
                               use_of_funds_description: "Marketing Campaign",
                               required_funds: 10000,
                               days_remaining: 29,
                               loan_rate: 3.29,
                               user: user_four)

user_one = User.create!(email: "jim@gmail.com", password: "123456", borrower: true)
company_one = Company.create!(company_number: "02333368",
                               company_name: "Dome Ltd",
                               risk_score: "Medium Risk",
                               years_credit_history: 5,
                               business_category: "Manufacturing",
                               office_address: "1 Bunfield Row",
                               last_year_ebit: 225000,
                               last_year_interest: 5000,
                               last_year_debt: 170000,
                               last_year_assets: 200000,
                               loan_type: "Asset Finance/Refinance",
                               borrowing_length: 24,
                               use_of_funds_description: "Machinery",
                               required_funds: 100000,
                               days_remaining: 24,
                               loan_rate: 7.22,
                               user: user_one)

user_two = User.create!(email: "pip@gmail.com", password: "123456", borrower: true)
company_one = Company.create!(company_number: "07993368",
                               company_name: "Monster Ltd",
                               risk_score: "Low Risk",
                               years_credit_history: 12,
                               business_category: "Agriculture",
                               office_address: "10 Bunfield Row",
                               last_year_ebit: 325000,
                               last_year_interest: 5000,
                               last_year_debt: 17000,
                               last_year_assets: 200000,
                               loan_type: "Cash Flow",
                               borrowing_length: 24,
                               use_of_funds_description: "Agricultural Machinery",
                               required_funds: 50000,
                               days_remaining: 24,
                               loan_rate: 7.22,
                               user: user_two)

user_three = User.create!(email: "tyler@gmail.com", password: "123456", borrower: true)
company_three = Company.create!(company_number: "02933368",
                                 company_name: "Once Only Ltd",
                                 risk_score: "High Risk",
                                 years_credit_history: 1,
                                 business_category: "Fashion",
                                 office_address: "12 Bunfield Row",
                                 last_year_ebit: 32500,
                                 last_year_interest: 10000,
                                 last_year_debt: 80000,
                                 last_year_assets: 20000,
                                 loan_type: "Cash Flow",
                                 borrowing_length: 36,
                                 use_of_funds_description: "Pay Suppliers",
                                 required_funds: 50000,
                                 days_remaining: 12,
                                 loan_rate: 9.22,
                                 user: user_three)

user_four = User.create!(email: "boots@gmail.com", password: "123456", borrower: true)
company_four = Company.create!(company_number: "01933368",
                               company_name: "Home Place Ltd",
                               risk_score: "Low Risk",
                               years_credit_history: 20,
                               business_category: "Retail",
                               office_address: "12 Cavendish Row",
                               last_year_ebit: 322500,
                               last_year_interest: 10000,
                               last_year_debt: 20000,
                               last_year_assets: 200000,
                               loan_type: "Marketing",
                               borrowing_length: 12,
                               use_of_funds_description: "Marketing Campaign",
                               required_funds: 10000,
                               days_remaining: 29,
                               loan_rate: 3.29,
                               user: user_four)


user_five = User.create!(email: "hassaninvestor@gmail.com", password: "123456", borrower: false)
user_six = User.create!(email: "willinvestor@gmail.com", password: "123456", borrower: false)
user_seven = User.create!(email: "owen+investor@gmail.com", password: "123456", borrower: false)
