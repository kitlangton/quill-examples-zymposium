
-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:35:9
-- time: 2021-12-10T11:25:18.888547
SELECT person.id, person.first_name, person.last_name, person.age, address.owner_fk, address.street, address.zip, address.state FROM person person INNER JOIN address address ON address.owner_fk = person.id WHERE person.age > ?;


-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:43:9
-- time: 2021-12-10T11:25:19.200801
SELECT person.id, person.first_name, person.last_name, person.age FROM person person WHERE person.age > ?;


-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:34:9
-- time: 2021-12-10T11:25:43.556484
SELECT person.id, person.first_name, person.last_name, person.age, address.owner_fk, address.street, address.zip, address.state FROM person person INNER JOIN address address ON address.owner_fk = person.id WHERE person.age > ?;


-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:42:9
-- time: 2021-12-10T11:25:43.710494
SELECT person.id, person.first_name, person.last_name, person.age FROM person person WHERE person.age > ?;


-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:34:9
-- time: 2021-12-10T11:25:46.213642
SELECT person.id, person.first_name, person.last_name, person.age, address.owner_fk, address.street, address.zip, address.state FROM person person INNER JOIN address address ON address.owner_fk = person.id WHERE person.age > ?;


-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:43:9
-- time: 2021-12-10T11:25:46.306425
SELECT person.id, person.first_name, person.last_name, person.age FROM person person WHERE person.age > ?;


-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:34:9
-- time: 2021-12-10T11:25:57.46945
SELECT person.id, person.first_name, person.last_name, person.age, address.owner_fk, address.street, address.zip, address.state FROM person person INNER JOIN address address ON address.owner_fk = person.id WHERE person.age > ?;


-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:42:9
-- time: 2021-12-10T11:25:57.581552
SELECT person.id, person.first_name, person.last_name, person.age FROM person person WHERE person.age > ?;


-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:34:9
-- time: 2021-12-10T11:28:28.561068
SELECT person.id, person.first_name, person.last_name, person.age, address.owner_fk, address.street, address.zip, address.state FROM person person INNER JOIN address address ON address.owner_fk = person.id WHERE person.age > 100;


-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:42:9
-- time: 2021-12-10T11:28:28.644211
SELECT person.id, person.first_name, person.last_name, person.age FROM person person WHERE person.age > 100;


-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:34:9
-- time: 2021-12-10T11:32:02.467503
SELECT person.id, person.first_name, person.last_name, person.age, address.owner_fk, address.street, address.zip, address.state, address1.owner_fk, address1.street, address1.zip, address1.state FROM person person INNER JOIN address address ON address.owner_fk = person.id INNER JOIN address address1 ON address1.owner_fk = person.id WHERE person.age > 100;


-- file: /Users/kit/code/quill-2/src/main/scala/quixotic/Main.scala:43:9
-- time: 2021-12-10T11:32:02.541505
SELECT person.id, person.first_name, person.last_name, person.age FROM person person WHERE person.age > 100;

