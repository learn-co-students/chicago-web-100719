class AddSorcererIdToCats < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :sorcerer_id, :integer
  end
end
