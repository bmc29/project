ActiveAdmin.register Product do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :description, :price, :stock_quantity, :image, :category_id
  
  #form do |f|
  #    f.inputs do
  #        input :name
  #        input :description
  #        input :price
  #        input :stock_quantity
  #        f.semantic_fields_for :images do |fi|
  #            fi.input :file, :as => :file
  #        end
  #        f.actions
  #    end
  #end
  
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
