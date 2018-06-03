ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :slack_user_id
    column :team do |user|
      user.team ?
          (link_to user.team.name, admin_team_path(user.team)) :
          "No team"
    end
    column :profile do |user|
      user.profile ?
          (link_to user.profile.name, admin_profile_path(user.profile)) :
          "No profile"
    end
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :team
  filter :profile

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :email
      f.input :slack_user_id
      f.input :team
      f.input :profile
    end
    f.actions
  end

end
