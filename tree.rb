class Node
  attr_accessor :left, :right, :val
  def initialize(key)
    @left = nil
    @right = nil
    @val = key
  end
end

def execute
  keys = [25,45,43,28,27.5,5.73,3.75,5.1, -1]
  p keys
  r = Node.new(keys[0]) 
  keys.delete_at(0)
  keys.each do |key|
    insert(r, Node.new(key))
  end
  @sorted = []
  inorder(r)
  p @sorted
end

def insert(root, node)
  if root.nil?
    root = node 
  else
    if root.val < node.val 
      if root.right.nil?
        root.right = node 
      else
        insert(root.right, node) 
      end
    else
      if root.left.nil?
        root.left = node 
      else
        insert(root.left, node) 
      end
    end
  end
end

def inorder(root)
  if root
    inorder(root.left) 
    @sorted << root.val
    inorder(root.right) 
  end
end             


execute()
