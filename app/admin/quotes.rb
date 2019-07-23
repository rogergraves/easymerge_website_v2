ActiveAdmin.register Quote do

  permit_params :description, :author_name, :order

  before_create do |quote|
    quote.id = quote.order
  end

end
