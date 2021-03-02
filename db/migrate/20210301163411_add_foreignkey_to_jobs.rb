class AddForeignkeyToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column(:jobs, :user_id, :integer, null: true)
    Job.update_all(user_id: User.last.id)
  end
end