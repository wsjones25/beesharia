module AnalyticsHelper
  def balance
    topups = current_user.topups.map(&:amount).sum.to_i
    investments = current_user.investments.map(&:credit_amount).sum
    balance = topups - investments
  end

  def total_invested
    investments = current_user.investments.map(&:credit_amount).sum
  end

  def avg_expected_return
    total_investments = current_user.investments.map(&:credit_amount).sum
    arr = []
    if total_investments == 0
      return 0
    else
      current_user.investments.each do |investment|
        arr << investment.credit_amount.to_f / total_investments.to_f * investment.company.loan_rate.to_f
      end
      return arr.sum.round(2)
    end

  end
end

    # arr = []
    # current_user.investments.each do |investment|
    #   arr << investment.credit_amount * Company.find(investment.company_id).loan_rate
    # end
    # total_return = arr.reduce(0) {|sum, num| sum + num }
    # if investments == 0
    #   portfolio_return = 0
    # else
    #   portfolio_return = ( total_return / investments ) *100
    # end



  # def avg_expected_return
  #   investments = current_user.investments.map(&:credit_amount).sum
  #   arr = []
  #   current_user.investments.each do |investment|
  #     arr << investment.credit_amount * Company.find(investment.company_id).loan_rate
  #   end
  #   total_return = arr.reduce(0) {|sum, num| sum + num }
  #   portfolio_return = (total_return/investments)/100
  # end


