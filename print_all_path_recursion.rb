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


def print_all_path(graph, arr, start_point = 1, end_point)
  if graph[:children]
    graph[:children].each do |ele|
      temp = arr.dup << ele[:id]
      print_all_path(ele, temp, start_point, end_point)
    end
  end
  start_index = arr.find_index(start_point)
  end_index = arr.find_index(end_point)

  if(start_index &&  end_index) && (start_index < end_index)
    p arr.slice(start_index..end_index)
  end
end

root_id = x[:id]
print_all_path(x, [root_id], 2, 5)