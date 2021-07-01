module StatusSystemBlabla
  class ActiveStatus < ActivityStatus

    def deactivate
      @object.update({status: 'inactive'}) 
    end

    def is_active?
      true
    end

  end
end