module CachedModel
  class << self
    @@process_cache = {}

    def find_by_sql(sql, binds = [])
      arel = sanitize_sql(sql)
      cloned_binds = binds.clone
      binded_sql = connection.to_sql(arel, cloned_binds)
      cache_key = "#{cache_key_prefix}/#{binded_sql}"
      @@process_cache.fetch cache_key do
        instance = super(sql, binds)
        @@process_cache[cache_key] = instance
        instance
      end
    end

    def cache_key_prefix
      "cache/#{self.table_name}"
    end
  end
end
