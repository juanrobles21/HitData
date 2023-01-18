CREATE TABLE stractums(
    id_stractum serial not null,
    name_stractum varchar(50) not null,
    constraint PK_STRACTUM primary key (id_stractum)
);

ALTER TABLE
    stractums onwer to root;

CREATE TABLE sisbens(
    id_sisben serial nor null,
    name_sisben varchar(50) not null,
    constraint PK_SISBENS primary key (id_sisben)
);

ALTER TABLE
    sisbens onwer to root;

CREATE TABLE civils_status(
    id_civil_status serial nor null,
    type_civil_status varchar(50) not null,
    constraint PK_CIVIL_STATUS primary key (id_civil_status)
);

ALTER TABLE
    civils_status onwer to root;

CREATE TABLE educations_levels(
    id_education_level serial nor null,
    name_education_level varchar(100) not null,
    constraint PK_EDUCATION_LEVEL primary key (id_education_level)
);

ALTER TABLE
    educations_levels onwer to root;

CREATE TABLE occupation(
    id_occupation serial nor null,
    type_occupation varchar(100) not null,
    constraint PK_EDUCATION_LEVEL primary key (id_occupation)
);

ALTER TABLE
    occupation onwer to root;

CREATE TABLE citys(
    id_city serial nor null,
    name_city varchar(100) not null,
    constraint PK_CITY primary key (id_city)
);

ALTER TABLE
    citys onwer to root;

CREATE TABLE types_genders(
    id_type_gender serial not null,
    type_gender varchar(100) not null,
    constraint PK_TYPE_GENDER primary key (id_type_gender)
);

ALTER TABLE
    types_genders to root;

CREATE TABLE types_sanguineous(
    id_type_sanguineou serial not null,
    type varchar(100) not null,
    rh varchar(100) not null,
    constraint PK_TYPE_SANGUINEOU primary key
);

ALTER TABLE
    types_sanguineous to root;

CREATE TABLE tuitions(
    id_tuition serial not null,
    name_tuition varchar(100) not null,
    constraint PK_TUITION primary key (id_tuition)
);

ALTER TABLE
    tuitions to root;

CREATE TABLE certificates(
    id_certificate serial not null,
    type_certificate varchar(200) not null,
    date_certificate DATE not null,
    constraint PK_CERTIFICATE primary key(id_certificate)
);

ALTER TABLE
    certificates to root;

CREATE TABLE receipt(
    id_receipt serial not null,
    value_receipt float not null,
    date_receipt DATE not null,
    constraint PK_RECEIPT primary key (id_receipt)
);

ALTER TABLE
    receipt to root;

CREATE TABLE vehicles(
    id_vehicle serial not null,
    type_vehicle varchar(100) not null,
    license_plate varchar(100) not null constraint PK_VEHICLES primary key (id_vehicle)
);

ALTER TABLE
    vehicles to root;

CREATE TABLE courses(
    id_course serial not null,
    name_course varchar(100) not null,
    time varchar(100) not null,
    constraint PK_COURSES primary key
);

ALTER TABLE
    courses to root;

CREATE TABLE users_news(
    id_user_new serial not null,
    photo text not null,
    photo_fingerprint text not null,
    date_tuition DATE not null,
    id_receipt int4 not null,
    id_vehicle int4 not null,
    id_certificate int4 not null,
    id_tuition int4 not null,
    constraint PK_USER_NEWS primary key(id_user_new);

);

ALTER TABLE
    users_news to root;

ALTER TABLE
    users_news
add
    constraint fk_user_new_receipt FOREIGN KEY(id_receipt) REFERENCES receipt(id_receipt);

ALTER TABLE
    users_news
add
    constraint fk_user_new_vehicle FOREIGN KEY(id_vehicle) REFERENCES vehicles(id_vehicle);

ALTER TABLE
    users_news
add
    constraint fk_user_new_certificate FOREIGN KEY(id_certificate) REFERENCES certificates(id_certificate);

ALTER TABLE
    users_news
add
    constraint fk_user_new_tuition FOREIGN KEY(id_tuition) REFERENCES tuitions(id_tuition);

CREATE TABLE users_news_courses(
    id_user_new_course serial not null,
    id_course int4 not null,
    id_user_new int4 not null,
    constraint PK_USER_NEW_COURSE primary key (id_user_new_course)
);

