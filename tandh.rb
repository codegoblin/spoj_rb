# This is my handwritten tortoise and the hare solution to 
# the problem defined here: 
# http://codingfreak.blogspot.com/2012/09/detecting-loop-in-singly-linked-list_22.html

LINK_ERROR = "ERROR: The next node was attempted to be set to a non list object"

module SingleLinkedList
  module ClassMethods
    def contains_loop?(list)
      throw LINK_ERROR unless list.kindOf? SingleLinkedList
      list.contains_loop?
    end
  end

  module InstanceMethods
    def initialize() #nextNode = nil)
      # @next = nextNode
    end
    
    def add(nextNode)
      
    end
    
    def next=(nextNode)
      throw LINK_ERROR unless nextNode.kindOf? SingleLinkedList
      @next = nextNode
    end
  end
  
  def contains_loop?
    
  end

  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end

list = 