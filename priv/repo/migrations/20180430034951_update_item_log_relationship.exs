defmodule Spender.Repo.Migrations.UpdateItemLogRelationship do
  use Ecto.Migration

  def change do
    alter table(:wishlist_items) do
      remove :log_section_id
    end

    drop_if_exists index(:wishlist_items, [:log_section_id])
  end
end
