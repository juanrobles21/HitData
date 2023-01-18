/***ROLES***/
insert into roles(name_rol, state_rol) values ('administrador',1);
insert into roles(name_rol, state_rol) values ('Usuario',1);


/***USER***/
insert into users(id_rol, document_user, type_user, name_user,lastname_user,phone_user,state_user) values (1,'12345678',1,'admi','admi','1213131',1);
insert into users(id_rol, document_user, type_user, name_user,lastname_user,phone_user,state_user) values (2,'12345678',1,'usuario','usuario','12341212',1);

/***ACCESS***/
insert into access(id_user, mail_access, password_access) values('1','admin','admin');
insert into access(id_user, mail_access, password_access) values('2','usuarioPrincipal','usuarioPricipal');

/***INCOME**/
insert into income(id_user) values(1);
insert into income(id_user) values(2);

/****STRACTUM****/
insert into stractums(name_stractum) values('1');
insert into stractums(name_stractum) values('2');
insert into stractums(name_stractum) values('3');
insert into stractums(name_stractum) values('4');
insert into stractums(name_stractum) values('5');
insert into stractums(name_stractum) values('6');

/*****SISBEN*****/

insert into sisbens(name_sisben) values('Grupo A');
insert into sisbens(name_sisben) values('Grupo B');
insert into sisbens(name_sisben) values('Grupo C');
insert into sisbens(name_sisben) values('Grupo D');

/****CIVIL STATUS****/
insert into civils_status(type_civil_status) values('Soltero(a)');
insert into civils_status(type_civil_status) values('Casado(a)');
insert into civils_status(type_civil_status) values('Unio libre');
insert into civils_status(type_civil_status) values('Viudo(a)');
insert into civils_status(type_civil_status) values('Divorciado(a)');

/*****EDUCATIONLEVES*****/
insert into educations_levels(name_education_level) values('Educación primaria');
insert into educations_levels(name_education_level) values('Educación secuandaria');
insert into educations_levels(name_education_level) values('Educación superior');
insert into educations_levels(name_education_level) values('Tecnico');
insert into educations_levels(name_education_level) values('Tecnologo');

/****CITYS****/

insert into citys(name_city) values('Leticia');
insert into citys(name_city) values('Medellin');
insert into citys(name_city) values('Rionegro');
insert into citys(name_city) values('Apartadó');
insert into citys(name_city) values('Turbo');
insert into citys(name_city) values('Caucasia');
insert into citys(name_city) values('Arauca');
insert into citys(name_city) values('Barranquilla');
insert into citys(name_city) values('Sabanalarga');
insert into citys(name_city) values('Girardot');
insert into citys(name_city) values('Fusagasugá');
insert into citys(name_city) values('Zipaquirá');
insert into citys(name_city) values('Facatativá');
insert into citys(name_city) values('Bogota');
insert into citys(name_city) values('Cartagena');
insert into citys(name_city) values('Magangue');
insert into citys(name_city) values('El Carmen de Bolivar');
insert into citys(name_city) values('Tunja');
insert into citys(name_city) values('Duitama');
insert into citys(name_city) values('Sogamoso');
insert into citys(name_city) values('Manizales');
insert into citys(name_city) values('Florecia');
insert into citys(name_city) values('Yopal');
insert into citys(name_city) values('Popayán');
insert into citys(name_city) values('Santander de Quilichao');
insert into citys(name_city) values('Valledupar');
insert into citys(name_city) values('Aguachica');
insert into citys(name_city) values('Quibdo');
insert into citys(name_city) values('Monteria');
insert into citys(name_city) values('Lorica');
insert into citys(name_city) values('Montelíbano');
insert into citys(name_city) values('Inítida');
insert into citys(name_city) values('San Jose del Guaviare');
insert into citys(name_city) values('Neiva');
insert into citys(name_city) values('Pitalito');
insert into citys(name_city) values('Riohacha');
insert into citys(name_city) values('Maicao');
insert into citys(name_city) values('Santa Marta');
insert into citys(name_city) values('Ciénaga');
insert into citys(name_city) values('Villavicencio');
insert into citys(name_city) values('Pasto');
insert into citys(name_city) values('Ipiales');
insert into citys(name_city) values('Tumaco');
insert into citys(name_city) values('Cúcuta');
insert into citys(name_city) values('Ocaña');
insert into citys(name_city) values('Pamplona');
insert into citys(name_city) values('Mocoa');
insert into citys(name_city) values('Puerto Asis');
insert into citys(name_city) values('Armenia');
insert into citys(name_city) values('Pereira');
insert into citys(name_city) values('San Andrés Isla');
insert into citys(name_city) values('Bucaramanga');
insert into citys(name_city) values('Barrancabermeja');
insert into citys(name_city) values('San Gil');
insert into citys(name_city) values('Sincelejo');
insert into citys(name_city) values('Ibagué');
insert into citys(name_city) values('El Espinal');
insert into citys(name_city) values('Cali');
insert into citys(name_city) values('Tuluá');
insert into citys(name_city) values('Palmira');
insert into citys(name_city) values('Buenaventura');
insert into citys(name_city) values('Cartago');
insert into citys(name_city) values('Buga');
insert into citys(name_city) values('Mitú');
insert into citys(name_city) values('Puerto Carreño');


/***TYPEDOCUMENTC***/

insert into types_documents(type_document) values('CC');
insert into types_documents(type_document) values('TI');
insert into types_documents(type_document) values('NIP');
insert into types_documents(type_document) values('Pasaporte');

/***TYPEGENDER***/

insert into types_genders(type_gender) values('Masculino');
insert into types_genders(type_gender) values('Femenino');
insert into types_genders(type_gender) values('No identificado');

/***TYPESANGUI***/

insert into types_sanguineous(type,rh) values('A','+');
insert into types_sanguineous(type,rh) values('A','-');
insert into types_sanguineous(type,rh) values('B','+');
insert into types_sanguineous(type,rh) values('B','-');
insert into types_sanguineous(type,rh) values('AB','+');
insert into types_sanguineous(type,rh) values('AB','-');
insert into types_sanguineous(type,rh) values('O','+');
insert into types_sanguineous(type,rh) values('B','-');

/****TUIUIONS****/

insert into tuitions(name_tuition) values('Matriculado');

/****VEHICLES****/
insert into vehicles(type_vehicle, license_plate, date_soat, date_tecnomecanical) values('Carro', 'DAS_122', '2020-12-12','2020-12-12');


/****COURSES****/
insert into courses(name_course, time_course) values ('a2','3 meses');
insert into courses(name_course, time_course) values ('b1','3 meses');
insert into courses(name_course, time_course) values ('c1','3 meses');
insert into courses(name_course, time_course) values ('c2','3 meses');

/****STATECERTIFICATE****/
insert into state_certificate(state_certificate)values ('Certificado');
insert into state_certificate(state_certificate)values ('No Certificado');