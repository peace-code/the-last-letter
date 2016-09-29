class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.references :comment, null: false, index: true
      t.string :token, null: false, index: true
    end

    add_index :reports, [:comment_id, :token], unique: true
    add_column :comments, :reports_count, :integer, default: 0
  end
end
