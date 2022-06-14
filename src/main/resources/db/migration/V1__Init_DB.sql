 create table hibernate_sequence (next_val bigint) engine=InnoDB;
 insert into hibernate_sequence values ( 1 );
 insert into hibernate_sequence values ( 1 );
 insert into hibernate_sequence values ( 1 );
 insert into hibernate_sequence values ( 1 );
 insert into hibernate_sequence values ( 1 );
 insert into hibernate_sequence values ( 1 );
 insert into hibernate_sequence values ( 1 );
 insert into hibernate_sequence values ( 1 );

 create table calculations (
    id bigint not null,
    current_period bigint,
    expenses bigint,
    previous_period bigint,
    view_date datetime(6),
    id_user bigint,
    price_id bigint,
    primary key (id))
    engine=InnoDB;

 create table chat (
    id bigint not null,
    date_post datetime(6),
    messages varchar(1000),
    id_request bigint,
    id_user bigint,
    primary key (id))
    engine=InnoDB;

 create table data_user (
    id bigint not null,
    address varchar(255),
    area varchar(255),
    date_registration datetime(6),
    email varchar(255),
    firstname varchar(255),
    home varchar(255),
    homephone varchar(255),
    lastname varchar(255),
    middlename varchar(255),
    workphone varchar(255),
    account bigint,
    primary key (id)) engine=InnoDB;

 create table message (
    id bigint not null,
    active bit,
    id_user bigint,
    message varchar(2000),
    shipment datetime(6),
    topic varchar(255),
    primary key (id)) engine=InnoDB;

 create table news (
    id bigint not null,
    date_create datetime(6),
    img varchar(255),
    messages varchar(2000),
    topic varchar(255),
    id_user_id bigint,
    primary key (id))
    engine=InnoDB;

 create table request (
    id bigint not null,
    active bit not null,
    date_create datetime(6),
    topic varchar(255),
    id_user bigint not null,
    primary key (id)) engine=InnoDB;

 create table service_price (
    id bigint not null,
    date datetime(6),
    price_services double precision,
     primary key (id)) engine=InnoDB;

 create table user (
    id bigint not null,
    account_user varchar(8),
    active bit not null,
    password varchar(8),
    username varchar(8),
    primary key (id)) engine=InnoDB;

 create table user_role (
    id bigint not null,
    roles varchar(255)) engine=InnoDB;

 alter table calculations add constraint FKb2ri4xk7vanftfhw3c8uice2x foreign key (id_user) references user (id);
 alter table calculations add constraint FKp52btqy7ve2f9vnoqy2yphi9y foreign key (price_id) references service_price (id);
 alter table chat add constraint FK4qnmlu27tiw5m9wt44el1jl5s foreign key (id_request) references request (id);
 alter table chat add constraint FKsemlk7yyao0wla1w2r9vqio2f foreign key (id_user) references user (id);
 alter table data_user add constraint FK9u4xvo83odownttqoqsorb63l foreign key (account) references user (id);
 alter table message add constraint FKd6lgn9p2o3ehutv8ka9f70mg9 foreign key (id_user) references user (id);
 alter table news add constraint FK4aj0qq7rxirmhmxbkp66jc09w foreign key (id_user_id) references user (id);
 alter table request add constraint FKb171lfh5kicryuny5rvcl5c1i foreign key (id_user) references user (id);
 alter table user_role add constraint FK2oqpqfi5ut3xylw61wqhl5ggo foreign key (id) references user (id);