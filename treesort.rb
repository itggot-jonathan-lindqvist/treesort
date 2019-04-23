class Sorter
  def execute(a)
    root = a[0]
    a.delete_at(0)
    sorted = []
    bst = [ [], root, [] ]
    a.each do |num|
      index = 0
      if num < root
        node = num
        deeper = bst[0]

        index.times do 
          deeper = deeper[0]
        end

        if deeper[1].nil?
          bst[0][0] = []
          bst[0][1] = num
          bst[0][2] = []
        else
          index += 1
        end

      else
        go right
      end
      
    end
  end
end

qwerty = Sorter.new
qwerty.execute([6,5,3,8,2,7,9,1])
