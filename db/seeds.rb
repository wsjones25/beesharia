# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.destroy_all
User.destroy_all


user_one = User.create!(email: "gonzalo@gmail.com", password: "123456", company: true)
company_one = CompanyInfo.create!(company_number: 03892091,
                                  company_name: "Dwell Capital Ltd",
                                  director_names: "Will Jones",
                                  risk_score: "Low" ,
                                  years_credit_history: 5,
                                  business_category: "Manufacturing",
                                  office_address: "One Bunhill Row",
                                  last_year_ebit: 200000,
                                  last_year_interest: 20000,
                                  last_year_debt: 120000,
                                  last_year_assets: 300000,
                                  loan_type: "Working Capital",
                                  borrowing_length: 12,
                                  use_of_funds_description: "buy machinery for factory",
                                  required_funds: 150000,
                                  days_remaining: 20,
                                  loan_rate: 4.9,
                                  user_id: user_one.id)

user_two = User.create!(email: "will@gmail.com", password: "123456", company: true)
company_two = CompanyInfo.create!(company_number: 03892091,
                                  company_name: "Well Capital Ltd",
                                  director_names: "Bill Jones",
                                  risk_score: "medium",
                                  years_credit_history: 0,
                                  business_category: "Equipment",
                                  office_address: "Two Bunhill Row",
                                  last_year_ebit: 20000,
                                  last_year_interest: 2000,
                                  last_year_debt: 120000,
                                  last_year_assets: 122000,
                                  loan_type: "Equipment Purchase",
                                  borrowing_length: 36,
                                  use_of_funds_description: "buy machinery for factory",
                                  required_funds: 225000,
                                  days_remaining: 34,
                                  loan_rate: 8.9,
                                  user_id: user_two.id)

user_three = User.create!(email: "hassan@gmail.com", password: "123456", company: true)
company_three = CompanyInfo.create!(company_number: 03892091,
                                  company_name: "Mell Capital Ltd",
                                  director_names: "Tim Jones",
                                  risk_score: "low",
                                  years_credit_history: 10,
                                  business_category: "Agriculture",
                                  office_address: "Five Bunhill Row",
                                  last_year_ebit: 2000000,
                                  last_year_interest: 2000,
                                  last_year_debt: 100000,
                                  last_year_assets: 1220000,
                                  loan_type: "Working Capital",
                                  borrowing_length: 48,
                                  use_of_funds_description: "Working Capital",
                                  required_funds: 225000,
                                  days_remaining: 9,
                                  loan_rate: 3.9,
                                  user_id: user_three.id)


user_four = User.create!(email: "owen@gmail.com", password: "123456", company: false)
user_five = User.create!(email: "david@gmail.com", password: "123456", company: false)
user_four = User.create!(email: "marianne@gmail.com", password: "123456", company: false)
