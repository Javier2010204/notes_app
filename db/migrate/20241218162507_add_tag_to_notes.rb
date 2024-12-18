class AddTagToNotes < ActiveRecord::Migration[8.0]
  def change
    add_column :notes, :tag, :string
  end
end
