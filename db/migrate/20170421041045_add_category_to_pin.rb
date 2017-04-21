class AddCategoryToPin < ActiveRecord::Migration[5.0]
  def change
    add_column :pins, :category, :string
  end
end
