function getPath(object) {
    let traversalTrack = [];
    function iter(o, p)  {
        let array = [];
        if (o.children) {
            o.children.forEach(function (k) {
                array = p.concat(k);
                if(k.id === 13){
                    traversalTrack = array
                }
                iter(k, array);
            });
        }
        result.push(p);
        return traversalTrack
    }

    let result = [];
    return iter(object, [1]);

}


var x =  {
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

console.log(getPath(x));

