# Users sign up for the site with an email and password
CREATE TABLE IF NOT EXISTS users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email    varchar(60) unique,
    password varchar(255),
    PRIMARY KEY (id),
    CONSTRAINT uc_email UNIQUE (email)
);
# Users create ads with a title and description and category. Each ad is associated with the user that created it.
CREATE TABLE IF NOT EXISTS ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title       varchar(40),
    description varchar(255),
    category    varchar(20),
    user_id     INT,
    FOREIGN KEY (user_id) REFERENCES users (id),
    PRIMARY KEY (id)
);
# An ad can be in one or more categories (for example, "help wanted", "giveaway", or "furniture")
CREATE TABLE IF NOT EXISTS categories
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category varchar(20),
    PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS categories_ads
(
    category_id INT,
    ads_id      INT,
    FOREIGN KEY (category_id) REFERENCES categories (id),
    FOREIGN KEY (ads_id) REFERENCES users (id)
);
# Write SQL queries to answer the following questions:
#
#
#
# For a given ad, what is the email address of the user that created it? (compared statement, it will auto select the question mark)
SELECT email
FROM ads
         JOIN users ON users.id = ads.user_id;
# For a given ad, what category, or categories, does it belong to?
SELECT category
FROM ads AS a
         JOIN categories_ads as ca on a.id = ca.ads_id
         JOIN categories AS cat ON ca.category_id = cat.id;
# For a given category, show all the ads that are in that category.
SELECT title
FROM categories AS cat
         JOIN categories_ads as ca on cat.id = ca.category_id
         JOIN ads ON ca.ads_id = ads.id;
#     For a given user, show all the ads they have posted.
SELECT title, description
FROM users
         JOIN ads ON users.id = ads.user_id
WHERE users.id = 5;