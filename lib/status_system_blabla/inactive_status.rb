module StatusSystemBlabla
  class InactiveStatus < ActivityStatus

    def activate
      @object.update({status: 'active'}) 
    end

    def is_active?
      false
    end

  end
end