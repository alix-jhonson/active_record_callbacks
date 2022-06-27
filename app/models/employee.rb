class Employee < ActiveRecord::Base
belongs_to :company, touch: true
  after_touch do
    puts 'An Employee was touched'
  end
end


@employee = Employee.last
@employee.touch
