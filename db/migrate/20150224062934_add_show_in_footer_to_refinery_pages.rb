class AddShowInFooterToRefineryPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :show_in_footer, :boolean, :default => false 
  end
end
