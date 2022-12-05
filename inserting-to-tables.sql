--insert to StudentsGroup

insert into StudentsGroup values('Fresh1','Freshman','None',13);
insert into StudentsGroup values('Fresh2','Freshman','None',14);
insert into StudentsGroup values('Fresh3','Freshman','None',15);
insert into StudentsGroup values('Soph1','Sophomore','None',16);
insert into StudentsGroup values('Soph2','Sophomore','None',17);
insert into StudentsGroup values('Soph3','Sophomore','None',13);
insert into StudentsGroup values('Soph4','Sophomore','None',15);
insert into StudentsGroup values('jun1','Junior','FIN/IT',13);
insert into StudentsGroup values('jun2','Junior','BA/MRK',12);
insert into StudentsGroup values('jun3','Junior','IT/FIN',10);
insert into StudentsGroup values('jun4','Junior','MRK/BA',14);
insert into StudentsGroup values('Sen1','Senior','IT/FIN',14);
insert into StudentsGroup values('Sen2','Senior','BA/MRK',8);

--insert to course 

insert into course values('IT300','Database Management','Information Technology');
insert into course values('IT310','Computer networking','Information Technology');
insert into course values('IT320','Object oriented programming','Information Technology');
insert into course values('IT350','System Administration','Information Technology');
insert into course values('IT 420','E-services Design ','Information Technology');
insert into course values('IT 460','Cloud Computing Technologies ','Information Technology');
insert into course values('IT 480 ','Data Mining','Information Technology');
insert into course values('BA 350','Econometrics','Business Analytics');
insert into course values('FIN 300','Corporate finance','Finance');
insert into course values('FIN 350','Financial Markets','Finance');
insert into course values('FIN 310','Money and Banking','Finance');
insert into course values('FIN 400','Portfolio management','Finance');
insert into course values('FIN 410','Financial Management','Finance');
insert into course values('FIN 440 ','Advance Corporate Finance','Finance');
insert into course values('BA 300','Game Theory','Business Analytics');
insert into course values('BA 305 ','Operations Management','Business Analytics');
insert into course values('BA 340 ','Data Analysis','Business Analytics');
insert into course values('BA 360','Business Data Mining','Business Analytics');
insert into course values('BA 320','Business Forecasting','Business Analytics');
insert into course values('BA 400','Project Mannagement ','Business Analytics');
insert into course values('BA 410','Network Analysis','Business Analytics');
insert into course values('BA 450','Decision Support System','Business Analytics');
insert into course values('BA 460','Risk Analysis','Business Analytics');
insert into course values('MRK 300 ','Consumer Behavior','Marketing');
insert into course values('MRK 310','Marketing Communication ','Marketing');
insert into course values('MRK 320','International Marketing','Marketing');
insert into course values('MRK 400','Marketing Research','Marketing');
insert into course values('MRK 420 ','Services Marketing','Marketing');
insert into course values('MRK 430 ','Brand Management','Marketing');
insert into course values('MRK 440','Marketing Management','Marketing');

--insert to class

insert into class values('Amphi 1',36);
insert into class values('Amphi 2',46);
insert into class values('Amphi 3',26);
insert into class values('Amphi 4',26);
insert into class values('Amphi 5',49);
insert into class values('Amphi 6',25);
insert into class values('Amphi 7',48);
insert into class values('Amphi 8',27);
insert into class values('Amphi 9',49);
insert into class values('Amphi 10',28);
insert into class values('Amphi 11',32);
insert into class values('Amphi 12',47);
insert into class values('Amphi 13',44);
insert into class values('Lab 1',13);
insert into class values('Lab 2',12);
insert into class values('Lab 3',13);
insert into class values('Lab 4',12);
insert into class values('Lab 5',15);
insert into class values('Lab 6',11);

--insert to invigilator

