class EmWebsiteController < ApplicationController
  protect_from_forgery :except => :add_email

  def index
  end

  def how_it_works
  end

  def pricing
  end

  def add_email
    if Person.email_create(params['person']['address'])
      flash[:notice] = "Thank you for signing up!"

    else
      flash[:alert] = "This email address has already been sign up."
    end
  end
end
