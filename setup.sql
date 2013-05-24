CREATE TABLE Route
(
route_id INTEGER PRIMARY KEY AUTOINCREMENT,
Name varchar(50) NOT NULL
);
CREATE TABLE Stop
(
stop_id INTEGER PRIMARY KEY AUTOINCREMENT,
Name varchar(50) NOT NULL,
route_id int,
Is_Used BOOLEAN NOT NULL,
FOREIGN KEY(route_id) REFERENCES Route(route_id)
);
CREATE TABLE Courier
(
courier_id INTEGER PRIMARY KEY AUTOINCREMENT,
Name varchar(50) NOT NULL,
Is_used BOOLEAN NOT NULL
);
CREATE TABLE Package
(
package_id INTEGER PRIMARY KEY AUTOINCREMENT,
Tracking_Number varchar(50) NOT NULL,
Date DATE NOT NULL,
ASU_Email varchar(50) NOT NULL,
First_Name varchar(50) NOT NULL,
Last_Name varchar(50) NOT NULL,
Box_Number varchar(50) NOT NULL,
At_Stop BOOLEAN NOT NULL,
Picked_Up BOOLEAN NOT NULL,
Pick_Up_Date DATE,
Processed_By varchar(50) NOT NULL,
stop_id int,
courier_id int,
FOREIGN KEY(stop_id) REFERENCES Stop(stop_id),
FOREIGN KEY(courier_id) REFERENCES Courier(courier_id)
);

insert into Route(Name) values('unassigned');
insert into Stop(Name, Is_Used, route_id) values('unassigned', 1, 1);

insert into Courier(Name, Is_Used) values('Unknown', 1);
insert into Courier(Name, Is_Used) values('Bill Clarke Truck Lines', 1);
insert into Courier(Name, Is_Used) values('CWX Con-Way Western', 1);
insert into Courier(Name, Is_Used) values('DHL', 1);
insert into Courier(Name, Is_Used) values('FedEx Express', 1);
insert into Courier(Name, Is_Used) values('FedEx Freight', 1);
insert into Courier(Name, Is_Used) values('FedEx Ground', 1);
insert into Courier(Name, Is_Used) values('Gobins', 1);
insert into Courier(Name, Is_Used) values('UPS', 1);
insert into Courier(Name, Is_Used) values('USPS Mail', 1);
insert into Courier(Name, Is_Used) values('XPEDX', 1);

select * from Stop;
select * from Route;