insert into invigilator values(145167,'Samir Laalimi',8,40,'SamirLaalimi@tbs.u-tunis.tn','IT');
insert into invigilator values(173416,'Sondos Selmi',7,35,'SondosSelmi@tbs.u-tunis.tn','BA');
insert into invigilator values(172412,'Naceur Melliti',10,49,'NaceurMelliti@tbs.u-tunis.tn','MRK');
insert into invigilator values(112795,'Farouk Kharroubi',8,46,'FaroukKharroubi@tbs.u-tunis.tn','BA');
insert into invigilator values(128646,'Roua Rebai',9,38,'RouaRebai@tbs.u-tunis.tn','FIN');
insert into invigilator values(104536,'Zouhair Hammami',6,47,'ZouhairHammami@tbs.u-tunis.tn','MRK');
insert into invigilator values(100053,'Karim Esghaier',9,36,'KarimEsghaier@tbs.u-tunis.tn','IT');
insert into invigilator values(110917,'Amal Nsiri',8,45,'AmalNsiri@tbs.u-tunis.tn','FIN');
insert into invigilator values(146889,'Mohamed Abidi',7,37,'MohamedAbidi@tbs.u-tunis.tn','BA');

--insert to examinator

insert into examinator values(197300,'Mohamed Salhi',8,50,'MohamedSalhi@tbs.u-tunis.tn','IT');
insert into examinator values(152939,'Raouf Mediouni',7,48,'RaoufMediouni@tbs.u-tunis.tn','MRK');
insert into examinator values(127706,'Sarra Nasraoui',7,35,'SarraNasraoui@tbs.u-tunis.tn','FIN');
insert into examinator values(125375,'Zohra Soltani',8,39,'ZohraSoltani@tbs.u-tunis.tn','BA');
insert into examinator values(113987,'Haithem Rahali',9,32,'HaithemRahali@tbs.u-tunis.tn','BA');

--insert to exam

insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values ('Final IT300',120,TO_TIMESTAMP('01/11/2022 11:00','DD-MM-YYYY HH24:MI'),'IT300');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final IT310',60,TO_TIMESTAMP('08/01/2022 10:00','DD-MM-YYYY HH24:MI'),'IT310');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final IT320',90,TO_TIMESTAMP('09/01/2022 13:00','DD-MM-YYYY HH24:MI'),'IT320');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final IT350',120,TO_TIMESTAMP('13/01/2022 9:30','DD-MM-YYYY HH24:MI'),'IT350');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final BA 350',90,TO_TIMESTAMP('12/01/2022 14:00','DD-MM-YYYY HH24:MI'),'BA 350');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final BA 305 ',90,TO_TIMESTAMP('11/01/2022 11:00','DD-MM-YYYY HH24:MI'),'BA 305 ');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final BA 340 ',60,TO_TIMESTAMP('09/01/2022 10:00','DD-MM-YYYY HH24:MI'),'BA 340 ');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final BA 360',120,TO_TIMESTAMP('08/01/2022 13:00','DD-MM-YYYY HH24:MI'),'BA 360');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final FIN 300',120,TO_TIMESTAMP('12/01/2022 9:30','DD-MM-YYYY HH24:MI'),'FIN 300');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final FIN 350',120,TO_TIMESTAMP('11/01/2022 8:30','DD-MM-YYYY HH24:MI'),'FIN 350');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final MRK 300 ',60,TO_TIMESTAMP('13/01/2022 11:00','DD-MM-YYYY HH24:MI'),'MRK 300 ');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final MRK 310',60,TO_TIMESTAMP('09/01/2022 14:00','DD-MM-YYYY HH24:MI'),'MRK 310');
insert into Exam (Exam_name,Duration,Date_Time,Course_ID) values('Final MRK 320',90,TO_TIMESTAMP('11/01/2022 9:30','DD-MM-YYYY HH24:MI'),'MRK 320');

--insert to student

