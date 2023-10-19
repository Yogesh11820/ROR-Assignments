class AddDefaultToStatusInArticles < ActiveRecord::Migration[6.1]
  def change
    change_column_default :articles, :status, from: nil, to: 'public'
  end
end
