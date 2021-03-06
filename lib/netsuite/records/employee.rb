module NetSuite
  module Records

    class Employee < Support::Base
      include Support::Actions
      include Namespaces::ListEmp

      # https://system.netsuite.com/help/helpcenter/en_US/srbrowser/Browser2014_1/script/record/employee.html

      actions :get, :get_list, :add, :update, :upsert, :upsert_list, :delete, :search

      fields :phone, :first_name, :last_name, :is_inactive, :email

      field :roles_list, RoleList

      attr_reader   :internal_id
    end

  end
end
