module CompanyManager
  class Employee
    def initialize(opts = {})
      @first_name = opts[:first_name].to_s.strip
      @last_name = opts[:last_name].to_s.strip
    end

    attr_accessor :first_name, :last_name
    def full_name
      "#{first_name} #{last_name}"
    end
  end
end
