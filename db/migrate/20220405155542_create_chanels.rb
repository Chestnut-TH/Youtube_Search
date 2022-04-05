class CreateChanels < ActiveRecord::Migration[6.1]
  def change
    create_table :chanels do |t|
      t.string :name
      t.string :url
      t.string :detail
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.string :tag4
      t.string :tag5
      t.integer :assessment

      t.timestamps
    end
  end
end