insert into student values(122250,'Yosr chabeb',21,'Yosrchabeb@gmail.com','jun3');
insert into student values(123970,'Wael khayati',21,'Waelkhayati@gmail.com','jun3');
insert into student values(171300,'Mohamed Weslati',21,'MohamedWeslati@gmail.com','jun3');
insert into student values(169772,'Samir Wertani',21,'SamirWertani@gmail.com','jun3');
insert into student values(159942,'Nouha Abidi',21,'NouhaAbidi@gmail.com','jun3');
insert into student values(137583,'Abir Somrani',21,'AbirSomrani@gmail.com','jun3');
insert into student values(159046,'Soumaya Namouchi',21,'SoumayaNamouchi@gmail.com','jun3');
insert into student values(184171,'Eya Magdouli',21,'EyaMagdouli@gmail.com','jun3');
insert into student values(129300,'Oumaima Nasri ',21,'OumaimaNasri @gmail.com','jun3');
insert into student values(195160,'Nabil Sayari',21,'NabilSayari@gmail.com','jun3');
insert into student values(137398,'Saber Nmiri',21,'SaberNmiri@gmail.com','jun2');
insert into student values(105176,'Asma Halek',21,'AsmaHalek@gmail.com','jun2');
insert into student values(192880,'Oubaied Youssef',21,'OubaiedYoussef@gmail.com','jun2');
insert into student values(170514,'Salima Abidi',21,'SalimaAbidi@gmail.com','jun2');
insert into student values(119706,'Souha Haji',21,'SouhaHaji@gmail.com','jun2');
insert into student values(141582,'Amin Nasrallah',21,'AminNasrallah@gmail.com','jun2');
insert into student values(142301,'Samar dadi',21,'Samardadi@gmail.com','jun2');
insert into student values(107295,'Samar messaoud',21,'Samarmessaoud@gmail.com','jun2');
insert into student values(165046,'Sameh tahri',21,'Samehtahri@gmail.com','jun2');
insert into student values(178033,'Samer laabidi',21,'Samerlaabidi@gmail.com','jun2');
insert into student values(185291,'Salah Azaiez',21,'SalahAzaiez@gmail.com','jun2');
insert into student values(163561,'Bayrem Yakoubi',21,'BayremYakoubi@gmail.com','jun2');
insert into student values(164461,'Yosra Akacha',21,'YosraAkacha@gmail.com','jun1');
insert into student values(161394,'Ghofran Hechmi',21,'GhofranHechmi@gmail.com','jun1');
insert into student values(132101,'Yassine Marzouki',21,'YassineMarzouki@gmail.com','jun1');
insert into student values(190144,'Imen Melliti',21,'ImenMelliti@gmail.com','jun1');
insert into student values(131871,'Yomna Mediouni ',21,'YomnaMediouni @gmail.com','jun1');
insert into student values(162046,'Anis Saadi',21,'AnisSaadi@gmail.com','jun1');
insert into student values(129485,'Amir Amri',21,'AmirAmri@gmail.com','jun1');
insert into student values(147362,'Hiba Weslati',21,'HibaWeslati@gmail.com','jun1');
insert into student values(139166,'Rahik maaref',21,'Rahikmaaref@gmail.com','jun1');
insert into student values(100544,'Nassim Rahal',21,'NassimRahal@gmail.com','jun1');
insert into student values(132045,'Hamdi Bessaoud',21,'HamdiBessaoud@gmail.com','jun1');
insert into student values(159731,'Mouhib Ouni',21,'MouhibOuni@gmail.com','jun1');
insert into student values(135087,'Amira Djobbi',21,'AmiraDjobbi@gmail.com','jun1');
insert into student values(166713,'Balkis Chihaoui',21,'BalkisChihaoui@gmail.com','jun4');
insert into student values(143842,'Nour Soltani',21,'NourSoltani@gmail.com','jun4');
insert into student values(128303,'Zeineb Laabidi',21,'ZeinebLaabidi@gmail.com','jun4');
insert into student values(165392,'Yassmine Boulaabi',21,'YassmineBoulaabi@gmail.com','jun4');
insert into student values(128897,'Sabrine Ben Yaghlen',21,'SabrineBenYaghlen@gmail.com','jun4');
insert into student values(108098,'Souhaib Dallai ',21,'SouhaibDallai@gmail.com','jun4');
insert into student values(154471,'Zoubair Zribi',21,'ZoubairZribi@gmail.com','jun4');
insert into student values(160385,'Jesser Bouzid',21,'JesserBouzid@gmail.com','jun4');
insert into student values(140216,'Ayoub Nouili',21,'AyoubNouili@gmail.com','jun4');
insert into student values(190294,'Sondoss Ben ayed',21,'SondossBenayed@gmail.com','jun4');
insert into student values(197782,'Fahd Ben Younes',21,'Fahd BenYounes@gmail.com','jun4');
insert into student values(164920,'Wassim Tamallah',21,'WassimTamallah@gmail.com','jun4');
insert into student values(123641,'Balkis Abidi',21,'BalkisAbidi@gmail.com','jun4');
insert into student values(107729,'Walid Nasri',21,'WalidNasri@gmail.com','jun4');

--insert to grade

