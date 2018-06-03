class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  aff_path = Rails.root + 'lib/dictionaries/index.aff'
  base_dic_path = Rails.root + 'lib/dictionaries/base.dic'
  dev_dic_path = Rails.root + 'lib/dictionaries/developer.dic'
  designer_dic_path = Rails.root + 'lib/dictionaries/designer.dic'

  $sp1 = Hunspell.new aff_path.to_s, base_dic_path.to_s
  $sp2 = Hunspell.new aff_path.to_s, designer_dic_path.to_s
  $sp3 = Hunspell.new aff_path.to_s, dev_dic_path.to_s
end
