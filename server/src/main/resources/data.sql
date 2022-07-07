DELETE FROM book;
ALTER TABLE book AUTO_INCREMENT = 1001;

DELETE FROM category;
ALTER TABLE category AUTO_INCREMENT = 1001;

INSERT INTO `category` (`name`) VALUES ('Classics'),('Fantasy'),('Wellness'),('Comedy'),('Romance');

-- insert Classics books
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Great Gatsby', 'F. Scott Fitzgerald', '', 999, 5, TRUE, TRUE, 1001);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Pride and Prejudice', 'Jane Austen', '', 799, 5, FALSE, FALSE, 1001);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Emma', 'Jane Austen', '', 1099, 5, FALSE, TRUE, 1001);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Picture Of Dorian Gray', 'Oscar Wilde', '', 999, 4, TRUE, TRUE, 1001);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Penguin Classics Anna Karenina', 'Leo Tolstoy', '', 1899, 4, TRUE, FALSE, 1001);

-- insert Fantasy books
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Lost Boy of Triletus: Book 1 of the Tales of Triletus', 'Wally Larson Jr. ', '', 2105, 4, TRUE, FALSE, 1002);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Hazel''s Shadow: A Novel', 'Nicole MacCarron', '', 1653, 3, FALSE, TRUE, 1002);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Black Witch', 'Laurie Forest', '', 2573, 4, TRUE, TRUE, 1002);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Saint''s Blood: The Greatcoats Book', 'Sebastien de Castell', '', 2221, 4, FALSE, TRUE, 1002);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Lost Continent (Wings of Fire, Book 11)', 'Tui T. Sutherland', '', 2276, 4, TRUE, FALSE, 1002);

-- insert Wellness books
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Wellness Witch', 'Nikki Van De Car', '', 2277, 4, TRUE, TRUE, 1003);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Medical Medium Cleanse to Heal', 'Anthony William', '', 5245, 5, FALSE, FALSE, 1003);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Psychology of Procrastination', 'Hayden Finch PhD', '', 1648, 5, FALSE, TRUE, 1003);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('No Worries', 'Bella Mente Press ', '', 1299, 4, TRUE, FALSE, 1003);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Can''t Hurt Me: Master Your Mind and Defy the Odds', 'David Goggins', '', 2200, 3, TRUE, FALSE, 1003);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Body Keeps the Score', 'Bessel van der Kolk M.D.', '', 1507, 3, TRUE, TRUE, 1003);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('How to Ikigai', 'Tim Tamashiro', '', 2428, 3, TRUE, FALSE, 1003);

-- insert Comedy books
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('It''s Not You It''s Him', 'Sophie Ranald', '', 1286, 4, TRUE, FALSE, 1004);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Over a God''s Dead Body', 'Joel Spriggs', '', 1899, 4, FALSE, TRUE, 1004);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Divine Comedy: A Dual-Language Book (English - Italian)', 'Dante Alighieri and Henry Wadsworth Longfellow', '', 3274, 4, FALSE, FALSE, 1004);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Divine Comedy', 'Dante Alighieri and Gustave Dore', '', 3364, 3, TRUE, FALSE, 1004);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Lessons in Chemistry', 'Bonnie Garmus', '', 2405, 4, TRUE, FALSE, 1004);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('That is Not Funny: How the Right Makes Comedy Work for Them', 'Matt Sienkiewicz and Nick Marx', '', 3180, 3, TRUE, FALSE, 1004);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('15 Minutes', 'Larissa Reinhart', '', 1999, 2, TRUE, TRUE, 1004);

-- insert Romance books
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Book Lovers', 'Emily Henry', '', 1525, 3, TRUE, FALSE, 1005);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Beach Read', 'Emily Henry', '', 5178, 4, TRUE, TRUE, 1005);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Regretting You', 'Colleen Hoover', '', 1142, 4, TRUE, TRUE, 1005);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Meant to Be: A Novel', 'Emily Giffin', '', 2475, 3, FALSE, FALSE, 1005);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('For Once in My Life', 'Colleen Coleman', '', 1187, 2, TRUE, FALSE, 1005);