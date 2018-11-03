CREATE database DATASCIENCE;
CREATE TABLE UNIVERSITY (
  UNIVERSITY_ID VARCHAR(3) NOT NULL PRIMARY KEY,
  PROGRAM_TITLE VARCHAR(50) NOT NULL,
  PROGRAM_DURATION VARCHAR(10) NOT NULL,
  DEGREE_TYPE VARCHAR(15) NOT NULL,
  UNIVERSITY_NAME VARCHAR(50) NOT NULL,
  UNIVERSITY_STATE VARCHAR(20) NOT NULL,
  UNIVERSITY_COUNTRY VARCHAR(15) NOT NULL);
  
 CREATE TABLE STUDENT(
   STUDENT_ID VARCHAR(8) NOT NULL PRIMARY KEY,
   STUDENT_FNAME VARCHAR(20) NOT NULL, 
   STUDENT_LNAME VARCHAR(20) NOT NULL, 
   STUDENT_PHONE VARCHAR(13) NOT NULL,
   TELEPHONE VARCHAR(13) NOT NULL,
   STUDENT_EMAIL VARCHAR(30) NOT NULL);
 
CREATE TABLE PUBLISHER(
  PUBLISHER_ID VARCHAR(2) NOT NULL PRIMARY KEY,
  PUBLISHER_NAME VARCHAR(50) NOT NULL,
  PUBLISHER_LOC VARCHAR(35) NOT NULL);
  
CREATE TABLE RESOURCE(
  RESOURCE_ID VARCHAR(2) NOT NULL PRIMARY KEY,
  RESOURCE_TYPE VARCHAR(15) NOT NULL,
  PUBLICATION_DATE DATE NOT NULL,
  ISBN_DOI VARCHAR(15) NOT NULL,
  RESOURCE_PAGES VARCHAR(10) NOT NULL,
  PUBLISHER_ID VARCHAR(2) NOT NULL,
FOREIGN KEY (PUBLISHER_ID) REFERENCES PUBLISHER(PUBLISHER_ID) ON UPDATE CASCADE);

CREATE TABLE AUTHOR(
  AUTHOR_ID VARCHAR(2) NOT NULL PRIMARY KEY,
  AUTHOR_FNAME VARCHAR(20) NOT NULL,
  AUTHOR_LNAME VARCHAR(20) NOT NULL,
  AUTHOR_CERT VARCHAR(20) NOT NULL,
  AUTHOR_GEN VARCHAR(11) NOT NULL);
  

 CREATE TABLE BOOKS(
   BOOK_ID VARCHAR(3) NOT NULL PRIMARY KEY,
   BOOK_TITLE VARCHAR(100) NOT NULL,
   AUTHOR_ID VARCHAR(2) NOT NULL,
   BOOK_KEYWORD VARCHAR(70) NOT NULL,
   RESOURCE_ID VARCHAR(2) NOT NULL,
   BOOK_PDF VARCHAR(2) NOT NULL,
   BOOK_LIB VARCHAR(2) NOT NULL,
   FOREIGN KEY (RESOURCE_ID) REFERENCES RESOURCE(RESOURCE_ID) ON UPDATE CASCADE,
 FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHOR(AUTHOR_ID) ON UPDATE CASCADE);
 
   
CREATE TABLE ARTICLES(
  ARTICLE_ID VARCHAR(2) NOT NULL PRIMARY KEY,
  ARTICLE_TITLE VARCHAR(100) NOT NULL,
  ARTICLE_KEYWORD VARCHAR(100) NOT NULL,
  AUTHOR_ID VARCHAR(2) NOT NULL,
  ARTICLE_ABSTRACT VARCHAR(2) NOT NULL,
  ARTICLE_FULLTEXT VARCHAR(2) NOT NULL,
  RESOURCE_ID VARCHAR(2) NOT NULL,
FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHOR(AUTHOR_ID) ON UPDATE CASCADE,
FOREIGN KEY (RESOURCE_ID) REFERENCES RESOURCE(RESOURCE_ID) ON UPDATE CASCADE);



INSERT INTO UNIVERSITY 
VALUES ("NYU"," MS in Business Analytics", "2 years","MSc","New York University", "New York","USA"),
("UNT", "MS in Data Science", "2 years", "MSc", "University of North Texas", "Texas", "USA");

INSERT INTO PUBLISHER 
VALUES ("S1", "Springer International Publishing", "New York, USA"),
("M1", "Morgan Kaufmann Publishing", "Burlington, USA"),
("E2", "Elsevier Publishing", "Netherlands"),
("H2", "Houghton Mifflin Harcourt", "Boston, USA"),
("PH", "Prentice Hall", "New Jersey, USA"),
("CP", "Compute! Publishers", "Iowa, USA"),
("OR", "O'Reilly Media", "California, USA"),
("PE", "Perceptual Edge", "California,USA"),
("IJ", "International Journal of Computer Applications", "USA"),
("AP", "Academic Press LTD", "Massachusetts, USA"),
("DS", "Data Science Journal", "USA"),
("IE", "IEEE", "New York, USA"),
("ES", "Elsevier Science", "Amsterdam"),
("CA", "Communications of the ACM", "Pittsburgh, USA"),
("IP", "Journal of Instructional Pedagogies", "USA");

