class Whatever
    alias :read_attribute_for_serialization :send

    attr_reader :id, :cokolwiek, :object_id

    def initialize; @cokolwiek = 'nic' end
end