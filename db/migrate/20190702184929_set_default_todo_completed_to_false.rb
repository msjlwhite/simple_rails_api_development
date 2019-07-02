class SetDefaultTodoCompletedToFalse < ActiveRecord::Migration[5.2]
  # The reason we specify a from: value is 
  # so the migration is reversible. If you 
  # ever need to undo a migration, just run
  # rails db:rollback.
  def change
    change_column_default :todos, :complete, from: nil, to: false
  end
end
