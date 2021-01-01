class CreateSnapshots < ActiveRecord::Migration[6.1]
  def change
    create_table :snapshots do |t|
      t.string :snapshot_id

      t.timestamps
    end
  end
end
