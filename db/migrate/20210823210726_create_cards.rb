class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.numeric :number
      t.string :name
      t.numeric :code
      t.string :date

      t.timestamps
    end
  end
end
