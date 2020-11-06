class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alpha_sort
    @customers = Customer.sort_aplha
  end
end
