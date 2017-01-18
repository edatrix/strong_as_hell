class UpdateUrlType < ActiveRecord::Migration
  def change
    change_column :inspirations, :url, :text
  end
end
