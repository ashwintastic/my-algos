x = {
    id: 1,
    children: [
        {
            id: 3,
            children: [
                {
                    id: 2,
                    children:[{id: 5}]
                },
                {
                    id: 4,
                    children: [{id: 5}]
                },
                {
                    id: 5
                }
            ]
        },
        {
            id: 2,
            children: [
               { id: 5 }
            ]
        }
    ]
}


def print_all_path(graph, arr)
  if graph[:children]
    graph[:children].each do |ele|
      temp = arr.dup << ele[:id]
      print_all_path(ele, temp)
    end
  end
  #if arr[-1] == 4
   p arr
  #end
end

root_id = x[:children][0][:id]
print_all_path(x, [root_id])