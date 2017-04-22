class AddCategoryToPins < ActiveRecord::Migration[5.0]
  def change
    add_reference :pins, :category, foreign_key: true
  end
end