INSERT INTO RESOURCE 
VALUES ("20", "ARTICLE", "2017-10-24","2364-4168","2", "S1"),
("21", "BOOK", "2002-01-01", "1046-1698", "407", "M1"),
 ("22","BOOK", "2001-05-01", "123814804", "744", "E2"),
 ("23", "ARTICLE", "2007-10-22", "NIL", "34", "M1"),
 ("24", "BOOK", "2014-08-26", "NIN", "242","H2"),
 ("25", "BOOK", "1992-06-12", "978-0134638379", "464", "PH"),
 ("26", "BOOK", "1987-11-01", "978-0942386110", "350", "CP"),
 ("27", "BOOK", "2007-08-01", "978-8184043709", "362", "OR"),
 ("28", "ARTICLE", "2017-03-01", "NIL", "11", "PE"),
 ("29", "ARTICLE", "2011-11-01", "NIL","14", "IJ"),
 ("30", "ARTICLE", "1994-05-01", "NIL", "26", "AP"),
 ("31", "ARTICLE", "2017-11-03", "NIL", "15","DS"),
 ("32", "ARTICLE", "2001-12-01", "NIL", "12", "IE"),
 ("33", "ARTICLE", "1999-12-01", "NIL", "15", "ES"),
 ("34", "ARTICLE", "1999-11-02", "319382.319388","6", "CA"),
 ("35", "ARTICLE", "2015-11-07", "ISSN-2327-5324", "7", "IP");


INSERT INTO AUTHOR
VALUES ("10","Martin", "Giese","None", "MALE"),
 ("11", "Usama M", "Fayyad","None", "MALE"),
 ("12", "Jiawei", "Han", "None", "MALE"),
 ("13", "Viktor", "Mayer-Schönberger", "None", "MALE"),
 ("14", "William B", "Frakes", "None", "MALE"),
 ("15", "Richard", "Mansfield", "None", "MALE"),
 ("16", "Toby", "Segaran", "None", "MALE"),
 ("17", "Stephen", "Few","None", "MALE"),
 ("18", "Muzammil", "Khan", "NONE", "MALE"),
 ("19", "Ribarsky", "William", "None", "MALE"),
 ("20", "Sally", "Adebamowo", "Phd", "FEMALE"),
 ("21", "S", "Ansari", "NIL", "MALE"),
 ("22", "Vesanto", "Juha", "NIL", "Male"),
 ("23", "Tom M", "Mitchell", "NIL", "MALE"),
 ("24", "Angela", "Mattia", "NIL","FEMALE"); 
 
INSERT INTO ARTICLES
VALUES ("1", "IEEE BigDataService 2016 conference", "BIG DATA,DATA DISCOVERY, DATA ANALYTICS", "10", "Y", "Y","20"),
("2", "Data Mining: Concepts and Techniques","Data Mining, Knowledge discovery, Information", "12", "Y", "Y", "23"),
("3", "Data Visualization Effectiveness Profile", "Data visualization, effectiveness, Data", "17", "N", "Y", "28"),
("4", "Data and Information Visualization Methods, and Interactive Mechanisms: A Survey", "Data Visualization, Visualization challenges, information visualization, visualization", "18", "Y", "Y", "29"),
("5", "Next-generation data visualization tools", "Data Visualization, visualization tools", "19", "Y", "Y", "30"),
("6", "Genomic Research Data Generation, Analysis and Sharing – Challenges in the African Setting", "Africa, big data, data analysis", "20", "Y", "Y","31"),
("7", "Integrating e-commerce and data mining: architecture and challenges", "Data mining, data visualization, e-commerce, data warehouse", "21", "Y", "Y","32"),
("8", "SOM-based data visualization methods", "Data, visualization, data analysis", "22", "Y", "Y", "33"),
("9", "Machine learning and data mining", "Data mining, data visualization, machine learning", "23", "Y", "Y", "34"),
("10", "Data visualization: an exploratory study into the software tools used by businesses", "data visualization, data, software, data science", "24", "Y", "N", "35");
INSERT INTO BOOKS
 VALUES ( "150", "Information Visualization in Data Mining and Knowledge Discovery", "11", "Visualization,data mining, knowledge discovery", "21", "Y", "Y"),
 ("151", "Data Mining: Concepts and Techniques", "12", "Data mining, Techniques, Knowledge discovery, Large scale data","22", "Y", "N"),
 ("152", "Big Data: A Revolution That Will Transform How We Live, Work, and Think","13", "BIG DATA, REVOLUTION, DATA SCIENCE, HUMAN CULTURE", "24", "Y", "N"),
 ("153", "Information Retrieval: Data Structures and Algorithms","14", "Information retrieval, Data, Structures, Algorithms","25", "Y", "Y"),
 ("154", "Machine Language for Beginners", "15", "Machine language, programming languages,technology", "26", "Y", "Y"),
 ("155", "Programming Collective Intelligence","16", "Machine language, Programming, Data, Collective Intelligence", "27", "Y", "Y");
