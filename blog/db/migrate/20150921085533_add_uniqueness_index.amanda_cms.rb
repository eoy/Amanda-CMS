# This migration comes from amanda_cms (originally 20150921085338)
class AddUniquenessIndex < ActiveRecord::Migration
  def change
    add_index :amanda_cms_repeaters, [:entry_id, :source_entry_id], unique: true
  end
end
