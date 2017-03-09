class CreateUserEventMatches < ActiveRecord::Migration
  def change
    create_table :user_event_matches do |t|
      t.references :user, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
