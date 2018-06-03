ActiveAdmin.register Team do

  before_save do |admin_user|

    if admin_user.role.empty?
      admin_user.role = 'agency'
    end
  end

  includes :users, :profiles

  permit_params :name, :slack_team_id

  index do
    column :name
    column :slack_team_id
    actions
  end

  filter :name
  filter :users
  filter :profiles

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :name
      f.input :slack_team_id
    end
    f.actions
  end
end
