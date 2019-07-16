ActiveAdmin.register Person do

  permit_params :email

  form do |f|
    f.semantic_errors
    f.inputs "Person" do
    f.input :email
    end
    f.actions
  end

  before_create do |person|
    person.manually_added = true
  end

  config.per_page = 22
end
