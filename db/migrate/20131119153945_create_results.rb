class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :Teams
      t.text :Score

      t.timestamps
    end
  end
end
