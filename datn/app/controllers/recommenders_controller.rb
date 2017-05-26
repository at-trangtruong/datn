class RecommendersController < ApplicationController
  include RecommendersHelper

  def index
    all_data
    unless @matrix_train.include?(nil)
      condition = omf*0.75
      temp = omf.dup
      a = 0
      while omf <= temp do
        temp = omf
        u = rand(0...@matrix_user.size)
        i = rand(0...@matrix_item.size)
        eui = @matrix_train[u][i] - (r_ui_test u, i)
        @matrix_user = w_new eui, i
        @matrix_item = h_new eui, u
        a+=1
      end
    end
    update_matrix
    avg_rate
    redirect_to root_path
  end

  private
  def omf
    sum_train(@matrix_train) + @lamda*(get_frobenius(@matrix_user) + get_frobenius(@matrix_item))
  end
end
