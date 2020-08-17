ActiveAdmin.register Store do
  permit_params :store_name, :store_explanation

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :store_name, :store_explanation
  #
  # or
  #
  # permit_params do
  #   permitted = [:store_name, :store_explanation]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :store_name
      f.input :store_explanation
      f.input :open_status, as: :select, collection:Store.open_statuses_i18n.invert
    end
    f.actions
  end

end
