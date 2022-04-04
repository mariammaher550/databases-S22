
CREATE TABLE books(
    book VARCHAR(50) PRIMARY KEY,
    publisher varchar(50)
);
CREATE TABLE schoolEmployees (
    teacher VARCHAR(30) PRIMARY KEY,
    school VARCHAR(30)
);
create table loan_books(
    teacher VARCHAR(30),
    book VARCHAR(50),
    course VARCHAR(50),
    room VARCHAR(10),
    grade VARCHAR(20),
    date datetime,
    foreign key(book) REFERENCES books(book),
    foreign key(teacher) REFERENCES schoolEmployees(teacher)
);

INSERT INTO schoolEmployees (school, teacher) 
VALUES
    ('Horizon Education Institute', 'Chad Russel'),
    ('Horizon Education Institute', 'E.F.Codd'),
    ('Horizon Education Institute', 'Jones Smith'),
    ('Bright institution', 'Adam Baker');
    
    
INSERT INTO books(book, publisher)
VALUES
    ('Learning and teaching in early childhood', 'BOA Editions'),
    ('Preschool,N56', 'Taylor & Francis Publishing'),
    ('Early Childhood Education N9', 'Prentice Hall'),
    ('Know how to educate: guide for Parents and', 'McGraw Hill');
    
    
INSERT INTO loan_books(teacher,course, room, grade, book, date) 

VALUES    ('Chad Russell', 'Logical thinking', '1.A01', '1st grade',
    'Learning and teaching in early childhood','09-09-2010'),
    
    ('Chad Russell', 'Wrtting', '1.A01', '1st grade', 'Preschool,N56','05-05-2010'),
    
    ('Chad Russell', 'Numerical Thinking', '1.A01', '1st grade', 'Learning and teaching
in early childhood',  '05-05-2010'),

    ('E.F.Codd Spatial', 'Temporal and Causal Thinking' , '1.B01', '1st grade', 'Early Childhood
Education N9', '05-06-2010'),

    ('E.F.Codd', 'Numerical Thinking', '1.B01', '1st grade', 'Learning and teaching
in early childhood', '05-06-2010'),

 ('Jones Smith', 'Wrtting', '1.A01', '2nd grade', 'Learning and teaching
in early childhood', '09-09-2010'),
 
('Jones Smith', 'English', '1.A01', '2nd grade', 'Know how to educate:
guide for Parents and Teachers', '05-05-2010'),

 ('Adam Baker', 'Logical thinking', '2.B01', '1st grade', 'Know how to educate:
guide for Parents and Teachers', '12-18-2010'),

('Adam Baker', 'Numerical Thinking', '2.B01', '1st grade', 'Learning and teaching
in early childhood education', '05-06-2010');



