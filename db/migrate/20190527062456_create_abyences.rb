class CreateAbyences < ActiveRecord::Migration[5.2]
  def change
    create_table :abyences do |t|
      t.string :policy_client_name
      t.references :policy_renewal, foreign_key: true
      t.references :insurer, foreign_key: true
      t.date :remind_date
      t.text :reminder_message
      t.references :underwriter, foreign_key: true

      t.timestamps
    end
  end
end
