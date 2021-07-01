module StatusSystemBlabla
  class ActivityStatus

    @STATUS_MAP = {
        'new' => NewStatus,
        'active' => ActiveStatus,
        'inactive' => InactiveStatus
    }
    class << self
      def of(a_status_keyword)
        return @STATUS_MAP[a_status_keyword]
      end
    end

    def for(an_object)
      @object = an_object
      return self
    end

  end
end