ALTER TABLE
    users_news_courses to root;

ALTER TABLE
    users_news_courses
add
    constraint fk_user_new_course_courses FOREIGN KEY(id_course) REFERENCES courses(id_course);

ALTER TABLE
    users_news_courses
add
    constraint fk_user_new_course_users_new FOREIGN KEY(id_user_new) REFERENCES users_news(id_user_new);

CREATE TABLE types_documents(
    id_type_document serial not null,
    type_document varchar(100) not null,
    constraint PK_TYPE_DOCUMENT primary key (id_type_document)
);

ALTER TABLE
    types_documents to root;

CREATE TABLE identifications(
    id_identifications serial not null,
    numbers varchar(11) not null,
    issued_in varchar(100) not null,
    id_type_document int4 not null,
    constraint PK_IDENTIFICATION primary key (id_identifications)
);

ALTER TABLE
    identifications to root;

ALTER TABLE
    identifications
add
    constraint fk_identifications_types_documents FOREIGN KEY(id_type_document) REFERENCES types_documents(id_type_document);

CREATE TABLE others_persons_data(
    id_other_person_data serial not null,
    direction varchar(100) not null,
    phone_number varchar(100) not null,
    id_stratum int4 not null,
    id_sisben int4 not null,
    id_civil_status int4 not null,
    id_education_level int4 not null,
    id_occupation int4 not null,
    id_city int4 not null,
    constraint PK_OTHERS_PERSONS_DATA primary key(id_other_person_data)
);

ALTER TABLE
    others_persons_data to root;

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_stractum FOREIGN KEY(id_stratum) REFERENCES stractums(id_stractum);

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_sisben FOREIGN KEY(id_sisben) REFERENCES sisbens(id_sisben);

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_civil_status FOREIGN KEY(id_civil_status) REFERENCES civils_status(id_civil_status);

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_education_level FOREIGN KEY(id_education_level) REFERENCES educations_levels(id_education_level);

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_occupation FOREIGN KEY(id_occupation) REFERENCES occupation(id_occupation);

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_city FOREIGN KEY(id_city) REFERENCES citys(id_city);

CREATE TABLE persons(
    id_person serial not null,
    first_name varchar(100) not null,
    second_name varchar(100),
    first_last_name varchar(100) not null,
    second_last_name varchar(100) not null,
    mail varchar(200) not null,
    birthdat varchar(100) not null,
    id_identification int4 not null,
    id_gender int4 not null,
    id_type_sanguineou int4 not null,
    id_other_data int4 not null,
    constraint PK_PERSON primary key (id_person)
);

ALTER TABLE
    persons to root;

ALTER TABLE
    persons
add
    constraint fk_persons_identification FOREIGN KEY(id_identification) REFERENCES identifications(id_identifications);

ALTER TABLE
    persons
add
    constraint fk_persons_gender FOREIGN KEY(id_gender) REFERENCES types_genders(id_type_gender);

ALTER TABLE
    persons
add
    constraint fk_persons_type_sanguineou FOREIGN KEY(id_type_sanguineou) REFERENCES types_sanguineous(id_type_sanguineou);

ALTER TABLE
    persons
add
    constraint fk_persons_other_data FOREIGN KEY(id_other_data) REFERENCES others_persons_data(id_other_person_data);

CREATE TABLE administrator(
    id_admin serial not null,
    user_name varchar(100) not null,
    password varchar(100) not null,
    constraint PK_ADMINISTRATOR primary key (id_admin)
);

ALTER TABLE
    administrator to root;

/* sql correct*/
CREATE TABLE stractums(
    id_stractum serial not null,
    name_stractum varchar(50) not null,
    constraint PK_STRACTUM primary key (id_stractum)
);

CREATE TABLE sisbens(
    id_sisben serial not null,
    name_sisben varchar(50) not null,
    constraint PK_SISBENS primary key (id_sisben)
);

CREATE TABLE civils_status(
    id_civil_status serial not null,
    type_civil_status varchar(50) not null,
    constraint PK_CIVIL_STATUS primary key (id_civil_status)
);

CREATE TABLE educations_levels(
    id_education_level serial not null,
    name_education_level varchar(100) not null,
    constraint PK_EDUCATION_LEVEL primary key (id_education_level)
);

