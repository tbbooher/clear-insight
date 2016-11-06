class CreateMoodysEstimates < ActiveRecord::Migration
  def change
    create_table :moodys_estimates do |t|
      t.integer :year
      t.integer :impact
      t.float :sp_index
      t.integer :category

      t.timestamps null: false
    end
  end
end
