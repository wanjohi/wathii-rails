class CreateInterest < ActiveRecord::Migration[5.2]
    def change
        create_table :interests do |t|
            t.belongs_to :user
            t.string :keyword
            t.boolean :active
            t.point :location

            t.timestamps
        end
    end
end