
CREATE 
    (a:Fighter {name: 'Khabib Nurmagomedov', weight: '155'}),
    (b: Fighter{name: 'Rafael Dos Anjos', weight: '155'}),
    (a)-[:beats]->(b),
    
    (c:Fighter {name: 'Neil Magny', weight:'170' }),
    (b)-[:beats]->(c),

    (d:Fighter {name: 'Jon Jones', weight: '205'}),
    (e: Fighter{name: 'Daniel Cormier', weight: '205'}),
    (d)-[:beats]->(e),

    (f:Fighter {name: 'Michael Bisping', weight: '185'}),
    (g: Fighter{name: 'Matt Hamil', weight: '185'}),
    (f)-[:beats]->(g),

    (h: Fighter{name: 'Brandon Vera', weight: '205'}),
    (d)-[:beats]->(h),

    (i: Fighter{name: 'Frank Mir', weight: '230'}),
    (h)-[:beats]->(i),

    (j: Fighter{name: 'Brock Lesnar', weight: '230'}),
    (i)-[:beats]->(j),

    
    (k: Fighter{name: 'Kelvin Gastelum', weight: '185'}),
    (c)-[:beats]->(k),

    (k)-[:beats]->(f),
    (f)-[:beats]->(g),
    (f)-[:beats]->(k),
    (g)-[:beats]->(d)






    

