class CreateComparisons < ActiveRecord::Migration[5.2]
  def change
    create_table :comparisons do |t|
      t.string :lang
      t.string :method
      t.text :url

      t.timestamps
    end
  end
end
