ActiveAdmin.register Team do

  after_save do |team|

    if team.profiles.count > 0
      puts "holis tengo #{team.profiles.count} profiles"
    else


      team.profiles.create(Profile)
      puts "holis no tengo profiles"
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
