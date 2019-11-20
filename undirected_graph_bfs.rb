x = {
    id: 1,
    children:[
        {
            id: 2,
            children: [
                { id: 1}, {id: 3}, {id: 5, children: [{id: 2}, {id: 4}]}
            ]
        },
        {
            id: 3,
            children: [
                {id:1}, {id:2}, {id:4, children: [{id: 5}, {id: 3}]}
            ]
        }
    ]
}

stack = []
visited = {}
root_id = x[:id]
p root_id
visited[root_id] = true
x[:children].each do |node|
  stack << node
end


while stack.length != 0 do
  current_node = stack.pop
  if visited[current_node[:id]]
    next
  end
  current_node_id = current_node[:id]
  p current_node[:id]
  visited[current_node_id] = true

  if current_node[:children]
    current_node[:children].each do |ele|
      id = ele[:id]
      unless visited[id]
        stack << ele
      end

    end
  end
end