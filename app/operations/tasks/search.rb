module Tasks
  class Search
    def execute(page: 1, limit: 25)
      offset = (page - 1) * limit

      Task.limit(limit).offset(offset)
    end
  end
end