insert into grade (Num_grade,Exam_ID,Student_ID) values(76,1,122250);
insert into grade (Num_grade,Exam_ID,Student_ID) values(73,1,123970);
insert into grade (Num_grade,Exam_ID,Student_ID) values(68,1,171300);
insert into grade (Num_grade,Exam_ID,Student_ID) values(50,1,169772);
insert into grade (Num_grade,Exam_ID,Student_ID) values(51,1,159942);
insert into grade (Num_grade,Exam_ID,Student_ID) values(56,1,137583);
insert into grade (Num_grade,Exam_ID,Student_ID) values(94,1,159046);
insert into grade (Num_grade,Exam_ID,Student_ID) values(59,1,184171);
insert into grade (Num_grade,Exam_ID,Student_ID) values(51,1,129300);
insert into grade (Num_grade,Exam_ID,Student_ID) values(60,1,195160);
insert into grade (Num_grade,Exam_ID,Student_ID) values(99,1,164461);
insert into grade (Num_grade,Exam_ID,Student_ID) values(52,1,161394);
insert into grade (Num_grade,Exam_ID,Student_ID) values(79,1,132101);
insert into grade (Num_grade,Exam_ID,Student_ID) values(42,1,190144);
insert into grade (Num_grade,Exam_ID,Student_ID) values(43,1,131871);
insert into grade (Num_grade,Exam_ID,Student_ID) values(93,1,162046);
insert into grade (Num_grade,Exam_ID,Student_ID) values(47,1,129485);
insert into grade (Num_grade,Exam_ID,Student_ID) values(51,1,147362);
insert into grade (Num_grade,Exam_ID,Student_ID) values(100,1,139166);
insert into grade (Num_grade,Exam_ID,Student_ID) values(83,1,100544);
insert into grade (Num_grade,Exam_ID,Student_ID) values(64,1,132045);
insert into grade (Num_grade,Exam_ID,Student_ID) values(85,1,159731);
insert into grade (Num_grade,Exam_ID,Student_ID) values(73,1,135087);
insert into grade (Num_grade,Exam_ID,Student_ID) values(92,6,137398);
insert into grade (Num_grade,Exam_ID,Student_ID) values(78,6,105176);
insert into grade (Num_grade,Exam_ID,Student_ID) values(65,6,192880);
insert into grade (Num_grade,Exam_ID,Student_ID) values(78,6,170514);
insert into grade (Num_grade,Exam_ID,Student_ID) values(70,6,119706);
insert into grade (Num_grade,Exam_ID,Student_ID) values(51,6,141582);
insert into grade (Num_grade,Exam_ID,Student_ID) values(49,6,142301);
insert into grade (Num_grade,Exam_ID,Student_ID) values(52,6,107295);
insert into grade (Num_grade,Exam_ID,Student_ID) values(45,6,165046);
insert into grade (Num_grade,Exam_ID,Student_ID) values(63,6,178033);
insert into grade (Num_grade,Exam_ID,Student_ID) values(90,6,185291);
insert into grade (Num_grade,Exam_ID,Student_ID) values(78,6,163561);
insert into grade (Num_grade,Exam_ID,Student_ID) values(44,6,166713);
insert into grade (Num_grade,Exam_ID,Student_ID) values(79,6,143842);
insert into grade (Num_grade,Exam_ID,Student_ID) values(76,6,128303);
insert into grade (Num_grade,Exam_ID,Student_ID) values(67,6,165392);
insert into grade (Num_grade,Exam_ID,Student_ID) values(73,6,128897);
insert into grade (Num_grade,Exam_ID,Student_ID) values(88,6,108098);
insert into grade (Num_grade,Exam_ID,Student_ID) values(53,6,154471);
insert into grade (Num_grade,Exam_ID,Student_ID) values(76,6,160385);
insert into grade (Num_grade,Exam_ID,Student_ID) values(90,6,140216);
insert into grade (Num_grade,Exam_ID,Student_ID) values(95,6,190294);
insert into grade (Num_grade,Exam_ID,Student_ID) values(53,6,197782);
insert into grade (Num_grade,Exam_ID,Student_ID) values(69,6,164920);
insert into grade (Num_grade,Exam_ID,Student_ID) values(50,6,123641);
insert into grade (Num_grade,Exam_ID,Student_ID) values(49,6,107729);

--insert to assignation

insert into assignation values(1,'jun1',197300,172412,'Lab 1');
insert into assignation values(1,'jun3',197300,128646,'Lab 4');
insert into assignation values(6,'jun2',113987,104536,'Amphi 4');
insert into assignation values(6,'jun4',113987,145167,'Amphi 4');

