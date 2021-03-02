class AddForeignKey < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key(:jobs, :users, column: "user_id", on_delete: :cascade)
    change_column_null(:jobs, :user_id, false)
  end
end