CREATE TABLE occupation(
    id_occupation serial not null,
    type_occupation varchar(100) not null,
    constraint PK_EDUCATION_LEVEL primary key (id_occupation)
);

CREATE TABLE citys(
    id_city serial not null,
    name_city varchar(100) not null,
    constraint PK_CITY primary key (id_city)
);

CREATE TABLE types_genders(
    id_type_gender serial not null,
    type_gender varchar(100) not null,
    constraint PK_TYPE_GENDER primary key (id_type_gender)
);

CREATE TABLE types_sanguineous(
    id_type_sanguineou serial not null,
    type varchar(100) not null,
    rh varchar(100) not null,
    constraint PK_TYPE_SANGUINEOU primary key(id_type_sanguineou)
);

CREATE TABLE tuitions(
    id_tuition serial not null,
    name_tuition varchar(100) not null,
    constraint PK_TUITION primary key (id_tuition)
);

CREATE TABLE certificates(
    id_certificate serial not null,
    type_certificate varchar(200) not null,
    date_certificate DATE not null,
    constraint PK_CERTIFICATE primary key(id_certificate)
);

CREATE TABLE receipt(
    id_receipt serial not null,
    value_receipt float not null,
    date_receipt DATE not null,
    constraint PK_RECEIPT primary key (id_receipt)
);

CREATE TABLE vehicles(
    id_vehicle serial not null,
    type_vehicle varchar(100) not null,
    license_plate varchar(100) not null,
    constraint PK_VEHICLES primary key (id_vehicle)
);

CREATE TABLE courses(
    id_course serial not null,
    name_course varchar(100) not null,
    time varchar(100) not null,
    constraint PK_COURSES primary key(id_course)
);

CREATE TABLE users_news(
    id_user_new serial not null,
    photo text not null,
    photo_fingerprint text not null,
    date_tuition DATE not null,
    id_receipt int not null,
    id_vehicle int not null,
    id_certificate int not null,
    id_tuition int not null,
    constraint PK_USER_NEWS primary key(id_user_new)
);

ALTER TABLE
    users_news FOREIGN KEY(id_receipt) REFERENCES receipt(id_receipt);

ALTER TABLE
    users_news FOREIGN KEY(id_vehicle) REFERENCES vehicles(id_vehicle);

ALTER TABLE
    users_news FOREIGN KEY(id_certificate) REFERENCES certificates(id_certificate);

ALTER TABLE
    users_news FOREIGN KEY(id_tuition) REFERENCES tuitions(id_tuition);

CREATE TABLE users_news_courses(
    id_user_new_course serial not null,
    id_course int not null,
    id_user_new int not null,
    constraint PK_USER_NEW_COURSE primary key (id_user_new_course)
);

ALTER TABLE
    users_news_courses
add
    constraint fk_user_new_course_courses FOREIGN KEY(id_course) REFERENCES courses(id_course);

ALTER TABLE
    users_news_courses
add
    constraint fk_user_new_course_users_new FOREIGN KEY(id_user_new) REFERENCES users_news(id_user_new);

CREATE TABLE types_documents(
    id_type_document serial not null,
    type_document varchar(100) not null,
    constraint PK_TYPE_DOCUMENT primary key (id_type_document)
);

ALTER TABLE
    types_documents to root;

CREATE TABLE identifications(
    id_identifications serial not null,
    numbers varchar(11) not null,
    issued_in varchar(100) not null,
    id_type_document int not null,
    constraint PK_IDENTIFICATION primary key (id_identifications)
);

ALTER TABLE
    identifications to root;

ALTER TABLE
    identifications
add
    constraint fk_identifications_types_documents FOREIGN KEY(id_type_document) REFERENCES types_documents(id_type_document);

CREATE TABLE others_persons_data(
    id_other_person_data serial not null,
    direction varchar(100) not null,
    phone_number varchar(100) not null,
    id_stratum int not null,
    id_sisben int not null,
    id_civil_status int not null,
    id_education_level int not null,
    id_occupation int not null,
    id_city int not null,
    constraint PK_OTHERS_PERSONS_DATA primary key(id_other_person_data)
);

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_stractum FOREIGN KEY(id_stratum) REFERENCES stractums(id_stractum);

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_sisben FOREIGN KEY(id_sisben) REFERENCES sisbens(id_sisben);

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_civil_status FOREIGN KEY(id_civil_status) REFERENCES civils_status(id_civil_status);

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_education_level FOREIGN KEY(id_education_level) REFERENCES educations_levels(id_education_level);

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_occupation FOREIGN KEY(id_occupation) REFERENCES occupation(id_occupation);

