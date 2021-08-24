class CreateRechargs < ActiveRecord::Migration[6.1]
  def change
    create_table :rechargs do |t|
      t.numeric :amount
      t.references :phone, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
