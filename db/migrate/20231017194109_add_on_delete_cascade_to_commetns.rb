class AddOnDeleteCascadeToCommetns < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :comments, :articles
    add_foreign_key :comments, :articles, on_delete: :cascade
  end
end