ALTER TABLE
    others_persons_data
add
    constraint fk_others_persons_data_city FOREIGN KEY(id_city) REFERENCES citys(id_city);

CREATE TABLE persons(
    id_person serial not null,
    first_name varchar(100) not null,
    second_name varchar(100),
    first_last_name varchar(100) not null,
    second_last_name varchar(100) not null,
    mail varchar(200) not null,
    birthdat varchar(100) not null,
    id_identification int not null,
    id_gender int not null,
    id_type_sanguineou int not null,
    id_other_data int not null,
    constraint PK_PERSON primary key (id_person)
);

ALTER TABLE
    persons
add
    constraint fk_persons_identification FOREIGN KEY(id_identification) REFERENCES identifications(id_identifications);

ALTER TABLE
    persons
add
    constraint fk_persons_gender FOREIGN KEY(id_gender) REFERENCES types_genders(id_type_gender);

ALTER TABLE
    persons
add
    constraint fk_persons_type_sanguineou FOREIGN KEY(id_type_sanguineou) REFERENCES types_sanguineous(id_type_sanguineou);

ALTER TABLE
    persons
add
    constraint fk_persons_other_data FOREIGN KEY(id_other_data) REFERENCES others_persons_data(id_other_person_data);

CREATE TABLE administrator(
    id_admin serial not null,
    user_name varchar(100) not null,
    password varchar(100) not null,
    constraint PK_ADMINISTRATOR primary key (id_admin)
);
/*****************************************************************************************
*************************************************************************************************
**************************************************************************************************
****************************************************************************************************
*********************************************************************************************************
**********************************************************************************************************/
CREATE TABLE stractums(
    id_stractum serial not null,
    name_stractum varchar(50) not null,
    constraint PK_STRACTUM primary key (id_stractum)
);

CREATE TABLE sisbens(
    id_sisben serial not null,
    name_sisben varchar(50) not null,
    constraint PK_SISBENS primary key (id_sisben)
);


CREATE TABLE civils_status(
    id_civil_status serial not null,
    type_civil_status varchar(50) not null,
    constraint PK_CIVIL_STATUS primary key (id_civil_status)
);


CREATE TABLE educations_levels(
    id_education_level serial not null,
    name_education_level varchar(100) not null,
    constraint PK_EDUCATION_LEVEL primary key (id_education_level)
);

CREATE TABLE occupation(
    id_occupation serial not null,
    type_occupation varchar(100) not null,
    constraint PK_OCCUPATION primary key (id_occupation)
);


CREATE TABLE citys(
    id_city serial not null,
    name_city varchar(100) not null,
    constraint PK_CITY primary key (id_city)
);


CREATE TABLE types_genders(
    id_type_gender serial not null,
    type_gender varchar(100) not null,
    constraint PK_TYPE_GENDER primary key (id_type_gender)
);


CREATE TABLE types_sanguineous(
    id_type_sanguineou serial not null,
    type varchar(100) not null,
    rh varchar(100) not null,
    constraint PK_TYPE_SANGUINEOU primary key(id_type_sanguineou)
);


CREATE TABLE tuitions(
    id_tuition serial not null,
    name_tuition varchar(100) not null,
    constraint PK_TUITION primary key (id_tuition)
);
insert into tuitions(name_tuition) values('Matriculado');



CREATE TABLE vehicles(
    id_vehicle serial not null,
    type_vehicle varchar(100) not null,
    license_plate varchar(100) not null,
    date_soat DATE not null,
    date_tecnoMecanical Date null,
	constraint PK_VEHICLES primary key (id_vehicle)
);


CREATE TABLE courses(
    id_course serial not null,
    name_course varchar(100) not null,
    time_course varchar(100) not null,
    constraint PK_COURSES primary key(id_course)
);



CREATE TABLE types_documents(
    id_type_document serial not null,
    type_document varchar(100) not null,
    constraint PK_TYPE_DOCUMENT primary key (id_type_document)
);

CREATE TABLE state_certificate(
    id_state_certificate serial not null,
    state_certificate varchar(30) not null,
    constraint PK_STATE_CERTIFICATE primary key (id_state_certificate)
);

