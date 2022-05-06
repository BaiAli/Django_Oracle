create table movis(id number , emp_ndame varchar(50), constraint coudn_id PRIMARy KEY (id));
drop table movis;
drop table movie;
CREATE TABLE person(
    p_id INT NOT NULL,
    p_nickname VARCHAR(50) NOT NULL,
    p_name VARCHAR(50) NOT NULL,
    p_surname VARCHAR(50) NOT NULL,
    p_age NUMBER(10) NOT NULL,
    PRIMARY KEY(p_id)
);

CREATE TABLE movie(
    m_id INT NOT NULL,
    m_imdb VARCHAR(200) NOT NULL,
    m_title VARCHAR(200) NOT NULL,
    m_release_date DATE NOT NULL,
    m_poster_path VARCHAR(200) NOT NULL,
    m_rating VARCHAR(200) NOT NULL,
    PRIMARY KEY(m_id)
);

CREATE TABLE movieUser(
    m_id INT NOT NULL,
    p_id INT NOT NULL,
    FOREIGN KEY(m_id) REFERENCES movie(m_id),
    FOREIGN KEY(p_id) REFERENCES person(p_id)
);

CREATE TABLE roles(
    r_id INT NOT NULL,
    r_name VARCHAR(200) NOT NULL,
    r_description VARCHAR(200),
    PRIMARY KEY(r_id)
);

CREATE TABLE personRoles (
    r_id INT NOT NULL,
    p_id INT NOT NULL,
    FOREIGN KEY (r_id) REFERENCES roles(r_id),
    FOREIGN KEY (p_id) REFERENCES person(p_id)
);

CREATE TABLE actor (
    a_id INT NOT NULL,
    a_name VARCHAR(200) NOT NULL,
    a_surname VARCHAR(200) NOT NULL,
    a_age NUMBER(37) NOT NULL,
    a_photo_path VARCHAR(200) NOT NULL,
    PRIMARY KEY(a_id)
);

CREATE TABLE actorMovie (
    a_id INT NOT NULL,
    m_id INT NOT NULL,
    FOREIGN KEY (a_id) REFERENCES actor(a_id),
    FOREIGN KEY (m_id) REFERENCES movie(m_id)
);

CREATE TABLE director (
    d_id INT NOT NULL,
    d_name VARCHAR(200) NOT NULL,
    d_surname VARCHAR(200) NOT NULL,
    d_age NUMBER(37) NOT NULL,
    d_photo_path VARCHAR(200) NOT NULL,
    PRIMARY KEY(d_id)
);

CREATE TABLE directorMovie (
    d_id INT NOT NULL,
    m_id INT NOT NULL,
    FOREIGN KEY (d_id) REFERENCES director(d_id),
    FOREIGN KEY (m_id) REFERENCES movie(m_id)
);