class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.text :quotes
      t.text :author
      t.string :status

      t.timestamps
    end
  end
end