CREATE TABLE persons(
    id_person serial not null,
    first_name varchar(100) not null,
    second_name varchar(100),
    first_last_name varchar(100) not null,
    second_last_name varchar(100) not null,
    mail varchar(200) not null,
    birthdat varchar(100) not null,
    direction varchar(100) not null,
    phone_number varchar(100) not null,
    occupation varchar(100)  not null,
    numbers varchar(11) not null,
    issued_in varchar(100) not null,
    id_type_document int4 not null,
    id_state_certificate int4 NOT NULL,
	value_receipt float not null,
    photo text not null,
    photo_fingerprint text not null,
    date_tuition DATE not null,
    id_receipt int4 not null,
    id_vehicle int4 not null,
    id_certificate int4 not null,
    id_tuition int4 not null,
    id_course int4 not null,
    id_stratum int4 not null,
    id_sisben int4 not null,
    id_civil_status int4 not null,
    id_education_level int4 not null,
    id_city int4 not null,
    id_gender int4 not null,
    id_type_sanguineou int4 not null,
    constraint PK_PERSON primary key (id_person)
);
ALTER TABLE
    persons
add
    constraint fk_persons_stractum FOREIGN KEY(id_stratum) REFERENCES stractums(id_stractum);

ALTER TABLE
    persons
add
    constraint fk_persons_sisben FOREIGN KEY(id_sisben) REFERENCES sisbens(id_sisben);

ALTER TABLE
    persons
add
    constraint fk_persons_civil_status FOREIGN KEY(id_civil_status) REFERENCES civils_status(id_civil_status);

ALTER TABLE
    persons
add
    constraint fk_persons_education_level FOREIGN KEY(id_education_level) REFERENCES educations_levels(id_education_level);

ALTER TABLE
    persons
add
    constraint fk_persons_city FOREIGN KEY(id_city) REFERENCES citys(id_city);

ALTER TABLE
    persons
add
    constraint fk_persons_typeidentification FOREIGN KEY(id_type_document) REFERENCES types_documents(id_type_document);

ALTER TABLE
    persons
add
    constraint fk_persons_gender FOREIGN KEY(id_gender) REFERENCES types_genders(id_type_gender);

ALTER TABLE
    persons
add
    constraint fk_persons_type_sanguineou FOREIGN KEY(id_type_sanguineou) REFERENCES types_sanguineous(id_type_sanguineou);

ALTER TABLE
    persons
add
    constraint fk_persons_vehicle FOREIGN KEY(id_vehicle) REFERENCES vehicles(id_vehicle);

ALTER TABLE
    persons
add
    constraint fk_persons_tuition FOREIGN KEY(id_tuition) REFERENCES tuitions(id_tuition);

ALTER TABLE
    persons
add
    constraint fk_persons_course FOREIGN KEY(id_course) REFERENCES courses(id_course);

ALTER TABLE
    persons
add
    constraint fk_persons_state_certificate FOREIGN KEY(id_state_certificate) REFERENCES state_certificate(id_state_certificate);


-- users
CREATE TABLE roles(
    id_rol serial ,
    name_rol varchar(200)not null unique,
    state_rol int2 not null,
    constraint PK_ROLES primary key(id_rol)
);

CREATE TABLE users(
    id_user SERIAL,
    id_rol int4 not null,
    document_user varchar(50) not null,
    type_user int2 not null,
    name_user varchar(60),
    lastname_user varchar(80),
    phone_user varchar(50),
    state_user int2 not null,
    constraint pk_user primary key (id_user)
);

CREATE table access(
    id_user int4,
    mail_access varchar(100) not null unique,
    password_access varchar(200)not null ,
    constraint pk_access primary key(id_user)  
);

CREATE TABLE income(
    id_income SERIAL,
    id_user int4 not null,
    constraint pk_income primary key(id_income)
);

ALTER TABLE users
add constraint fk_user_ref_roles foreign key(id_rol)
references roles(id_rol)
on delete restrict on update cascade;

ALTER TABLE access
add constraint fk_access_ref_user foreign key(id_user)
references users(id_user)
on delete restrict on update cascade;

ALTER TABLE income
add constraint fk_income_ref_access foreign key(id_user)
references users(id_user)
on delete restrict on update cascade;   