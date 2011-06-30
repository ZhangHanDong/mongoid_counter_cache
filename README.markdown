##Support:

  **Rails3.0+/Mongoid2.0.2+/Ruby1.8/1.9**

##Usage:

    class Forum
      references_many :topics
      references_many :posts

      field :topics_count, :type => Integer, :default => 0
      field :posts_count,  :type => Integer, :default => 0
    end

    class Topic
      referenced_in :forum
      include Mongoid::CounterCache
      counter_cache :name => :forum, :inverse_of => posts
    end



