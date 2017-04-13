class HomeController < ApplicationController
  def index
    
    
  end

  def list
    @lotto_num=(1..45).to_a.sample(6).sort
    
    new_lotto = Lotto.new
    new_lotto.num1 = @lotto_num[0]
    new_lotto.num2 = @lotto_num[1]
    new_lotto.num3 = @lotto_num[2]
    new_lotto.num4 = @lotto_num[3]
    new_lotto.num5 = @lotto_num[4]
    new_lotto.num6 = @lotto_num[5]
    new_lotto.save
    
    @every_lotto = Lotto.all.order("id desc")
    
    
    @tag1 = "#{@lotto_num[0]}.jpg"
    @tag2 = "#{@lotto_num[1]}.jpg"
    @tag3 = "#{@lotto_num[2]}.jpg"
    @tag4 = "#{@lotto_num[3]}.jpg"
    @tag5 = "#{@lotto_num[4]}.jpg"
    @tag6 = "#{@lotto_num[5]}.jpg"
    
    
  end
end
