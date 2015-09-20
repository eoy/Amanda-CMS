# This migration comes from amanda_cms (originally 20150920165127)
class CreateAmandaCmsEntryGroups < ActiveRecord::Migration
  def change
    create_table :amanda_cms_entry_groups do |t|
      t.string :title
      t.timestamps null: false
    end
  end
end
