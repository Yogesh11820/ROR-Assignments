class AddDefaultToStatusInComments < ActiveRecord::Migration[6.1]
  def change
    change_column_default :comments, :status, from: nil, to: 'public'
  end
end
