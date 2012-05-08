class CreateSpecialityTranslations < ActiveRecord::Migration
  def up
    Speciality.create_translation_table!({
      name: :string,
      description: :text
    },{
      migrate_data: true
    })
  end

  def down
    Speciality.drop_translation_table! migrate_data: true
  end
end
