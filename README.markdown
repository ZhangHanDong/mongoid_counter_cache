##Support:

  **Rails3.0+/Mongoid2.0.2+**

##Usage:

    class Forum
      references_many :topics
      references_many :posts
    end

    class Topic
      referenced_in :forum
      include Mongoid::CounterCache
      counter_cache name: :forum, inverse_of: :posts
    end

