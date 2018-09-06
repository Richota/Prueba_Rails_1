class ChangeToDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :todos, :completed, false
  end
end
