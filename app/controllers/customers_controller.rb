class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  
  def missing_email
    @customers_no_email = Customer.where(emailAddress: nil)
  end
  
  def alphabetized
    @customers_orderby_name = Customer.order(fullName: :DESC)
  end
end
