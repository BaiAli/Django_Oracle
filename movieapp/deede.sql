CREATE TABLE actor
   ( A_ID INT NOT NULL primary key, 
  A_NAME VARCHAR(200), 
  A_SURNAME VARCHAR(200), 
  A_SIZE INT NOT NULL, 
  A_HOME_TOWN VARCHAR(200), 
  A_GENERES VARCHAR(200), 
  A_MOVIE_COUNT VARCHAR(200), 
  A_AGE INT, 
  A_PHOTO_PATH VARCHAR(200)
   ) ;

CREATE TABLE ACTORMOVIE
   (  AM INT NOT NULL primary key, 
  A_ID INT NOT NULL, 
  M_ID INT NOT NULL,
    Foreign key(A_ID) references actor(a_id),
    Foreign key(M_ID) references movie(m_id)
   ) ;

  CREATE TABLE DIRECTOR    (  
  D_ID INT NOT NULL PRIMARY KEY, 
  D_NAME VARCHAR(200), 
  D_SURNAME VARCHAR(200), 
  D_AGE INT, 
  D_PHOTO_PATH VARCHAR(200), 
  D_HOME_TOWN VARCHAR(200), 
  D_GENERES VARCHAR(200), 
  D_MOVIE_COUNT VARCHAR(200), 
  D_SIZE INT
   ) ;
CREATE TABLE directormovie (
    pr INT NOT NULL PRIMARY KEY,
    D_ID INT NOT NULL,
    m_id INT NOT NULL,
    FOREIGN KEY (D_ID) REFERENCES DIRECTOR(D_ID),
    FOREIGN KEY (m_id) REFERENCES movie(m_id)
);



  CREATE TABLE GENERES
   (  G_ID INT NOT NULL primary key, 
  G_NAME VARCHAR(200)
   ) ;
  CREATE TABLE GENERESMOVIE
   (  GM INT NOT NULL primary key, 
  G_ID INT NOT NULL, 
    M_ID INT NOT NULL,
    foreign key(g_id) references generes(g_id),
    foreign key(m_id) references movie(m_id)
   );

select * from tab;
  CREATE TABLE MOVIE 
   (  M_ID INT NOT NULL primary key, 
  M_COUNTRY VARCHAR(200), 
  M_WORD VARCHAR(200), 
  M_TIME VARCHAR(200), 
  M_IMDB VARCHAR(200), 
  M_TITLE VARCHAR(200), 
  M_RELEASE_DATE DATE, 
  M_POSTER_PATH VARCHAR(200), 
  M_POSTER_PATH_2 VARCHAR(200), 
  M_POSTER_PATH_3 VARCHAR(200), 
  M_RATING VARCHAR(200), 
  M_BUDGET VARCHAR(200), 
  M_DESC VARCHAR(1500)
   ) ;

  CREATE TABLE PERSON
   (P_ID INT NOT NULL primary key, 
  P_NICKNAME VARCHAR(50), 
  P_NAME VARCHAR(50), 
  P_SURNAME VARCHAR(50), 
  P_AGE INT, 
  P_EMAIL VARCHAR(50), 
  P_PASSWORD VARCHAR(50)
    );


  CREATE TABLE PERSONROLES
   (PR INT NOT NULL primary key, 
  R_ID INT NOT NULL, 
  P_ID INT NOT NULL,
    Foreign key(R_ID) references roles(r_id),
    Foreign key(P_ID) references person(p_id)
   );
commit;
  CREATE TABLE ROLES
   (R_ID INT NOT NULL primary key, 
  R_NAME VARCHAR(200), 
  R_DESCRIPTION VARCHAR(200)
   );
   

SET DEFINE OFF;


insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (4, 'China', 'redefine revolutionary infomediaries', 'Asoka', 'Greenlam', 'Daltfresh', 'Бэтмен (2022)', '04-06-2021', 'https://avatars.mds.yandex.net/get-kinopoisk-image/6201401/e091e668-b8a3-416d-a6ea-25c1a17b781a/600x900', 'https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F211227135008-02-the-batman-trailer.jpg', 'https://i.guim.co.uk/img/media/006e580ef0ee8c46c17b265f2bf66e7f0c61b746/3436_0_8487_5097/master/8487.jpg?width=1200&quality=85&auto=format&fit=max&s=f4483f1cadff02ab33d8d038bf154dad', 'Opela', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (5, 'Madagascar', 'recontextualize leading-edge content', 'Sonair', 'Kanlam', 'Tresom', 'Соник 2 в кино (2022)', '29-12-2021', 'https://avatars.mds.yandex.net/get-kinopoisk-image/4303601/fc0d8554-d24a-4eac-b931-b5954d83ff5f/600x900', 'https://venturebeat.com/wp-content/uploads/2022/02/Sonic-Knuckles.jpg?fit=1568%2C880&strip=all', 'https://www.cnet.com/a/img/resize/eba47d21f2928f0398aa92a88c00b2d07d88b097/2021/12/10/36e92486-7dd6-404a-9fad-682bca66bab8/screen-shot-2021-12-10-at-12-38-42-pm.png?auto=webp&fit=crop&height=675&width=1200', 'Stringtough', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (6, 'China', 'transition value-added action-items', 'Sonsing', 'Tresom', 'Span', 'Фантастические твари: Тайны Дамблдора (2022)', '14-04-2022', 'https://avatars.mds.yandex.net/get-kinopoisk-image/4486454/87690ad6-e0aa-4464-b87d-488ec6c83e1d/600x900', 'https://picfiles.alphacoders.com/686/thumb-1920-68600.jpg', 'https://avatars.mds.yandex.net/i?m_id=ff52c6f6eafc1b9965bc55f30674c838-5870716-images-thumbs&n=13&exp=1', 'Toughjoyfax', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (7, 'China', 'grow cutting-edge action-items', 'Bigtax', 'Andalax', 'Daltfresh', 'Плохие парни (2022)', '13-11-2021', 'https://avatars.mds.yandex.net/get-kinopoisk-image/4303601/122e18d6-ff4c-4442-856e-5d3884b54173/600x900', 'https://i.ytimg.com/vi/xPd2sx8wjgM/maxresdefault.jpg', 'https://i.ytimg.com/vi/b2SkQaH9hXs/maxresdefault.jpg', 'Gembucket', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (8, 'Brazil', 'aggregate wireless niches', 'Tempsoft', 'Tres-Zap', 'Stronghold', 'Морбиус (2022)', '27-07-2021', 'https://avatars.mds.yandex.net/get-kinopoisk-image/6201401/8caec65a-e133-426d-a46d-d3e417eee356/600x900', 'https://m.media-amazon.com/images/M/MV5BNzZhYThmOTAtMzJkNi00MjQ0LWE0ZWItYzRhZWU5Njc3ZmFkXkEyXkFqcGdeQWpnYW1i._V1_.jpg', 'https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F200114083018-jared-leto-morbius-screengrab.jpg', 'Konklux', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (9, 'Portugal', 'evolve leading-edge web services', 'Tresom', 'Prodder', 'Gembucket', 'Аватар: путь воды(2022)', '12-03-2022', 'https://avatars.mds.yandex.net/get-kinopoisk-image/4774061/ee5d54ff-e5b4-443d-a392-604c61c298c6/600x900', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1946459/394882a3-b612-4380-a369-99c215209b94/x504', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1773646/d70e8afb-39c5-420c-adf3-4cef02f6bccd/x504', 'Voyatouch', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (10, 'Poland', 'unleash integrated e-commerce', 'Alpha', 'Overhold', 'Zoolab', 'Steal a Pencil for Me', '23-09-2021', 'https://image.tmdb.org/t/p/original/usC0nNKPGbHczKgu6wQU5tT2FcD.jpg', 'https://i.pinimg.com/originals/02/ca/02/02ca021a26fd863499c98ebbbe02bcc1.jpg', 'https://i.redd.it/66nr9cuwkqi41.jpg', 'Asoka', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (11, 'China', 'embrace sticky relationships', 'Vagram', 'Duobam', 'Konklab', 'Не смотрите наверх (2021)', '22-12-2021', 'https://avatars.mds.yandex.net/get-kinopoisk-image/4774061/9c7a6c39-a9fc-4c15-a634-ada778f7b86c/600x900', 'https://d1e00ek4ebabms.cloudfront.net/production/01e52c91-04ff-488f-b02d-5aa7c2e82b05.jpg', 'https://idsb.tmgrup.com.tr/ly/uploads/images/2021/12/07/165569.jpg', 'Alpha', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (12, 'Tanzania', 'morph ubiquitous models', 'Temp', 'Duobam', 'Cookley', 'Дюна(2021)', '31-01-2022', 'https://avatars.mds.yandex.net/get-kinopoisk-image/4303601/3340f367-5a35-4ad5-b7da-fce6bf1d5bc2/600x900', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/b25338b7-47f2-4f07-882d-db247b3e02ac/x504', 'https://avatars.mds.yandex.net/get-kinopoisk-image/4303601/4d8c3ff4-76c9-45c6-8900-e3699ccd59ca/x504', 'Solarbreeze', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (13, 'Philippines', 'streamline robust e-commerce', 'Rank', 'Holdlamis', 'Quo Lux', 'Гарри Поттер и философский камень (2001)', '12-10-2021', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1898899/27ed5c19-a045-49dd-8624-5f629c5d96e0/600x900', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1773646/f191131f-c26e-4cb0-927a-8e6b66a88d5e/x504', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1773646/8049c94d-3d76-43b8-807c-6cfe566bd5ee/x504', 'Gembucket', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (14, 'Finland', 'unleash enterprise channels', 'Viva', 'Viva', 'Tresom', 'Мстители: Война бесконечности', '06-05-2022', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1773646/af92d310-4ae5-4daa-b42c-5bcc380c2e6e/600x900', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1900788/f6e9bae5-1256-43d2-b8e2-e0deddf0169b/x504', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1946459/c133c9c6-17fa-4ea4-b75b-ae970ff6276d/x504', 'Y-Solowarm', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (15, 'China', 'utilize out-of-the-box eyeballs', 'Cardguard', 'Cookley', 'Regrant', 'Твоё имя (2016)', '04-03-2022', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1777765/535a746c-c1c9-4276-a29a-2864d65fc00a/576x', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1773646/696999f5-d6a1-4e42-8785-20fa3d35e86d/x504', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/7398eebc-476e-40bb-be16-b2f3ff0939f3/3840x', 'Tin', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (16, 'Philippines', 'drive one-to-one markets', 'Bamity', 'Voyatouch', 'Fix San', 'Унесённые призраками (2001)', '27-02-2022', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1629390/54f0ffca-1844-44ca-afde-713699d8656f/3840x', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1946459/d17c9175-fb2e-45c7-8cc0-43510382b9ae/x504', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1629390/8b61d724-2419-42c9-9e57-b99bc123da51/x504', 'Tin', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (17, 'Greece', 'extend dot-com methodologies', 'Zathin', 'Lotstring', 'Stronghold', 'Темный рыцарь (2008)', '19-10-2021', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1900788/93683fc1-b7b5-440b-a65d-2eddf3f862d1/576x', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1777765/09c908f8-995b-40c6-bca9-759a8c2b5d0e/x504', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1900788/7db8a8c0-964b-44c5-8ced-7868a83b2e7f/x504', 'Bytecard', 'Kung Fu Panda is an American media franchise that started in 2008 with the release of the animated feature film of the same name, produced by DreamWorks Animation. Following the adventures of the titular Po Ping (primarily voiced by Jack Black and Mick Wingert), a giant panda who is improbably chosen as the prophesied Dragon Warrior and become a master of kung fu, the franchise is set in a fantasy wuxia genre version of ancient China populated by anthropomorphic animals. Although his status is initially doubted, Po proves himself worthy as he strives to fulfill his destiny and learn about his past with his new friends. ');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (18, 'Philippines', 'whiteboard visionary architectures', 'Kanlam', 'Transcof', 'Ronstring', 'Новый Человек-паук: Высокое напряжение (2014)', '14-08-2021', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1900788/7a07570c-b930-47b2-8c64-193056a76486/576x', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1773646/ccbf7dee-668d-4bf2-8ebe-cbb89c5f7f43/x504', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1946459/5fa144ac-b397-45a6-921d-a94d71230ba6/x504', 'Matsoft', 'The Amazing Spm_ider-Man 2 (internationally titled The Amazing Spm_ider-Man 2: Rise of Electro)[6] is a 2014 American superhero film based on the Marvel Comics character Spm_ider-Man. The film was directed by Marc Webb and produced by Avi Arad and Matt Tolmach. It is the fifth theatrical Spm_ider-Man film produced by Columbia Pictures and Marvel Entertainment, the sequel to The Amazing Spm_ider-Man (2012), and the final film in The Amazing Spm_ider-Man series. The studio hired James Vanderbilt to write the screenplay and Alex Kurtzman and Roberto Orci to rewrite it.[7][8] The film stars Andrew Garfield as Peter Parker / Spm_ider-Man, alongsm_ide Emma Stone, Jamie Foxx, Dane DeHaan, Campbell Scott, Embeth Davm_idtz, Colm Feore, Paul Giamatti, and Sally Field. In the film, Peter Parker tries to protect Gwen Stacy as he investigates his parents');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (19, 'France', 'reinvent robust metrics', 'Zoolab', 'Job', 'Voyatouch', 'Шрэк (2001)', '30-12-2021', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1900788/41daf06f-3187-4913-98aa-f72f77544d8f/576x', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1900788/ee1fe893-c676-4ecb-8231-12fe81510831/x504', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1900788/f38592d6-c6e9-477c-9e1a-6bf85b2f09ee/x504', 'Andalax', 'Shrek! is a humorous fantasy picture book published in 1990 by American book writer and cartoonist William Steig, about a repugnant green monster who leaves home to see the world and ends up marrying an ugly princess. The book was generally well-received upon publication, with critics praising the illustrations, originality, and writing. Critics have also described Shrek as an antihero and noted the boo');

insert into movie (m_id, m_country, m_word, m_budget, m_time, m_imdb, m_title, m_release_date, m_poster_path, m_poster_path_2, m_poster_path_3, m_rating, m_desc) values (20, 'China', 'reinvent B2C convergence', 'Domainer', 'Veribet', 'Stringtough', 'Как приручить дракона (2010)', '10-08-2021', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/c4411e4a-64a5-4c57-b3f6-06852adc9698/576x', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1600647/e0c9c7dc-b2c3-4a7d-934e-82bd3d669d66/x504', 'https://avatars.mds.yandex.net/get-kinopoisk-image/1946459/54ae0bd6-c064-47e3-80e7-77eba69a96be/x504', 'Voltsillam', 'How to Train Your Dragon is a 2010 American computer-animated action fantasy film loosely based on the 2003 book of the same name by Cressm_ida Cowell, produced by DreamWorks Animation and distributed by Paramount Pictures. It was directed by Chris Sanders and Dean DeBlois from a screenplay by Will Davies, Sanders, and DeBlois, and stars the voices of Jay Baruchel, Gerard Butler, Craig Ferguson, America Ferrera, Jonah Hill, Christopher Mintz-Plasse, T.J. Miller, and Kristen Wiig. The story takes place in a mythical Viking world where a young Viking teenager named Hiccup aspires to follow his tribes acceptance, he finds out that he no longer wants to kill the dragon and instead befriends it, and names him Toothless. ');


insert into actormovie (am, a_id, m_id) values (1, 1, 15);
insert into actormovie (am, a_id, m_id) values (2, 20, 15);
insert into actormovie (am, a_id, m_id) values (3, 6, 19);
insert into actormovie (am, a_id, m_id) values (4, 11, 1);
insert into actormovie (am, a_id, m_id) values (5, 12, 14);
insert into actormovie (am, a_id, m_id) values (6, 3, 15);
insert into actormovie (am, a_id, m_id) values (7, 9, 13);
insert into actormovie (am, a_id, m_id) values (8, 20, 3);
insert into actormovie (am, a_id, m_id) values (9, 20, 5);
insert into actormovie (am, a_id, m_id) values (10, 1, 3);
insert into actormovie (am, a_id, m_id) values (11, 16, 4);
insert into actormovie (am, a_id, m_id) values (12, 2, 1);
insert into actormovie (am, a_id, m_id) values (13, 2, 11);
insert into actormovie (am, a_id, m_id) values (14, 19, 7);
insert into actormovie (am, a_id, m_id) values (15, 12, 15);
insert into actormovie (am, a_id, m_id) values (16, 15, 13);
insert into actormovie (am, a_id, m_id) values (17, 9, 16);
insert into actormovie (am, a_id, m_id) values (18, 16, 4);
insert into actormovie (am, a_id, m_id) values (19, 3, 3);
insert into actormovie (am, a_id, m_id) values (20, 19, 2);
insert into actormovie (am, a_id, m_id) values (21, 15, 6);
insert into actormovie (am, a_id, m_id) values (22, 9, 20);
insert into actormovie (am, a_id, m_id) values (23, 6, 12);
insert into actormovie (am, a_id, m_id) values (24, 1, 6);
insert into actormovie (am, a_id, m_id) values (25, 17, 16);
insert into actormovie (am, a_id, m_id) values (26, 15, 5);
insert into actormovie (am, a_id, m_id) values (27, 19, 19);
insert into actormovie (am, a_id, m_id) values (28, 11, 20);
insert into actormovie (am, a_id, m_id) values (29, 6, 14);
insert into actormovie (am, a_id, m_id) values (30, 4, 20);
insert into actormovie (am, a_id, m_id) values (31, 17, 11);
insert into actormovie (am, a_id, m_id) values (32, 5, 20);
insert into actormovie (am, a_id, m_id) values (33, 13, 3);
insert into actormovie (am, a_id, m_id) values (34, 6, 4);
insert into actormovie (am, a_id, m_id) values (35, 12, 2);
insert into actormovie (am, a_id, m_id) values (36, 14, 16);
insert into actormovie (am, a_id, m_id) values (37, 18, 6);
insert into actormovie (am, a_id, m_id) values (38, 13, 19);
insert into actormovie (am, a_id, m_id) values (39, 3, 10);
insert into actormovie (am, a_id, m_id) values (40, 13, 4);
insert into actormovie (am, a_id, m_id) values (41, 16, 18);
insert into actormovie (am, a_id, m_id) values (42, 5, 13);
insert into actormovie (am, a_id, m_id) values (43, 2, 7);
insert into actormovie (am, a_id, m_id) values (44, 19, 20);
insert into actormovie (am, a_id, m_id) values (45, 12, 11);
insert into actormovie (am, a_id, m_id) values (46, 1, 11);
insert into actormovie (am, a_id, m_id) values (47, 20, 1);
insert into actormovie (am, a_id, m_id) values (48, 9, 13);
insert into actormovie (am, a_id, m_id) values (49, 11, 16);
insert into actormovie (am, a_id, m_id) values (50, 9, 2);
insert into actormovie (am, a_id, m_id) values (51, 20, 15);
insert into actormovie (am, a_id, m_id) values (52, 13, 4);
insert into actormovie (am, a_id, m_id) values (53, 16, 9);
insert into actormovie (am, a_id, m_id) values (54, 2, 8);
insert into actormovie (am, a_id, m_id) values (55, 7, 8);
insert into actormovie (am, a_id, m_id) values (56, 20, 4);
insert into actormovie (am, a_id, m_id) values (57, 19, 19);
insert into actormovie (am, a_id, m_id) values (58, 19, 16);
insert into actormovie (am, a_id, m_id) values (59, 15, 7);
insert into actormovie (am, a_id, m_id) values (60, 11, 13);
insert into actormovie (am, a_id, m_id) values (61, 5, 8);
insert into actormovie (am, a_id, m_id) values (62, 7, 9);
insert into actormovie (am, a_id, m_id) values (63, 13, 17);
insert into actormovie (am, a_id, m_id) values (64, 19, 1);
insert into actormovie (am, a_id, m_id) values (65, 12, 6);
insert into actormovie (am, a_id, m_id) values (66, 14, 11);
insert into actormovie (am, a_id, m_id) values (67, 9, 5);
insert into actormovie (am, a_id, m_id) values (68, 6, 1);
insert into actormovie (am, a_id, m_id) values (69, 9, 14);
insert into actormovie (am, a_id, m_id) values (70, 8, 9);
insert into actormovie (am, a_id, m_id) values (71, 6, 20);
insert into actormovie (am, a_id, m_id) values (72, 5, 8);
insert into actormovie (am, a_id, m_id) values (73, 15, 5);
insert into actormovie (am, a_id, m_id) values (74, 18, 9);
insert into actormovie (am, a_id, m_id) values (75, 1, 17);
insert into actormovie (am, a_id, m_id) values (76, 15, 5);
insert into actormovie (am, a_id, m_id) values (77, 8, 19);
insert into actormovie (am, a_id, m_id) values (78, 14, 18);
insert into actormovie (am, a_id, m_id) values (79, 16, 17);
insert into actormovie (am, a_id, m_id) values (80, 17, 8);
insert into actormovie (am, a_id, m_id) values (81, 12, 18);
insert into actormovie (am, a_id, m_id) values (82, 13, 17);
insert into actormovie (am, a_id, m_id) values (83, 18, 12);
insert into actormovie (am, a_id, m_id) values (84, 4, 20);
insert into actormovie (am, a_id, m_id) values (85, 18, 17);
insert into actormovie (am, a_id, m_id) values (86, 8, 13);
insert into actormovie (am, a_id, m_id) values (87, 13, 19);
insert into actormovie (am, a_id, m_id) values (88, 6, 13);
insert into actormovie (am, a_id, m_id) values (89, 7, 20);
insert into actormovie (am, a_id, m_id) values (90, 5, 8);
insert into actormovie (am, a_id, m_id) values (91, 11, 13);
insert into actormovie (am, a_id, m_id) values (92, 5, 14);
insert into actormovie (am, a_id, m_id) values (93, 7, 14);
insert into actormovie (am, a_id, m_id) values (94, 16, 8);
insert into actormovie (am, a_id, m_id) values (95, 16, 10);
insert into actormovie (am, a_id, m_id) values (96, 7, 8);
insert into actormovie (am, a_id, m_id) values (97, 4, 16);
insert into actormovie (am, a_id, m_id) values (98, 13, 9);
insert into actormovie (am, a_id, m_id) values (99, 15, 18);
insert into actormovie (am, a_id, m_id) values (100, 20, 18);







insert into generesmovie (gm, g_id, m_id) values (1, 7, 6);
insert into generesmovie (gm, g_id, m_id) values (2, 2, 12);
insert into generesmovie (gm, g_id, m_id) values (3, 3, 19);
insert into generesmovie (gm, g_id, m_id) values (4, 6, 17);
insert into generesmovie (gm, g_id, m_id) values (5, 1, 18);
insert into generesmovie (gm, g_id, m_id) values (6, 7, 6);
insert into generesmovie (gm, g_id, m_id) values (7, 8, 5);
insert into generesmovie (gm, g_id, m_id) values (8, 10, 4);
insert into generesmovie (gm, g_id, m_id) values (9, 8, 13);
insert into generesmovie (gm, g_id, m_id) values (10, 1, 17);
insert into generesmovie (gm, g_id, m_id) values (11, 7, 7);
insert into generesmovie (gm, g_id, m_id) values (12, 7, 14);
insert into generesmovie (gm, g_id, m_id) values (13, 8, 4);
insert into generesmovie (gm, g_id, m_id) values (14, 11, 13);
insert into generesmovie (gm, g_id, m_id) values (15, 10, 14);
insert into generesmovie (gm, g_id, m_id) values (16, 11, 4);
insert into generesmovie (gm, g_id, m_id) values (17, 5, 9);
insert into generesmovie (gm, g_id, m_id) values (18, 7, 15);
insert into generesmovie (gm, g_id, m_id) values (19, 6, 19);
insert into generesmovie (gm, g_id, m_id) values (20, 5, 6);
insert into generesmovie (gm, g_id, m_id) values (21, 6, 9);
insert into generesmovie (gm, g_id, m_id) values (22, 5, 13);
insert into generesmovie (gm, g_id, m_id) values (23, 1, 5);
insert into generesmovie (gm, g_id, m_id) values (24, 9, 11);
insert into generesmovie (gm, g_id, m_id) values (25, 3, 11);
insert into generesmovie (gm, g_id, m_id) values (26, 9, 2);
insert into generesmovie (gm, g_id, m_id) values (27, 10, 18);
insert into generesmovie (gm, g_id, m_id) values (28, 7, 2);
insert into generesmovie (gm, g_id, m_id) values (29, 5, 9);
insert into generesmovie (gm, g_id, m_id) values (30, 7, 19);
insert into generesmovie (gm, g_id, m_id) values (31, 6, 6);
insert into generesmovie (gm, g_id, m_id) values (32, 10, 9);
insert into generesmovie (gm, g_id, m_id) values (33, 10, 20);
insert into generesmovie (gm, g_id, m_id) values (34, 10, 3);
insert into generesmovie (gm, g_id, m_id) values (35, 11, 19);
insert into generesmovie (gm, g_id, m_id) values (36, 1, 13);
insert into generesmovie (gm, g_id, m_id) values (37, 7, 8);
insert into generesmovie (gm, g_id, m_id) values (38, 1, 15);
insert into generesmovie (gm, g_id, m_id) values (39, 7, 11);
insert into generesmovie (gm, g_id, m_id) values (40, 11, 1);
insert into generesmovie (gm, g_id, m_id) values (41, 9, 15);
insert into generesmovie (gm, g_id, m_id) values (42, 7, 1);
insert into generesmovie (gm, g_id, m_id) values (43, 10, 14);
insert into generesmovie (gm, g_id, m_id) values (44, 9, 9);
insert into generesmovie (gm, g_id, m_id) values (45, 5, 11);
insert into generesmovie (gm, g_id, m_id) values (46, 6, 16);
insert into generesmovie (gm, g_id, m_id) values (47, 6, 5);
insert into generesmovie (gm, g_id, m_id) values (48, 4, 19);
insert into generesmovie (gm, g_id, m_id) values (49, 9, 6);
insert into generesmovie (gm, g_id, m_id) values (50, 8, 1);
insert into generesmovie (gm, g_id, m_id) values (51, 7, 6);
insert into generesmovie (gm, g_id, m_id) values (52, 5, 6);
insert into generesmovie (gm, g_id, m_id) values (53, 6, 16);
insert into generesmovie (gm, g_id, m_id) values (54, 6, 5);
insert into generesmovie (gm, g_id, m_id) values (55, 5, 4);
insert into generesmovie (gm, g_id, m_id) values (56, 9, 19);
insert into generesmovie (gm, g_id, m_id) values (57, 7, 18);
insert into generesmovie (gm, g_id, m_id) values (58, 5, 11);
insert into generesmovie (gm, g_id, m_id) values (59, 7, 16);
insert into generesmovie (gm, g_id, m_id) values (60, 7, 8);
insert into generesmovie (gm, g_id, m_id) values (61, 4, 11);
insert into generesmovie (gm, g_id, m_id) values (62, 10, 15);
insert into generesmovie (gm, g_id, m_id) values (63, 1, 7);
insert into generesmovie (gm, g_id, m_id) values (64, 6, 10);
insert into generesmovie (gm, g_id, m_id) values (65, 7, 17);
insert into generesmovie (gm, g_id, m_id) values (66, 9, 5);
insert into generesmovie (gm, g_id, m_id) values (67, 2, 16);
insert into generesmovie (gm, g_id, m_id) values (68, 6, 8);
insert into generesmovie (gm, g_id, m_id) values (69, 7, 9);
insert into generesmovie (gm, g_id, m_id) values (70, 6, 10);
insert into generesmovie (gm, g_id, m_id) values (71, 11, 10);
insert into generesmovie (gm, g_id, m_id) values (72, 2, 6);
insert into generesmovie (gm, g_id, m_id) values (73, 3, 7);
insert into generesmovie (gm, g_id, m_id) values (74, 5, 16);
insert into generesmovie (gm, g_id, m_id) values (75, 6, 1);
insert into generesmovie (gm, g_id, m_id) values (76, 11, 9);
insert into generesmovie (gm, g_id, m_id) values (77, 5, 2);
insert into generesmovie (gm, g_id, m_id) values (78, 11, 2);
insert into generesmovie (gm, g_id, m_id) values (79, 2, 1);
insert into generesmovie (gm, g_id, m_id) values (80, 6, 3);
insert into generesmovie (gm, g_id, m_id) values (81, 11, 19);
insert into generesmovie (gm, g_id, m_id) values (82, 10, 14);
insert into generesmovie (gm, g_id, m_id) values (83, 5, 7);
insert into generesmovie (gm, g_id, m_id) values (84, 1, 10);
insert into generesmovie (gm, g_id, m_id) values (85, 1, 9);
insert into generesmovie (gm, g_id, m_id) values (86, 5, 8);
insert into generesmovie (gm, g_id, m_id) values (87, 1, 9);
insert into generesmovie (gm, g_id, m_id) values (88, 2, 20);
insert into generesmovie (gm, g_id, m_id) values (89, 1, 3);
insert into generesmovie (gm, g_id, m_id) values (90, 6, 16);
insert into generesmovie (gm, g_id, m_id) values (91, 1, 2);
insert into generesmovie (gm, g_id, m_id) values (92, 7, 2);
insert into generesmovie (gm, g_id, m_id) values (93, 2, 20);
insert into generesmovie (gm, g_id, m_id) values (94, 6, 16);
insert into generesmovie (gm, g_id, m_id) values (95, 8, 19);
insert into generesmovie (gm, g_id, m_id) values (96, 3, 14);
insert into generesmovie (gm, g_id, m_id) values (97, 9, 5);
insert into generesmovie (gm, g_id, m_id) values (98, 6, 18);
insert into generesmovie (gm, g_id, m_id) values (99, 7, 16);
insert into generesmovie (gm, g_id, m_id) values (100, 10, 4);

commit;




insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (1, 'Johnny', 'Depp', 56, 'Ukraine', 'Zaam-Dox', '100', 67, 'http://dummyimage.com/193x100.png/dddddd/000000');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (2, ' Jack', 'Nicholson ', 33, 'France', 'Temp', '159', 45, 'https://m.media-amazon.com/images/M/MV5BMTQ3OTY0ODk0M15BMl5BanBnXkFtZTYwNzE4Njc4._V1_UY209_CR5,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (3, ' Robert', 'De Niro', 4, 'Panama', 'Prodder', '145', 68, 'https://m.media-amazon.com/images/M/MV5BMjAwNDU3MzcyOV5BMl5BanBnXkFtZTcwMjc0MTIxMw@@._V1_UY209_CR9,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (4, 'Al', 'Pacino', 73, 'Russia', 'Greenlam', '95', 73, 'https://m.media-amazon.com/images/M/MV5BMTQzMzg1ODAyNl5BMl5BanBnXkFtZTYwMjAxODQ1._V1_UX140_CR0,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (5, ' Daniel', ' Day-Lewis ', 86, 'Colombia', 'Aerified', '23', 89, 'https://m.media-amazon.com/images/M/MV5BMjE2NDY2NDc1Ml5BMl5BanBnXkFtZTcwNjAyMjkwOQ@@._V1_UY209_CR9,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (6, 'Dustin', 'Hoffman', 88, 'China', 'It', '123', 37, 'https://m.media-amazon.com/images/M/MV5BMTc3NzU0ODczMF5BMl5BanBnXkFtZTcwODEyMDY5Mg@@._V1_UY209_CR8,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (7, 'Tom', 'Hanks', 97, 'Dominican Republic', 'Tin', '45', 33, 'https://m.media-amazon.com/images/M/MV5BMTQ2MjMwNDA3Nl5BMl5BanBnXkFtZTcwMTA2NDY3NQ@@._V1_UY209_CR2,0,140,209_AL_.jpg');

insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (8, 'Anthony', 'Hopkins', 42, 'China', 'Redhold', '765', 39, 'https://m.media-amazon.com/images/M/MV5BMTg5ODk1NTc5Ml5BMl5BanBnXkFtZTYwMjAwOTI4._V1_UY209_CR5,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (9, 'Paul', 'Newman', 55, 'China', 'Y-find', '234', 7, 'https://m.media-amazon.com/images/M/MV5BODUwMDYwNDg3N15BMl5BanBnXkFtZTcwODEzNTgxMw@@._V1_UY209_CR15,0,140,209_AL_.jpg');

insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (10, 'Denzel', 'Washington', 43, 'Greece', 'Quo Lux', '132', 86, 'https://m.media-amazon.com/images/M/MV5BMjE5NDU2Mzc3MV5BMl5BanBnXkFtZTcwNjAwNTE5OQ@@._V1_UY209_CR8,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (11, 'Spencer', 'Tracy', 42, 'Czech Republic', 'Bytecard', '43', 35, 'https://m.media-amazon.com/images/M/MV5BMTIwNjE5NTc0OV5BMl5BanBnXkFtZTYwNDU5ODI2._V1_UY209_CR3,0,140,209_AL_.jpg');

insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (12, 'Laurence', 'Olivier', 42, 'Philippines', 'Fix San', '65', 96, 'https://m.media-amazon.com/images/M/MV5BMTkwNjYwNDE5M15BMl5BanBnXkFtZTYwNzg0MDQ2._V1_UY209_CR13,0,140,209_AL_.jpg');

insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (13, 'Michael', 'Caine', 8, 'Nigeria', 'Pannier', '32', 8, 'https://m.media-amazon.com/images/M/MV5BMjAwNzIwNTQ4Ml5BMl5BanBnXkFtZTYwMzE1MTUz._V1_UY209_CR5,0,140,209_AL_.jpg');

insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (14, 'Robin', 'Williams', 33, 'Ukraine', 'Alpha', '132', 89, 'https://m.media-amazon.com/images/M/MV5BNTYzMjc2Mjg4MF5BMl5BanBnXkFtZTcwODc1OTQwNw@@._V1_UX140_CR0,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (15, 'Morgan', 'Freeman', 23, 'Indonesia', 'Gembucket', '154', 93, 'https://m.media-amazon.com/images/M/MV5BMTc0MDMyMzI2OF5BMl5BanBnXkFtZTcwMzM2OTk1MQ@@._V1_UX140_CR0,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (16, 'Clint', 'Eastwood', 33, 'Latvia', 'Ronstring', '165', 67, 'https://m.media-amazon.com/images/M/MV5BMTg3MDc0MjY0OV5BMl5BanBnXkFtZTcwNzU1MDAxOA@@._V1_UY209_CR7,0,140,209_AL_.jpg');

insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (17, 'Ben', 'Kingsley', 94, 'Mozambique', 'Fixflex', '135', 52, 'https://m.media-amazon.com/images/M/MV5BOTU2Njg2NzM4M15BMl5BanBnXkFtZTgwNjYwNjQwMTI@._V1_UY209_CR7,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (18, 'Leonardo', 'DiCaprio', 13, 'Bulgaria', 'Voltsillam', '178', 55, 'https://m.media-amazon.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_UY209_CR7,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (19, 'Russel', 'Crowe', 16, 'Venezuela', 'Toughjoyfax', '67', 92, 'https://m.media-amazon.com/images/M/MV5BMTQyMTExNTMxOF5BMl5BanBnXkFtZTcwNDg1NzkzNw@@._V1_UX140_CR0,0,140,209_AL_.jpg');
insert into actor (a_id, a_name, a_surname, a_size, a_home_town, a_generes, a_movie_count, a_age, a_photo_path) values (20, 'Kevin', 'Spacey', 22, 'France', 'Trippledex', '34', 29, 'https://m.media-amazon.com/images/M/MV5BMTY1NzMyODc3Nl5BMl5BanBnXkFtZTgwNzE2MzA1NDM@._V1_UY209_CR58,0,140,209_AL_.jpg');






insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (1, 'Mohandis', 'Sayward', 69, 'Panama', 'Kanlam', '123', 90, 'https://m.media-amazon.com/images/M/MV5BMTQxOTg3ODc2NV5BMl5BanBnXkFtZTYwNTg0NTU2._V1_SX150_CR0,0,150,150_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (2, 'Yank', 'Freemantle', 63, 'China', 'It', '123', 49, 'https://m.media-amazon.com/images/M/MV5BMTIwMzAwMzg1MV5BMl5BanBnXkFtZTYwMjc4ODQ2._V1_SX150_CR0,0,150,150_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (3, 'Hilde', 'Ballantyne', 45, 'Czech Republic', 'Otcom', '132', 36, 'https://m.media-amazon.com/images/M/MV5BNjE3NDQyOTYyMV5BMl5BanBnXkFtZTcwODcyODU2Mw@@._V1_SX150_CR0,0,150,150_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (4, 'Britney', 'Gossage', 79, 'Vietnam', 'Bigtax', '132', 65, 'https://m.media-amazon.com/images/M/MV5BMTcyNDA4Nzk3N15BMl5BanBnXkFtZTcwNDYzMjMxMw@@._V1_SX150_CR0,0,150,150_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (5, 'Yalonda', 'Sheraton', 62, 'Philippines', 'Stim', '132', 65, 'https://m.media-amazon.com/images/M/MV5BMTY1NjAzNzE1MV5BMl5BanBnXkFtZTYwNTk0ODc0._V1_SX150_CR0,0,150,150_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (6, 'Carey', 'Srutton', 70, 'China', 'Daltfresh', '321', 15, 'https://m.media-amazon.com/images/M/MV5BMTgyMjI3ODA3Nl5BMl5BanBnXkFtZTcwNzY2MDYxOQ@@._V1_SX150_CR0,0,150,150_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (7, 'Amberly', 'Sacco', 34, 'Indonesia', 'Alphazap', '123', 22, 'https://m.media-amazon.com/images/M/MV5BMjcyNjk2OTkwNF5BMl5BanBnXkFtZTcwOTk0MTQ3Mg@@._V1_SX150_CR0,0,150,150_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (8, 'Marline', 'Hearnshaw', 44, 'Russia', 'Lotlux', '123', 5, 'https://m.media-amazon.com/images/M/MV5BYjFjOThjMjgtYzM5ZS00Yjc0LTk5OTAtYWE4Y2IzMDYyZTI5XkEyXkFqcGdeQXVyMTMxMTIwMTE0._V1_SY150_CR29,0,150,150_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (9, 'Wylma', 'Wyllis', 38, 'Sweden', 'Job', '312', 63, 'https://m.media-amazon.com/images/M/MV5BMTg3MDc0MjY0OV5BMl5BanBnXkFtZTcwNzU1MDAxOA@@._V1_SX150_CR0,0,150,150_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (10, 'Daryl', 'Kick', 47, 'Philippines', 'Zoolab', '312', 68, 'https://m.media-amazon.com/images/M/MV5BMTc4MjQwMzY0N15BMl5BanBnXkFtZTcwNTI1NTM1MQ@@._V1_SX150_CR0,0,150,150_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (11, 'Corene', 'Tredget', 90, 'Jamaica', 'Domainer', '123', 89, 'https://m.media-amazon.com/images/M/MV5BMTc1NDkwMTQ2MF5BMl5BanBnXkFtZTcwMzY0ODkyMg@@._V1_UX140_CR0,0,140,209_AL_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (12, 'Amandie', 'Howford', 48, 'Cuba', 'Bitchip', '213', 73, 'https://m.media-amazon.com/images/M/MV5BMTY4Mzk5Mzk4Ml5BMl5BanBnXkFtZTYwMTE2NDg0._V1_UY209_CR2,0,140,209_AL_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (13, 'Inna', 'O''Reilly', 1, 'France', 'Bigtax', '124', 20, 'https://m.media-amazon.com/images/M/MV5BMjM3NzIzMzg4M15BMl5BanBnXkFtZTcwOTA1Mzg3Mw@@._V1_UX140_CR0,0,140,209_AL_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (14, 'Karlyn', 'Lorinez', 71, 'China', 'Regrant', '142', 55, 'https://m.media-amazon.com/images/M/MV5BOTQ5NjYwODg1MF5BMl5BanBnXkFtZTgwMTA2NzI2MDE@._V1_UY209_CR87,0,140,209_AL_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (15, 'Byran', 'Goodge', 74, 'Philippines', 'Holdlamis', '321', 28, 'https://m.media-amazon.com/images/M/MV5BMTI1MjU3MTI2MF5BMl5BanBnXkFtZTcwMDgxNTE4MQ@@._V1_UY209_CR1,0,140,209_AL_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (16, 'Ronnie', 'Bernardon', 47, 'Indonesia', 'Cookley', '123', 37, 'https://m.media-amazon.com/images/M/MV5BMTQ4MDA1ODIzMF5BMl5BanBnXkFtZTcwNDU0OTkxOA@@._V1_UY209_CR66,0,140,209_AL_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (17, 'Gerianne', 'Hollerin', 32, 'China', 'Home Ing', '123', 56, 'https://m.media-amazon.com/images/M/MV5BZmZmYzA1MWEtOTc5ZC00NzJlLThiYWItMGZkZDRiYzUwMDI2XkEyXkFqcGdeQXVyNjMwOTA1MDM@._V1_UX140_CR0,0,140,209_AL_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (18, 'Rica', 'Loos', 68, 'France', 'Cardify', '132', 48, 'https://m.media-amazon.com/images/M/MV5BZDVmMTBiYzAtYzc4NC00ZDBlLWI0MGMtODVlNTg3Y2ZhZmU5XkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UX140_CR0,0,140,209_AL_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (19, 'Saba', 'Tether', 25, 'France', 'Bigtax', '13', 21, 'https://m.media-amazon.com/images/M/MV5BMTI3NjIwNzQ2N15BMl5BanBnXkFtZTcwNTY0ODkyMg@@._V1_UX140_CR0,0,140,209_AL_.jpg');
insert into director (d_id, d_name, d_surname, d_size, d_home_town, d_generes, d_movie_count, d_age, d_photo_path) values (20, 'Robin', 'Ivanuschka', 26, 'Portugal', 'Duobam', '213', 91, 'https://m.media-amazon.com/images/M/MV5BMGJkOGM5OWEtNDYxMy00Njg4LWExNjAtY2ZlNWNlNzVhNDk4XkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_UX140_CR0,0,140,209_AL_.jpg');




insert into directormovie values (1, 1, 20);
insert into directormovie values (2, 2, 19);
insert into directormovie values (3, 3, 18);
insert into directormovie values (4, 4, 17);
insert into directormovie values (5, 5, 16);
insert into directormovie values (6, 6, 15);
insert into directormovie values (7, 7, 14);
insert into directormovie values (8, 8, 13);
insert into directormovie values (9, 9, 12);
insert into directormovie values (10, 10, 11);
insert into directormovie values (11, 11, 10);
insert into directormovie values (12, 12, 9);
insert into directormovie values (13, 13, 8);
insert into directormovie values (14, 14, 7);
insert into directormovie values (15, 15, 6);
insert into directormovie values (16, 16, 5);
insert into directormovie values (17, 17, 4);
insert into directormovie values (18, 18, 3);
insert into directormovie values (19, 19, 2);
insert into directormovie values (20, 20, 1);

commit;

CREATE OR REPLACE PROCEDURE deletemovie(p_userid IN movie.m_id%TYPE)
IS
BEGIN
  DELETE  movie where m_id = p_userid;
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE updatemovie(
	   p_userid IN movie.m_id%TYPE,
	   p_username IN movie.m_title%TYPE)
IS
BEGIN

  UPDATE movie SET  m_title = p_username where m_id = p_userid;
  
  COMMIT;
END;