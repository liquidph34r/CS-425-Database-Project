CREATE TABLE DISTRO
    (distro_id      numeric(4,0),
     distro_name    varchar(10),
     city           varchar(15),
     -- Maybe include connections? What else
     primary key (distro_id),
     foreign key(distro_id) REFERENCES packages
     );

CREATE TABLE Packages
    (package_id         varchar(15),
     last_distro_id     numeric(4,0),
     shipping_adress    varchar(15),
     shipping_city      varchar(15),
     shipping_zip       numeric(5,0),
     shipping_country   varchar(15),
     next_distro_id     numeric(4,0),
     out_for_del        boolean,
     status             varchar(15),
     PRIMARY KEY (package_id),
     Foreign key(package_id) REFERENCES trucks, -- THis might get removed. Need to find a way to do trucks
     foreign key(last_distro_id, next_distro_id) REFERENCES distro
     );
     