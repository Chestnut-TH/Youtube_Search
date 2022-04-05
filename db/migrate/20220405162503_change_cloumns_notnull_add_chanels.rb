class ChangeCloumnsNotnullAddChanels < ActiveRecord::Migration[6.1]
  def change
    change_column_null :chanels, :name, false
    change_column_null :chanels, :url, false 
    change_column_null :chanels, :url, false
  end
end
