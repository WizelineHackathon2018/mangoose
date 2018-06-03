ActiveAdmin.register Profile do
  includes :users, :team

  permit_params :name,
                :team_id,
                :url

  index do
    column :name
    column :team_id
    column :url
    actions
  end

  filter :name

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :name
      f.input :team
    end
    f.actions
  end

end
