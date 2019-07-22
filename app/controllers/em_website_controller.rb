class EmWebsiteController < ApplicationController
  protect_from_forgery :except => :add_email

  def index
  end

  def how_it_works
  end

  def pricing
  end

  def add_email
    person =  Person.new(email: params['person']['address'])
    if person.valid?
      person.save
      flash[:notice] = "Thank you for signing up!"
    else
      flash[:alert] = person.errors.first.last
    end
  end
end
