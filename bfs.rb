 x =  {
    id: 1,
    children: [{
        id: 2,
        children: [{
            id: 5,
            children: [{
                id: 8
            }]
        },
            {
                id: 6
            }
        ]
    },
        {
            id: 3,
            children: [{
                id: 9
            }, {id: 10 }]},
        {
            id: 4, children: [{id: 12, children: [{id: 13}]}, {id:15}]
        }
    ]
};

queue = []

 x[:children].each do |ele|
   queue << ele
 end

 while queue.length != 0 do
   current_element = queue.shift
   p current_element[:id]

   if current_element[:children]
     current_element[:children].each do |e|
       queue << e
     end
   end
 end