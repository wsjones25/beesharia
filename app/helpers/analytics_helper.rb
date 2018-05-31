module AnalyticsHelper
  def balance
    topups = current_user.topups.map(&:amount).sum
    investments = current_user.investments.map(&:credit_amount).sum
    @balance = topups - investments
  end

  def total_invested
    investments = current_user.investments.map(&:credit_amount).sum
  end

  def avg_expected_return
    investments = current_user.investments.map(&:credit_amount).sum
    arr = []
    current_user.investments.each do |investment|
      arr << investment.credit_amount * Company.find(investment.company_id).loan_rate
    end
    total_return = arr.reduce(0) {|sum, num| sum + num }
    portfolio_return = (total_return/investments)/100
  end

end
