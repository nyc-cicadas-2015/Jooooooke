require_relative '../spec_helper'

describe "dummy table" do

  it "dummy table in the database" do
    database_connection = ActiveRecord::Base.connection
    expect(database_connection.table_exists? :dummies).to be_truthy, "Expected the database to have a dummies table"
  end


  expected_column_types_and_names = {
    :integer  => ["id"],
    :string   => ["dummy_answer"],
  }

  begin
    actual_columns = ActiveRecord::Base.connection.columns(:dummies)
  rescue
    actual_columns = []
  end

  expected_column_types_and_names.each do |expected_type, expected_column_names|
    expected_column_names.each do |expected_column_name|
      it "has a #{expected_type} column named #{expected_column_name}" do
        match_criteria = -> (actual_column) { actual_column.type == expected_type && actual_column.name == expected_column_name}
        matching_column = actual_columns.find &match_criteria
        expect(matching_column).to be_truthy, "Did not find a #{expected_type} column named #{expected_column_name} in the dummy table"
      end
    end
  end
end
