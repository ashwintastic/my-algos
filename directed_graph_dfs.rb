x = {
    id: 1,
    children: [
        {
            id: 3,
            children: [
                {
                    id: 2
                },
                {
                    id: 4
                }
            ]
        },
        {
            id: 2,
            children: [
                id: 5
            ]
        }
    ]
}


stack = []
visited = {}
p x[:id]
x[:children].each do |ele|
  stack << ele
end

while stack.length != 0 do
  current_element = stack.pop
  p current_element[:id]
  id = current_element[:id]
  visited[id] = true

  if current_element[:children]
    current_element[:children].each do |e|
      current_id = e[:id]
      unless visited[current_id]
        stack << e
      end
    end
  end
end