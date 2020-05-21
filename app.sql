-- Create a table, `owners`
create table owners (
    id integer primary key,
    name text
);
-- Create a related table, `bicycles`
create table bicycles (
    id integer primary key,
    type text,
    owner_id integer
);
-- Create 3 bicycles and 2 owners
insert into owners (name) values ("Adrian");
insert into owners (name) values ("Barbie");

insert into bicycles (type, owner_id) values("Mountain", 1);
insert into bicycles (type, owner_id) values("Tandem", 1);
insert into bicycles (type, owner_id) values("Cruiser", 2);

-- Update the properties of one of the bicycles
update bicycles set type = "Crosstrek" where type = "Cruiser";
-- List all the bicycles
select * from bicycles;
-- List all the bicycles with their owners
select owners.name, bicycles.type
from owners
inner join bicycles
On owners.id = bicycles.owner_id;
-- Delete one of the bicycles
delete from bicycles where type = "Tandem";

-- select * from bicycles;   <--- to view that the bicycle was deleted.