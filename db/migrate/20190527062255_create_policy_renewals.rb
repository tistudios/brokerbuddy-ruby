class CreatePolicyRenewals < ActiveRecord::Migration[5.2]
  def change
    create_table :policy_renewals do |t|
      t.string :policy_number
      t.date :date_quotes_recieved
      t.references :loss_runs_required, foreign_key: true
      t.date :renewal_date
      t.references :underwriter, foreign_key: true
      t.references :insurer, foreign_key: true

      t.timestamps
    end
  end
end
