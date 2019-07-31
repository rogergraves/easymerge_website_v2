ActiveAdmin.register Quote do

  permit_params :description, :author_name, :order

  index do
    column :order
    column :author_name
    column :description
    actions
  end

  form do |f|
    f.semantic_errors
    f.inputs "Quote" do
      f.input :order,  :as => :select, :collection => 1..6
      f.input :author_name
      f.input :description
    end
    f.actions
  end

  controller do

    def update
     exist_quote = Quote.find_by_order permitted_params[:quote][:order]
     if exist_quote
       quote =  Quote.find permitted_params[:id]
       this_order = quote.order
       exist_quote.update(order: 0)
       quote.update_attributes(permitted_params[:quote])
       exist_quote.update(order: this_order)
     end
     update!
    end
  end
end
