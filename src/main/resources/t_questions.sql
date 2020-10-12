DROP TABLE IF EXISTS T_QUESTIONS;

CREATE TABLE T_QUESTIONS (
                             id IDENTITY PRIMARY KEY,
                             question VARCHAR(8000),
                             a VARCHAR(255),
                             b VARCHAR(255),
                             c VARCHAR(255),
                             d VARCHAR(255),
                             right_an VARCHAR(255),
                             tags VARCHAR(255)
);


INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (1, 'A- Hello, what ______ your name?', 'is', 'are', 'am', 'be', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (2, '______ name is John. And my ______ is Johnson.', 'Your / surname', 'My / surname', 'I / surname', 'I / name', 'b', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (3, 'My name is Lisa. ______ Lisa Peterson.', 'My am', 'I is', 'I am', 'I', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (4, '______ name is Apple. ______ Ann Apple.', 'His / She', 'His / He’s', 'Her / She’s', 'His / His', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (5, '“Where ______ John from?” “______ from the US.”', 'is / He’s', 'is / His', 'am / He’s', 'is / She’s', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (6, '______ are you from? Japan.', 'What', 'Who', 'Where', 'When', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (7, 'Where ______ you ______ ?', 'is / from', 'are / in', 'are / is', 'are / from', 'd', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (8, '______ from Spain. I’m Rodriguez .', 'I’m', 'He’s', 'You’re', 'She’s', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (9, 'Pierre is a French boy. ______ from ______ .', 'He’s / France', 'His’s / French', 'His / France', 'He / France', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (10, 'Lisa and Max are Americans. ______ from U.S.A.', 'There', 'Their', 'They’re', 'Their’re', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (11, '“What ____ their _____?”
“Alexander and Philip.”', 'are/name', 'is / name', 'is / names', 'are / names', 'd', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (12, 'I ______ 22 years old, but Andrew ______ 20.', 'am / am', 'are / am', 'am / is', 'are / are', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (13, 'Mark______ 19, but Brian and Denis ______ 26 and 28.', 'is / are', 'are / is', 'are / are', 'am / are', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (14, '“What ______ this?”
“It’s ______ umbrella.”', 'are / a', 'is / a', 'is / an', 'its / an', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (15, 'Oxford is ______ English university.', 'an', 'the', 'a', '*', 'a', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (16, 'Toyotas ______ Japanese ______ .', 'is a / car', 'is / car', 'are / cars', 'is / cars', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (17, '“What is ______ ?”
“She is a bank manager.”', 'his job', 'she job', 'he job', 'her job', 'd', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (18, '0/2/11/18/20 Find the correct alternative.', 'oh / twelve / eighteen / twenty', 'zero / two / one-one / eighteen / twenty', 'zero / two / eleven / eighteen / twenty', 'zero / two / eleven / eighty / twenty', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (19, '“How old is your aunt?”
“______ is 29.”', 'She', 'He', 'She’s', 'He’s', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (20, '“Where ______ she from?”
“She ______ from Japan.”', 'are / is', 'is / is', 'is / am', 'are / are', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (21, 'This ______ my friend. ______ name’s Richard.', 'are / His', 'is / My', 'is / His', 'his / His', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (22, 'They ______ Lisa and Max. They ______ from the USA.', 'is / is', 'are / is', 'are / are', 'is / is', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (23, '“What is ______ name?” “My name’s Carlos.”', 'his', 'her', 'your', 'my', 'c', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (24, 'This is my sister. ______ name is Laura.', 'His', 'My', 'Her', 'Its', 'c', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (25, 'I have ______ brother. ______ name is David', 'an / His', 'a / Her', 'a / His', '* / His', 'c', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (26, 'Hello! My ___ ___ Maria. I ___ ___ Mexico.', 'name is / from am', 'is name / from am', 'name is / am from', 'name am / is from', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (27, 'Is Catherine ______ sister?', 'he', 'you', 'your', 'yours', 'c', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (28, 'We ______ students.', 'are a', 'is', 'are', 'am', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (29, 'I ______ student.', 'is / an', 'am / *', 'am / a', 'am / the', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (30, 'She ______ Italy.', 'are from', 'is at', 'is from', 'am from', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (31, 'He is ______ teacher.', 'a', 'an', '*', 'the', 'a', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (32, 'I live ______ a house ______ Los Angeles.', '* / in', 'in / in', 'in / *', 'at / in', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (33, '“______ is your phone number?”
“It’s 2229"', 'Where', 'How', 'What', 'Who', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (34, '“______ are you?”
“I’m Alex.”', 'Which', 'How', 'What', 'Who', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (35, 'What’s this ______ English?', '*', 'in', 'at', 'on', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (36, 'Champaigne is ______ French drink.', 'a', 'the', 'an', '*', 'a', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (37, 'Oxford is ______ English university.', 'a', 'an', 'the', '*', 'b', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (38, 'A Mercedes is ______ German car.', 'a', 'an', 'the', '*', 'a', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (39, 'English is ______ international language.', 'a', 'an', 'the', '*', 'b', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (40, 'Milan is ______ Italian city.', 'a', 'an', 'the', '*', 'b', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (41, 'A JVC is ______ Japanese camera.', 'a', 'an', 'the', '*', 'a', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (42, 'I have two ______ .', 'sister', 'sisters', 'a sister', 'sister’s', 'b', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (43, 'It’s ______ Spanish orange.', 'a', 'an', 'the', '*', 'a', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (44, 'It’s ______ green apple.', 'a', 'an', 'the', '*', 'a', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (45, '“_____ her name Eliza?”
“No, _____ .”', 'What / it isn’t', 'Is / she isn’t', 'Is / it is not', 'Is / it isn’t', 'd', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (46, 'Is your surname Anderson?', 'Yes, you are.', 'Yes, it is.', 'Yes, I am.', 'Yes, my is.', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (47, '“Is she American?”
“No, _____ .”', 'hers isn’t', 'she isn’t', 'she is not', 'she her isn’t', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (48, '“____ their names Jack & Benny?”
“Yes, _____ .”', 'Are / they are', 'Aren’t / there are', 'Am / their', 'Is / they’re', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (49, '“Is your dog 2 years old?”
“Yes, _____ .”', 'it’s', 'dog is', 'it is', 'its', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (50, '“Is your elder brother married?”
“No, _____ .”', 'brother isn’t', 'he isn’t', 'he is not', 'she isn’t', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (51, '“Are you from Senegal?”
“No, _____ .”', 'I’m not', 'I amn’t', 'I are not', 'I not', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (52, '“_____ Martha English?”
“Yes, she _____ .”', 'Is / isn’t', 'Are / is', 'Is / is', 'Are / is', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (53, '“_____ her surname Smith?”
“No, it _____ .”', 'What / isn’t', 'Is / is', 'Is / isn’t', 'Are / isn’t', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (54, '“Are you a student?”
“Yes, I _____ .”', 'am', 'have', 'is', '‘m not', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (55, '“_____ you from Barcelona?”
“No, I’m not.”', 'Is', 'Are', 'Do', 'Where', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (56, '“_____ you married?”
“No, I _____ .”', 'Aren’t / am', 'Are / am', 'Is / am not', 'Are / ’m not', 'd', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (57, '“_____ is Brenda?”
“She’s Patrick’s wife.”', 'What', 'Who', 'Which', 'Where', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (58, 'My teacher’s name _____ John.', 'are', 'is', 'am', 'not', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (59, 'Marcus and Carlos _____ my brothers.', 'is', 'am', 'are', 'be', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (60, 'My mother and father _____ at work.', 'is', 'am', 'are', '*', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (61, 'It _____ Monday today.', 'is', 'am', 'are', '*', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (62, 'This is the photo _____ my family.', 'in', 'at', 'of', 'on', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (63, 'It’s good practice _____ you.', 'for', 'at', 'of', 'in', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (64, 'I’m _____ home.', 'in', 'on', 'at', 'from', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (65, 'I’m _____ La Guardia Community College.', 'in', 'on', 'at', 'of', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (66, 'I’m _____ New York.', 'in', 'for', 'at', 'of', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (67, 'I’m _____ a class _____ eight other students.', 'in / for', 'at / of', 'in / with', 'at / off', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (68, 'I live _____ an apartment _____ two American boys.', 'in / of', 'at / with', 'in / with', 'of/with', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (69, 'Central Park is lovely _____ the snow.', 'at', 'in', 'of', 'with', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (70, '“_____ is his job?”
“He _____ a policeman.”', 'Which / is', 'What / are', 'What / is', 'Where / is', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (71, 'He _____ from Argentina. He is _____ Mexico.', 'is / from', 'isn’t / from', 'isn’t / in', 'aren’t / in', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (72, '“_____ _____ is a hamburger and chips?”
“Three pounds fifty.”', 'How many', 'How often', 'How much', 'How long
Find the opposite word.', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (73, 'easy - ______', 'cold', 'cheap', 'difference', 'difficult', 'd', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (74, 'lovely - ______', 'old', 'expensive', 'horrible', 'quick', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (75, 'fast - ______', 'slow', 'small', 'quick', 'warm', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (76, 'expensive - ______', 'big', 'cheap', 'cold', 'hot', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (77, 'hot - ______', 'cold', 'new', 'warm', 'small', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (78, 'big - ______', 'high', 'small', 'tall', 'slow', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (79, 'young - ______', 'old', 'big', 'small', 'quick', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (80, '“Are you married?”
“No, _____ .”', 'I am not', 'I’m not', 'I amn’t', 'I m not', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (81, 'Brazil ____ in Asia. ____ in South America.', 'is / It isn’t', 'is / It’s', 'is / Is', 'isn’t / It’s', 'd', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (82, 'Snow is _____ .', 'cold', 'hot', 'small', 'cheap', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (83, 'A: _____ Greek?
B: Yes, I am.', 'You', 'Are you', 'Am I', 'I', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (84, 'We _____ in a Russian class.
We _____ in an English class.', 'are / are', 'are / not', 'aren’t / are', 'are / am', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (85, 'Rolls-Royce cars are _____ .', 'cheap', 'blue', 'expensive', 'tall�', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (86, '“_____ your teachers married?”
“Yes, _____ .”', 'Is / he is', 'Is / he’s', 'Is / she is', 'Are / they are', 'd', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (87, '“Is it hot today?”
“No, _____ .”', 'it isn’t', 'it is not', 'it’s not', 'it not', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (88, '“Are _____ your parents?”
“Yes, _____ .”', 'they-their are', 'their-they are', 'they-they are', 'they-they', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (89, 'Eliza _____ from Greece. _____ from Poland.', 'is / Is', 'isn’t / She’s', 'is / Isn’t', 'is / Is not', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (90, 'Ann is _____ wife.', 'John’s', 'John is', 'John’s is', 'John', 'a', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (91, 'This is not just my computer. It is 4 _____ computer.', 'students’', 'students’s', 'student’s', 'student', 'a', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (92, 'A: What is _____ ?
B: She is a bank manager.', 'his job', 'she job', 'he job', 'her job', 'd', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (93, '“How old is your brother?”
“_____ 29.”', 'They are', 'I am', 'It is', 'He is', 'd', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (94, '“How old _____ Mr. & Mrs. White?”
“_____ 50 and 48.”', 'is / They', 'are / They’re', 'are / They', '*/ They are', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (95, '“How old ___, Andrew?”
“_____ 21 years old.”', 'are you / I’m', 'is he / He’s', 'is / He is', 'are / I', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (96, '“_____ you now?”
“I’m at the school.”', 'Where’s', 'Where’re are', 'Where’re', 'Where', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (97, '“Where _____ now?”
“In her office.”', 'is he', 'is she', 'is it', 'is', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (98, '“_____ is his father’s job?”
“He’s a teacher.”', 'Who', 'When', 'Why', 'What', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (99, 'This is those _____ toy.', 'kid’s', 'kid', 'kids’s', 'kids’', 'd', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (100, 'They are not my _____ books.', 'children’s', 'childs', 'children’', 'children of', 'a', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (101, 'They’re not his _____ mistakes.', 'friend’s', 'friend', 'friends', 'friends’s�', 'a', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (102, 'She _____ a uniform.', 'wear', 'to wear', 'wearing', 'wears', 'd', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (103, 'He _____ his car every weekend.', 'wash', 'washes', 'washing', 'washed', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (104, 'Rosemary _____ three languages.', 'speaks', 'talks', 'tells', 'know', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (105, 'My dad _____ at 7 o’clock everyday.', 'stands up', 'looks up', 'gets up', 'jumps up', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (106, 'Isabel is a flight attendant. She _____ passengers.', 'serve', 'to serve', 'serves', 'serving', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (107, 'Their son _____ in this hospital.', 'works', 'begins', 'starts', 'likes', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (108, 'Jim’s a postman. He _____ letters to people.', 'answers', 'works', 'delivers', 'serves', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (109, 'Jane’s a doctor. She _____ ill people.', 'looks at', 'speaks to', 'helps', 'serves drinks', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (110, 'Bern _____ in a flat in Birmingham.', 'lives', 'stands', 'has', 'wants', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (111, 'Nancy’s uncle is a pilot. He _____ all over the world.', 'goes', 'sees', 'travels', 'delivers', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (112, 'In winter Sheila _____ skiing and in summer _____ tennis.', 'makes / plays', 'goes / plays', 'does / plays', 'starts / *', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (113, 'My friend’s son _____ Turkish and English at university.', 'has', 'plays', 'studies', 'goes', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (114, 'Most of the people _____ work at 8 o’clock every morning.', 'finishes', 'goes', 'does', 'starts', 'd', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (115, 'A: _____ does Tony Blair live?
B: In Great Britain.', 'When', 'Where', 'What time', 'How', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (116, '_____ does your father do in his free time?', 'Why', 'What kind', 'How many', 'What', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (117, '_____ does Andy’s little brother play with?', 'Who', 'Why', 'How old', 'Where', 'a', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (118, 'A: _____ does Natalie’s nephew do?
B: He’s an architect.', 'How', 'Whom', 'When', 'What', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (119, 'A: _____ does it rain here?
B: Mostly in summer and winter.
A: _____ snow?
B: In winter.', 'When / Why', 'Why / How', 'What time / Whom', 'When / What about', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (120, 'A: _____ does Anthony go to work?
B: _____ bus.', 'How / By', 'How well / On', 'What kind / In', 'How / In', 'a', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (121, 'She _____ from England.', 'come', 'comes', 'don’t come', 'goes', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (122, '_____ she _____ French?', 'Do / speaks', 'Does / speaks', 'Does / speak', 'Is / speak', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (123, 'She _____ _____ from America.', 'don’t comes', 'doesn’t come', 'doesn’t comes', 'does comes', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (124, 'Every time he _____ a glass of lemonade before breakfast.', 'is', 'have', 'has', 'does', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (125, '_____ he _____ three children?', 'Does / have', 'Does / has', 'Do / have', 'Has / have', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (126, '_____ a shower.', 'Come', 'Go', 'Have', 'Has', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (127, '_____ the phone.', 'Go', 'Read', 'Look', 'Answer', 'd', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (128, 'She _____ a white coat.', 'wear', 'wears', 'does wear', 'have', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (129, '_____ a magazine.', 'Go', 'Read', 'Live', 'Has', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (130, 'Our teacher gives _____ a lot of homework.', 'our', 'us', 'her', 'his', 'b', 'obj_pron');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (131, 'He _____ television every evening.', 'watch', 'watches', 'see', 'buy', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (132, 'At ten we go _____ bed.', 'in', 'on', 'to', 'sleep', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (133, 'He picks up the apples _____ the tree.', 'for', 'from', 'on', 'at', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (134, 'Get _____ the bus.', 'on', 'in', 'to', 'out', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (135, 'She lives _____ Switzerland.', 'at', 'on', 'in', 'city', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (136, 'A nurse looks _____ people in hospital.', 'at', 'for', 'after', 'helps', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (137, 'There’s a letter _____ you.', 'for', 'to', 'about', 'on', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (138, 'Tourists come _____ boat.', 'by', 'to', 'of', 'with', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (139, 'He drives the children _____ school.', 'of', 'at', 'to', 'go', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (140, 'He speaks to people _____ his radio.', 'at', 'on', 'of', 'in', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (141, 'She likes going _____ walks _____ summer.', 'for / at', 'to / at', 'for / in', 'on / at', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (142, 'She goes skiing _____ her free time.', 'in', 'on', 'at', 'of', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (143, 'He works _____ an undertaker.', 'as', 'for', 'of', 'in', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (144, '“Does she live in Australia?”
“No, she _____.”', 'do', 'does', 'don’t', 'doesn’t', 'd', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (145, 'We _____ _____ watching television.', 'doesn’t like', 'do like', 'doesn’t like', 'don’t like', 'd', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (146, 'He _____ to help people.', 'flies', 'likes', 'runs', 'swims', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (147, '_____ _____ languages does she speak?', 'How much', 'How many', 'Why', 'Where', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (148, '_____ sells things.', 'A postman', 'A nurse', 'A doctor', 'A shopkeeper', 'd', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (149, 'A barman _____.', 'sells things', 'serves drinks', 'delivers letters', 'drinks a lot', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (150, '_____ _____ looks after money.', 'A nurse', 'A postman', 'An accountant', 'A dentist', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (151, '__________ designs buildings.', 'A pilot', 'An architect', 'An interpreter', 'An engineer', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (152, 'He lives ____ an island _____ the west of Scotland.', 'on / in', 'in / in', 'on / on', 'in / at', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (153, 'She’s married _____ an American man.', 'with', 'for', 'to', 'on', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (154, 'He _____ listening _____ music.', 'like / to', 'likes / to', 'likes / of', 'likes / with', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (155, '“How _____ he _____ to work?”
“By car.”', 'do / go', 'does / goes', 'does / go', 'does / play', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (156, 'Anna likes Joanna, but Maria doesn’t like _____.', 'her', 'them', 'your', 'their', 'a', 'obj_pron');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (157, 'That’s my dictionary. Can I have ___ back please?', 'it', 'you', 'them', 'my', 'a', 'obj_pron');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (158, 'Philippe _____ in London.', 'work', 'starts', 'comes', 'lives', 'd', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (159, '“_____ he married?”
“No, he _____.”', 'Is / doesn’t', 'Does / isn’t', 'Is / isn’t', 'Does / is', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (160, '“What _____ she do?”
“She is an interpreter.”', 'is', 'do', 'does', 'are', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (161, '_____ he sleep well?', 'Has', 'Have', 'Do', 'Does', 'd', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (162, 'What _____ you _____ at the weekend?', 'does / does', 'do / does', 'does / do', 'do / do', 'd', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (163, 'What _____ Dick and Tom like _____?', 'do / doing', 'doing / *', 'do / do', 'does / doing', 'a', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (164, 'Do boys like _____ jeans?', 'wear', 'wearing', 'to wear', 'worn', 'b', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (165, 'My classmates _____ on picnic every month.', 'went', 'goes', 'going', 'go', 'd', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (166, 'Mary _____ face every morning.', 'washes his', 'wash my', 'washes her', 'washes their', 'c', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (167, 'I _____ a cigarette, but my teacher _____ smoke.', 'don’t / smokes', 'smoke / doesn’t', 'smokes / smokes', 'smoke / don’t', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (168, 'They _____ wash _____ car every day.', 'don’t / my', 'don’t / his', 'don’t / their', 'don’t / our', 'c', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (169, 'My parents _____ eat meat.', 'don’t', 'aren’t', 'doesn’t', 'are', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (170, 'Summer holidays _____ in June.', 'begins', 'begin', 'beginning', 'began', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (171, 'We _____ tennis on Monday evenings, but my little sister _____ on
Sundays.', 'play / play', 'plays / plays', 'play / plays', 'plays / play', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (172, 'You _____ a lot of things in _____ free time.', 'do / our', 'does / your', 'do / my', 'do / your', 'd', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (173, 'My cat licks _____ tail every evening. But my dogs never lick _____
tails.', 'its / their', 'its / its', 'their / its', '* / *', 'a', 'possessives');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (174, 'I like _____ football, but my brother doesn’t.', 'play', 'played', 'playing', 'plays', 'c', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (175, 'She likes _____ TV, but her husband doesn’t.', 'watching', 'to watch', 'watches', 'watched', 'a', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (176, 'Her sister doesn’t _____ eating a hamburger.', 'like', 'likes', 'liking', 'liked', 'a', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (177, 'Do you like _____ in your free time?', 'read', 'reads', 'to read', 'reading', 'd', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (178, 'I like _____ but I _____ like swimming.', 'sailing / don’t', 'sail / doesn’t', 'sail / don’t', 'sail / do', 'a', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (179, 'Tom _____ her but she doesn’t like _____ .', 'like / her', 'likes / him', 'likes / he', 'like / him', 'b', 'obj_pron');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (180, 'Andrew buys a newspaper everyday. _____ reads _____ at home.', 'It / he', 'Him / it', 'He / it', 'His / it', 'c', 'obj_pron');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (181, 'Mike eats cheeseburgers because _____ likes _____ .', 'he / their', 'him / they', 'he / them', 'him / them', 'c', 'obj_pron');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (182, '“What time is it?”
“3:45”', 'It is quarter past three.', 'It is fifteen past four.', 'It is quarter to four.', 'It is fifteen to four.', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (183, 'It is half past eight.', '8:30', '7:30', '18:30', '17:30', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (184, 'It is quarter past eight.', '8:30', '7:30', '8:15', '17:15', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (185, 'It is five to nine.', '9:55', '9:35', '8:55', '9:05', 'c', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (186, 'It is five past nine.', '9:55', '9:35', '8:55', '9:05', 'd', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (187, 'A friend of mine likes _____ on picnic at weekends.', 'to go', 'going', 'goes', 'go', 'b', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (188, 'I _____ my teeth every morning.', 'brushing', 'brush', 'brushes', 'to brush', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (189, '_____ Kate live near Jane?', 'Is', 'Are', 'Do', 'Does', 'd', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (190, 'His father _____ , but Bill’s father _____ smoke.', 'smokes / don’t', 'smokes / doesn’t', 'smoke / don’t', 'smokes / isn’t', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (191, 'My father _____ driving.', 'doesn’t likes', 'don’t likes', 'doesn’t like', 'don’t like', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (192, 'She _____ a bus to university.', 'always takes', 'always take', 'takes always', 'take always', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (193, 'I _____ to a football match every Sunday but my father _____ .', 'go / don’t', 'goes / doesn’t', 'go / doesn’t', 'goes / don’t', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (194, 'Every year millions of people _____ The London Museum.', 'visit', 'go', 'come', 'want', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (195, 'The Buckingham Palace _____ lots of rooms.', 'have', 'has', 'to have', 'having', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (196, 'Visitors _____ to India ‘s Independence Day from all over the world.', 'visit', 'come', 'leave', 'goes', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (197, 'I _____ English, Russian, and Romanian, but I _____ Chinese.', 'speak / don’t speak', 'speaks / speak', 'speaks / speaks', 'speaks / don’t speak', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (198, 'Many foreigners in our country _____ to the Golden Bazaar.', 'buy', 'go shopping', 'want', 'come', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (199, 'A: What _____ you _____ ?
B: An architect.', 'do / do', 'does / do', 'are / do', 'do / are', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (200, 'A: What _____ your niece _____ ?
B: A nurse.', 'do / do', 'does / is', 'does / do', 'is / do', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (201, 'A: Where _____ your parents _____ ?
B: In the Ministry of Education.', 'do / do', 'do / work', 'are / work', 'work / *', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (202, 'A: _____ languages do they speak?
B: Just one.', 'What', 'How many', 'How', 'Which', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (203, 'A: Do you _____ Afghani?
B: No, _____ .', 'speak / you don’t', 'speak / I don’t', 'speak / don’t I', 'speaks / don’t speak', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (204, 'A: _____ does Margaret start work?
B: At 7 in the morning.', 'What time', 'What kind', 'What sort', 'What about', 'a', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (205, 'A: _____ do your brothers like working in this factory?
B: Because they earn much money.', 'What', 'When', 'Why', 'Whom', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (206, '_____ he like his job?', 'Does', 'Do', 'Is', 'Are', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (207, 'I _____ an accountant.', 'do', 'does', 'am', 'is', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (208, '_____ New York exciting?', 'Are', 'Do', 'Does', 'Is', 'd', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (209, 'Where _____ they live?', 'are', 'do', 'does', 'is', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (210, 'Why _____ you want to learn English?', 'do', 'are', '*', 'is', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (211, 'We _____ Algerians.', 'does', 'are', 'do', 'am', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (212, 'What _____ he do at weekends?', 'do', 'is', 'does', 'are', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (213, 'He plays football _____ Friday mornings.', 'in', 'on', 'at', 'of', 'b', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (214, 'Do you relax _____ weekends?', 'at', 'on', 'in', 'by', 'a', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (215, 'Where do you go _____ holiday?', 'at', 'in', 'of', 'on', 'd', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (216, 'I like _____ .', 'cooks', 'cooking', 'cook', 'cooked', 'b', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (217, 'She gets up early _____ the morning.', 'on', 'in', 'at', 'by', 'b', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (218, 'She gets up early _____ the weekdays.', 'at', 'of', 'on', 'in', 'c', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (219, 'He takes photos only _____ spring.', 'in', 'at', 'on', 'by', 'a', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (220, 'He hates _____ football _____ television.', 'watching / on', 'to watch / in', 'watch / on', 'watching / in', 'a', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (221, 'They like _____ very much.', 'sail', 'sailed', 'sailing', 'sail', 'c', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (222, 'My brother’s birthday is _____ March.', 'in', 'on', 'at', 'to', 'a', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (223, 'The train leaves Paris _____ 4 p.m.', 'in', 'at', 'on', 'by', 'b', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (224, 'Vancouver is very cold _____ winter.', 'at', 'in', 'on', 'to', 'b', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (225, 'Sometimes we _____ cards.', 'plays', 'playing', 'play', 'to play', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (226, 'She never _____ meat.', 'eats', 'eating', 'eat', 'to eat', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (227, 'We always _____ lemonade in the evenings.', 'to drink', 'has', 'drinking', 'have', 'd', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (228, 'A: I’m sorry. I’m late.
B: _____ Come and sit down.', 'Excuse me!', 'Don’t worry!', 'What’s the matter?', 'Why are you late?', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (229, 'A- _____ your wife _____ English?
B- Yes, she does.', 'Do / speak', 'Does / speaking', 'Does / speak', 'Do / speaking', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (230, '“How many languages _____ you _____ ?”
“Three: English, German and Spanish.”', 'does / speak', 'do / speak', 'do / speaking', 'does / speaking', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (231, 'Why _____ you like _____ in the hotel?', 'do / working', 'do / work', 'does / working', 'does / work', 'a', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (232, 'They never go out _____ Friday evenings .', 'on', 'in', 'at', 'by', 'a', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (233, 'She loves _____ to music.', 'listening', 'to listen', 'listens', 'listen', 'a', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (234, 'They often eat in a restaurant ___ Tuesdays.', 'on', 'in', 'of', 'at', 'a', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (235, '_____ summer I play tennis _____ Sundays.', 'In / in', 'At / on', 'In / on', 'At / in', 'c', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (236, '“Do Mr. Adams and his daughter like going _____ ?”
“No, they _____ .”', 'ski / don’t', 'skiing / don’t', 'skiing / do', 'ski / does', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (237, '“_____ they _____ a winter holiday?”
“Yes, they do.”', 'Do / wanting', 'Does / want', 'Do / want', 'Does / wanting', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (238, 'What time ____ you go to bed?', 'do', 'does', 'is', 'have', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (239, '“_____ do you do your homework?”
“After dinner.”', 'Where', 'What', 'How', 'When', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (240, '“_____ you go out on Friday evenings?”
“Yes, I do sometimes.”', 'Do', 'Where', 'Are', 'Does', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (241, '“_____ do you like your job?”
“Because it’s interesting.”', 'Why', 'What', 'How', 'Where', 'a', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (242, '“_____ do you travel to school?”
“By bus.”', 'How', 'What', 'Why', 'Where', 'a', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (243, '“____ ____ you live with?”
“With my mother and sisters.”', 'What / do', 'Who / do', 'Where / does', 'Who / does', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (244, '“_____ do you _____ on Sundays?”
“I always relax.”', 'How / doing', 'What / do', 'Where / does', 'What / relax', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (245, '“_____ do you _____ on holiday?”
“To Rome or Paris.”', 'Where / like', 'How / relax', 'Where / go', 'Why / go', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (246, 'A- _____ there _____ desk?
B- Yes, _____ is.', 'Is / * / there', 'Are / the / they', 'Is / a / there', 'Is / one / they', 'c', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (247, 'A- _____ there three stereos in the living room?
B- No, there _____ .', 'Are / aren’t', 'Are / are', 'Are / not', 'Are / *', 'a', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (248, 'Is there _____ apple in the bag?', 'a', 'an', 'the', '*', 'b', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (249, 'There _____ 4 _____ on the sofa?', 'are / woman', 'is / women', '* / woman', 'are / women', 'd', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (250, 'There _____ one bag. There _____ 3 bags.', 'isn’t / are', 'is / is', 'not / are', 'aren’t / are', 'a', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (251, 'There _____ 3 telephones, but _____ isn’t a cooker.', 'are / they', 'is / there', 'are / there', 'are / their', 'c', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (252, '_____ any men in the hall?', 'Are there', 'Are their', 'Are they', 'Is there', 'a', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (253, 'A: _____ there many mice in the house?
B: No, there _____ .', 'Are / are', 'Are / not', 'Are / aren’t', 'Are / *', 'c', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (254, '_____ there _____ chairs in the class?', 'Are / a', 'Are / some', 'Are / there', 'Are / any', 'd', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (255, 'Yes, there are _____ chairs, but there are not _____ desks.', 'some / any', 'any / some', 'any / any', 'some / some', 'a', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (256, 'A: _____ is there in the bedroom?
B: There _____ 2 beds, 3 televisions, and 2 cupboards.', 'How many / are', 'What / is', 'What / are', 'How many / is', 'c', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (257, 'A- _____ books _____ there under your desk?
B- There _____ one.', 'How much / are / is', 'How many / is / is', 'What / are / is', 'How many / are / is', 'd', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (258, 'There are _____ sandwiches, but there _____ any chips.', 'some / aren’t', 'any / aren’t', 'some / are', 'any / are', 'a', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (259, 'A: Do you have any _____ ?
B: No, I don’t. But I have _____ grammar books.', 'dictionary / any', 'a dictionary / some', 'dictionaries / some', 'dictionaries / any', 'c', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (260, 'There is _____ photo of _____ teachers.', 'some / some', 'a / some', 'some / any', 'any / some', 'b', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (261, 'How many _____ are there in the cupboard.', 'glass', 'of glasses', 'a glass', 'glasses', 'd', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (262, 'In our garden there is _____ huge pine tree, and there are _____
bushes.', 'a / a lot of', 'an / many', 'a / lot of', '* / many', 'a', 'much_many');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (263, 'Is there _____ garden?', 'any', '*', 'a', 'some', 'c', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (264, 'There’s _____ open-fire in the living room?', 'a', 'some', 'an', 'any', 'c', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (265, 'There are _____ big cupboards in the kitchen.', 'a', 'some', 'any', '*', 'b', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (266, 'Are there _____ trees and flowers in the garden?', 'a', 'some', 'any', '*', 'c', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (267, 'There’s _____ electric cooker.', 'an', 'some', 'any', 'a', 'a', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (268, 'There are _____ good restaurants nearby.', 'a', 'any', 'some', '*', 'c', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (269, 'Upstairs there’s _____ big bathroom.', 'some', 'a', 'an', 'any', 'b', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (270, 'Does the cottage have _____ dining room?', 'any', 'an', 'a', 'some', 'c', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (271, 'The village of the Kingmore has _____ post office and _____ shop.', 'some / a', 'some / any', 'a / a', 'an / a', 'c', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (272, 'Are there _____ good beaches near the cottage?', 'any', 'some', 'a', 'the', 'a', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (273, '“_____ there any cups?”
“Yes, ______ are.”', 'Are / there', 'There / is', 'This / is', 'Is / this', 'a', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (274, '“Is _____ a television?”
“Yes, there ____.”', 'this / are', 'there / is', 'this / is', 'that / is', 'b', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (275, 'There _____ any flowers.', 'are', 'is', 'aren’t', 'isn’t', 'c', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (276, 'It’s the best home _____ the world.', 'on', 'in', 'all', 'at', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (277, 'The front door is _____ the top of the steps.', 'on', 'at', 'in', 'by', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (278, 'There _____ a photo _____ the television.', 'are / on', 'is / in', 'is / on', 'are / in', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (279, 'There are two pictures _____ the wall.', 'at', 'on', 'of', 'in', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (280, 'The cinema is _____ the left.', 'in', 'at', 'off', 'on', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (281, '_____ there a table? Yes, there _____.', 'Are / are', 'Is / is', 'Are / is', 'Is / are', 'b', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (282, 'There _____ an armchair.', 'any', 'is', 'are', 'some', 'b', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (283, '“_____ there any photos?”
“No, there _____.”', 'Are / aren’t', 'Is / isn’t', 'Is / aren’t', 'Are/isn’t', 'a', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (284, 'There _____ magazines under the table.', 'is', 'are', 'some', 'any', 'b', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (285, 'There _____ a post box in front of the chemist’s.', 'are', 'is', 'some', 'any', 'b', 'there_is');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (286, 'How much are _____ glasses?', 'this', 'they', 'these', 'that', 'c', 'these_those');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (287, '“Is _____ book John’s?”
“Yes, _____ is.”', 'these / it', 'this / it', 'it / it’s', 'that / its', 'b', 'these_those');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (288, 'Take _____ bags into the kitchen.', 'these', 'this', 'that', 'it', 'a', 'these_those');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (289, 'I don’t like _____ music.', 'they', 'these', 'this', 'it', 'c', 'these_those');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (290, 'Bob, _____ is my mother.', 'these', 'it', 'this', 'that', 'c', 'these_those');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (291, '“Is _____ exercise very easy?”
“No, _____ isn’t.”', 'these / it', 'this / its', 'these / this', 'that / it', 'd', 'these_those');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (292, 'I like Tom, _____ I don’t like his wife.', 'and', 'but', 'because', 'so', 'b', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (293, 'I like living here _____ it’s near the shops.', 'because', 'so', 'and', 'but', 'a', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (294, 'We both like sailing, _____ we live near the sea.', 'and as', 'because', 'so', 'but', 'c', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (295, 'Our flat is small, _____ it’s comfortable.', 'but', 'so', 'because', 'and', 'a', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (296, 'New York is expensive, _____ I like it.', 'because', 'but', 'and', 'so', 'b', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (297, 'I like New York, _____ it’s very exciting.', 'because', 'but', 'and', 'so', 'a', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (298, 'I like Judy, _____ I often visit her.', 'so', 'because', 'but', 'for', 'a', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (299, 'I like Chinese food, _____ my husband doesn’t like it at all.', 'so', 'but', 'because', 'and', 'b', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (300, 'We live in a flat on the top floor, _____ we don’t have a garden.', 'so', 'but', 'because', 'and', 'a', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (301, 'I like my job _____ it’s interesting.', 'because', 'and', 'so', 'but', 'a', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (302, 'In my bedroom there’s a bed _____ a wardrobe.', 'but', 'so', 'and', 'also', 'c', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (303, 'Our homework ____ very difficult yesterday, but today it ____ easy.', 'is / is', 'was / is', 'was / was', 'is / was', 'b', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (304, 'I know that I _____ late 2 days ago, but this time I _____ late.', 'am / were', 'am not / am not', 'was / was', 'wasn’t / am', 'd', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (305, 'A: _____ was she born?
B: She _____ born in New Zealand.', 'Where / was', 'Where / were', 'When / were', 'When / was', 'a', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (306, 'A: _____ were they late for the meeting?
B: Because they _____ asleep.', 'What / were', 'Why / was', 'Why / were', 'Why / are', 'c', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (307, 'The weather _____ nice today, but it _____ nasty yesterday.', 'is / was', 'was / is', 'is / is', 'is / were', 'a', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (308, 'A: _____ was Mr. Black born?
B: He was born _____ 1963.', 'When / at', 'Where / in', 'What / in', 'When / in', 'd', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (309, 'The students _____ very tired today.
Because they _____ at a party last night.', 'were / are', 'are / was', 'are / were', 'were / were', 'c', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (310, 'A: _____ was Jennifer’s job 2 years ago?
B: She _____ a flight attendant.', 'Why / were', 'What / was', 'Who / was', 'Who / were', 'b', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (311, 'A: _____ is the briefcase?
B: It _____ 200 dollars, but it _____ 100 dollars before.', 'How much / is / was', 'How many / is / was', 'How much / was / is', 'How much / is / is', 'a', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (312, 'A: How old _____ you in 1990?
B: I _____ 10, but I _____ 25 now.', 'are / are / was', 'were / was / am', 'was / are / were', 'were / was / are', 'b', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (313, 'A: How _____ they after the accident?
B: They _____ shocked, but now they _____ better.', 'were / are / were', 'were / were / were', 'was / were / are', 'were / were / are', 'd', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (314, 'A: How much _____ the tea cups before?
B: They _____ 10 euros each, they _____ 8 euros now!', 'were / were / are', 'were / are / were', 'are / were / were', 'are / were / are', 'a', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (315, 'A: Where _____ they born?
B: They _____ born _____ .', 'were / were / in 1995', 'was / were / in Italy', 'were / were / in Denmark', 'was / were / in 1995', 'c', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (316, 'I _____ play chess _____ I was five.', 'can / when', 'could / when', 'could / what', 'can / where', 'b', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (317, '_____ could you do when you _____ seven.', 'Were / was', 'What / was', 'What / are', 'What / were', 'd', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (318, 'A: _____ languages _____ Nicola speak when he _____ a child?
B: 2 languages.', 'How many / could / was', 'How much / could / was', 'What / was / could', 'What / could / was', 'a', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (319, 'A: _____ languages could they speak when they _____ teenagers?
B: Italian and Russian.', 'Which / was', 'What / were', 'What / was', 'How / were', 'b', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (320, 'My little sister _____ paint pictures alone when she _____ nine, but
she _____ now.', 'could / can / can', 'can / was / could', 'couldn’t / was / can', 'was / can / could', 'c', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (321, 'Kim _____ ski 4 years ago, but he _____ ski very well now.', 'could / can', 'can / could', 'could / can’t', 'couldn’t / can', 'd', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (322, '_____ Ben and Jane married ten years ago?', 'Was', 'Were', 'Are', 'Is', 'b', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (323, 'Tim _____ run very well, but I _____ run like him, because I was bad
at running.', 'could / couldn’t', 'could / could', 'can / could', 'can / can', 'a', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (324, 'I _____ play football well, but I _____ play ice-hockey very well.', 'can’t / can', 'could / can’t', 'could / can', 'can / could', 'a', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (325, 'Last year they _____ in Europe, and visited Germany, _____ they
traveled only in Berlin.', 'was / but', 'were / but', 'were / so', 'was / and', 'b', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (326, 'I _____ born in Amsterdam _____ I live in New York now.', 'was / and', 'was / but', 'were / and', 'were / but', 'b', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (327, 'She _____ understand English, _____ she can’t speak it.', 'could / and', 'can / and', 'can / but', 'can’t / but', 'c', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (328, 'I love Netherlands, _____ I came to Amsterdam.', 'and', 'however', 'for', 'so', 'd', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (329, 'A: _____ you _____ the piano?
B: Yes, _____ .', 'Can / use / I can', 'Can / play / I can', 'Can / play / I', 'Can / use / *', 'b', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (330, 'A: _____ of food _____ our cook cook?
B: Italian & French food.', 'What of / can', 'Which / can', 'What kind / can', 'What / can', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (331, 'A: _____ can she _____ the guitar?
B: Very well.', 'How / play', 'Why / play', 'What / play', 'When / play', 'a', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (332, 'A: _____ can they _____ a computer?
B: In the office.', 'What time / use', 'Where / use', 'When / use', 'Where / using', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (333, 'A: _____ languages can her aunt _____ ?
B: 2 languages.', 'How many / speak', 'How much / speak', 'What / use', 'What / speak', 'a', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (334, 'A: _____ languages can Mrs. Brown speak?
B: English & Irish.', 'How', 'What', 'Why', 'Where', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (335, 'A: _____ can you cook Italian food for us?
B: On Friday evening.', 'What', 'When', 'What time', 'Why', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (336, 'A: _____ can my students come?
B: At 3 in the afternoon.', 'What', 'Where', 'How', 'What time', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (337, 'A: _____ can Alison go skiing?
B: On her winter holiday.', 'Where', 'Why', 'When', 'What', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (338, 'A: _____ Paul play rugby?
B: No, he can’t. But he can _____ baseball.', 'Can / play', 'Can / plays', 'Does / play', 'Does / play', 'a', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (339, 'A: _____ can’t you come to the party?
B: Because I have an exam tomorrow.', 'When', '*', 'Why', 'What', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (340, 'Adam _____ ride a motorbike and he _____ drive a car.', 'can’t / can', 'can / can', 'can / is', 'can / can’t', 'b', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (341, 'Adam _____ use a computer, but he _____ program a computer.', 'is / isn’t', 'can / can', 'can / can’t', 'can’t / can’t', 'c', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (342, 'Flora _____ drive a car but she _____ ride a motorbike.', 'can / can’t', 'is / can’t', 'can’t / can’t', 'is / can', 'a', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (343, 'The homework _____ very difficult yesterday.', 'were', 'was', 'is', 'could', 'b', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (344, 'The children _____ very tired today. They _____ at a party yesterday
evening.', 'were / was', 'are / were', 'was / was', 'am / was', 'b', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (345, 'Hello, everybody! I _____ sorry, I _____ late!', 'am / is', 'am / am', 'was / was', 'am / was', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (346, 'Was it hot yesterday?
Yes, it _____ .', 'is', 'was', 'were', 'wasn’t', 'b', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (347, 'She paints _____ two hours _____ bedtime.', 'at / to', 'for / at', 'for / until', 'until / for', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (348, 'Yesterday there was a party _____ my house.', 'at', 'in', 'for', 'on', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (349, 'I was _____ a party last night.', 'at', 'in', 'on', 'for', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (350, 'I could play chess when I _____ five.', 'am', 'were', 'was', 'is', 'c', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (351, 'Can I speak _____ you?', 'to', 'with', 'for', 'of', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (352, 'The weather _____ beautiful today. But it _____ terrible yesterday.', 'is / were', 'is / is', 'was / was', 'is / was', 'd', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (353, 'They were _____ England _____ 1998.', 'at / in', 'in / in', 'at / of', 'for / in', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (354, '“Where _____ you born?”
“I _____ born in India.', 'are / am', 'were / was', 'were / were', 'was / were', 'b', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (355, 'We _____ married when I _____ eighteen and Roger _____ twenty.', 'are / was / was', 'are / is / was', 'were / was / was', 'are / am / was', 'c', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (356, '“Where _____ your sister born?”
“She _____ born in India, too.”', 'were / was', 'are / is', 'was / was', 'was / were', 'c', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (357, '“_____ you drive?”
“No, I can’t.”', 'Could', 'Are', 'Can', 'Is', 'c', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (358, 'Only Sam _____ play the piano.', 'can', 'was', 'is', 'were', 'a', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (359, 'Nobody _____ play the guitar.', 'can’t', 'can', 'couldn’t', 'isn’t', 'b', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (360, 'I was _____ Adam’s party _____ Saturday.', 'in / at', 'at / on', 'in / on', 'on / at', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (361, 'Tom is _____ the garden _____ his friend Sam.', 'in / with', 'in / of', 'at / of', 'on / with', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (362, 'She was _____ the cinema _____ her brother.', 'in / in', 'on / of', 'at / with', 'of / with', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (363, 'John lives _____ home _____ his parents.', 'in / with', 'at / with', 'at / of', 'on / with', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (364, 'I go _____ work _____ bus.', 'to / by', 'at / on', 'to / with', 'by / to', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (365, 'I work _____ 6 a.m. _____ 6 p.m.', 'from / to', 'to / at', 'at / at', 'at / until', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (366, 'Look _____ this photo _____ my brother. Isn’t he tall?', 'at / of', 'of / on', 'in / in', 'in / at', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (367, 'Queen Elizabeth was born _____ London _____ 1926.', 'at / in', 'of / on', 'in / in', 'on / in', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (368, '“ Can you help me with my homework ?”
“_____ course I can; give it _____ me.”', 'Of / for', 'Of / to', 'It / at', 'For / of', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (369, '“Could she cook?”
“Yes, she _____”', 'can', 'is', 'could', 'was', 'c', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (370, '“_____ you cook Italian food?”
“No, I _____ but I love eating it.”', 'Are / am not', 'Can / can’t', 'Could / can’t', 'Can’t / can', 'b', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (371, 'Everybody _____ drive a car in my family.', 'was', 'can', 'is', 'are', 'b', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (372, '_____ you _____ any other languages?', 'Could / know', 'Could / use', 'Can / speak', 'Can / speaking', 'c', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (373, '“ _____ your friend speak English?”
“No, she _____ .”', 'Is / isn’t', 'Can / can’t', 'Could / could', 'Can/can', 'b', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (374, 'He _____ paint pictures when he was just three.', 'can', 'could', 'is', 'are', 'b', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (375, '“_____ you in England in 1999?”
“Yes, I _____ .”', 'Could / could', 'Are / am', 'Were / was', 'Was / were', 'c', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (376, '_____ you swim when you were five?', 'Could', 'Can', 'Do', 'Are', 'a', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (377, 'Where _____ you now?', 'were', 'do', 'are', 'is', 'c', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (378, 'What month _____ it last month?', 'was', 'is', 'were', 'did', 'a', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (379, '_____ your teacher speak English when he was seven?', 'Can', 'Could', 'Does', 'Are', 'b', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (380, 'He _____ some new shoes last month.', 'bought', 'buying', 'buy', 'buys', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (381, 'Where _____ you _____ on holiday last year?', 'did / went', 'go / did', 'did / go', 'do / go', 'c', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (382, 'A: _____ you _____ Jane last month?
B: No, I _____ .', '* / saw / didn’t', 'Did / see / didn’t', 'Did / saw / didn’t', 'Did / see / did', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (383, 'A: _____ did she _____ a job?
B: In the car factory.', 'When / get', 'Where / got', 'Who / get', 'Where / get', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (384, 'Max didn’t _____ yesterday afternoon; he _____ at home.', 'go out / stayed', 'go out / stay', 'went out / stayed', 'went out / stay', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (385, 'Geoffrey _____ French before, but he _____ at university now.', 'study didn’t / studies', 'didn’t study / study', 'did not study / studies', 'didn’t studied / studies', 'c', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (386, 'A: _____ did they have _____ lunch?
B: Soup & fish.', 'What / on', 'What / for', 'Where / in', 'Who / for', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (387, 'A: Where _____ you last week?
B: I _____ in Alabama.', 'were / were', 'was / is', 'were / was', 'was / were', 'c', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (388, 'I usually _____ for 6 hours a day, but I _____ for 8 hours yesterday.', 'work / worked', 'works / worked', 'worked / worked', 'work / work', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (389, 'Rosemary often _____ to work by bus, but she _____ to work by taxi
yesterday.', 'got / get', 'gets / got', 'get / got', 'got / got', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (390, 'Bonny and Nick _____ tennis last weekend, but they rarely _____
tennis.', 'played / play', 'play / play', 'play / plays', 'play / played', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (391, 'It _____ a lot in winter here, but it _____ last year.', 'snows / rains', 'snowed / rained', 'snow / rain', 'snows / rained', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (392, 'Last year it _____ for three months, but it _____ just for two weeks.', 'snows / rains', 'snowed / rained', 'snowing / raining', 'snow / raining', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (393, 'A: _____ it snow a little in winter in Holland?
B: Yes, it _____ . But last winter it _____ snow at all.', 'Do / do / didn’t', 'Does / do / doesn’t', 'Does / does / didn’t', 'Do / does / don’t', 'c', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (394, 'A: _____ you usually work for 8 hours a day?
B: Yes, I _____ . But last week I _____ for 8 hours a day.', 'Do / do / didn’t work', 'Do / did / didn’t worked', 'Did / did / don’t work', 'Do / did / don’t work', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (395, 'A: _____ Alex _____ you yesterday evening?
B: No, he _____ .', 'Did / helped / didn’t', 'Did / helped / did', 'Did / help / did', 'Did / help / didn’t', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (396, 'It _____ Jack’s birthday two days ago.', 'was', 'were', 'is', 'are', 'a', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (397, 'A: Who _____ you eat with?
B: Well, I _____ dinner with friends.', 'did / eat', 'did / eats', 'did / ate', 'did / eaten', 'c', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (398, 'Ann usually _____ to work, but yesterday she_____ .', 'drive / walks', 'drives / walked', 'drove / walked', 'drive / walk', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (399, 'It usually _____ a lot in winter but last year it _____ .', 'rains / snowed', 'rains / snows', 'rain / snowed', 'rain /snow', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (400, 'Ann and Max usually _____ sailing at weekends, but last weekend
they _____ tennis.', 'goes / played', 'go / played', 'went / play', 'went / played', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (401, 'My family left London and moved _____ a small village.', 'to', 'in', 'at', 'for', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (402, 'People all _____ the world speak English.', 'of', 'for', 'over', 'from', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (403, 'What do you know _____ George Washington?', 'with', 'about', 'for', 'off', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (404, 'Now she _____ alone, but when she was a child she _____ with her
mother and sisters.', 'live / lived', 'lives / lived', 'lived / lives', 'live / lived', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (405, 'Where _____ she live now ?', 'did', 'do', 'does', 'is', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (406, 'She _____ learn to read until she was 86.', 'didn’t', 'doesn’t', 'isn’t', 'don’t', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (407, 'Where _____ she live in 1950?', 'does', 'is', 'did', 'do', 'c', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (408, 'She _____ work when she was 8.', 'started', 'starts', 'start', 'starting', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (409, '“_____ you like the film?”
“No, I _____ .”', 'Are / am not', 'Did / didn’t', 'Do / didn’t', 'Are / didn’t', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (410, 'She thinks _____ her past life.', 'off', 'for', 'about', 'with', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (411, 'He was tired _____ politics.', 'of', 'at', 'from', 'with', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (412, 'She died _____ a car crash.', 'at', 'for', 'in', 'on', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (413, 'People were afraid _____ her.', 'from', 'of', 'at', 'on', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (414, 'I _____ in Paris when I was six.', 'lived', 'live', 'living', 'lives', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (415, 'We _____ move to London.', 'did', 'didn’t', 'aren’t', 'isn’t', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (416, '“When _____ you have your last holiday?”
“Last August.”', 'do', 'are', 'did', 'is', 'c', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (417, 'He _____ the school in 1994.', 'left', 'leaved', 'leave', 'leaves', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (418, 'He _____ his wife, Maria, in 1998.', 'met', 'meted', 'meet', 'meets', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (419, 'In my bedroom there’s a bed _____ a wardrobe.', 'but', 'so', 'and', 'also', 'c', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (420, 'Millions of people _____ to London for her Funeral when he died.', 'come', 'coming', 'came', 'comes', 'c', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (421, 'Peter stayed _____ his grandmother _____ Christmas.', 'at / in', 'to / in', 'on / at', 'with/at', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (422, 'We arrived _____ the airport _____ New York _____ 5:45 am.', 'at / in / at', 'to / in / at', 'on / at / at', 'at / at / in', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (423, 'Speak _____ me in English. It’s good practice _____ us.', 'to / with', 'of / of', 'to / for', 'with / on', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (424, 'There’s a postman _____ a letter _____ you.', 'with / for', 'with / to', 'at / to', 'at / at', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (425, 'I often think _____ the day we met.', 'off', 'on', 'about', 'for', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (426, 'Tuncay Atakan is an English teacher. He _____ English.', 'teaching', 'like', 'teaches', 'study', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (427, '‘Was there anyone at the office yesterday?’
‘ No, ______.’', 'they weren’t', 'there isn’t', 'there wasn’t', 'they didn’t', 'c', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (428, '‘Did she go to the cinema last night?’
‘No, she ______.’', 'did', 'wasn’t', 'can’t', 'didn’t', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (429, '‘_____ they come by train?’
‘No, they came by plane.’', 'Do', 'Does', 'Were', 'Did', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (430, 'I came to live here three years _____ .', 'ago', 'before', 'last', 'always', 'a', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (431, '_____ month I went to Paris.', 'This', 'That', 'Last', 'Next', 'c', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (432, 'In my family we _____ dinner at seven o’clock.', 'take', 'do', 'go', 'have', 'd', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (433, 'There’s a bank _____ the bookshop.', 'between', 'on', 'opposite', 'straight ahead', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (434, 'I usually take the car because I don’t like _____ .', 'working', 'running', 'going', 'walking', 'd', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (435, 'We _____ in a hotel in Frankfurt.', 'stayed', 'was', 'spent', 'had', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (436, '‘Where can I buy some medicine?’
‘At the _____ in Cook Street.’', 'chemist’s', 'bank', 'market', 'baker’s', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (437, '‘______ ?’
‘He’s very nice.’', 'What does he look like?', 'What’s he like?', 'How is he?', 'How does he look?', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (438, 'Prince Charles _____ Canadian. He _____ English.', 'is not / is', 'is not / was', 'was not / is', 'was not / were', 'a', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (439, 'I _____ to be _____ artist when I _____ a child.', 'wanted / an / was', 'want / a / was', 'wants / an / was', 'to want / an / is', 'a', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (440, 'He _____ blind _____ the car accident _____ the beach.', 'came / in / on', 'went / in / on', 'went / on / in', 'came / in / in', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (441, 'My friend _____ a present _____ me _____ the Ramadan Holiday
last year.', 'give / to / in', 'give / at / to', 'gives / to / at', 'gave / to / on', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (442, 'It _____ a lot _____ our holiday.', 'didn’t rain / during', 'didn’t / during', 'didn’t rained / on', 'not rain / in', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (443, 'What a man he is! He _____ his passport and_____ keys _____ his
car yesterday.', 'forgot / lose / of', 'forget / lost / of', 'forgot / lost / of', 'forgot / lost / from', 'c', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (444, 'A: Did you watch a football match _____ TV?
B: No, I didn’t. But it was broadcast _____ radio.', 'on / in', 'on / on', 'in / in', 'in / to', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (445, 'Can I talk _____ Mr. Adams _____ your mobile phone?', 'with / on', 'on / in', 'on / on', 'to / on', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (446, 'It _____ a really bad joke; no one laughed _____ his joke.', 'was / with', 'was / at', 'were / at', 'is / at', 'b', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (447, 'I learned _____ the Internet that a pop concert is _____ the third
_____ November.', 'in / on / of', 'on / in / of', 'in / in / of', 'on / on / of', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (448, 'Who’s the blonde girl _____ the first row?', 'in', 'on', 'at', 'over', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (449, 'You’ll find the poem _____ page 16.', 'at', 'on', 'in', '*', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (450, 'They lived in this city _____ 1980.', 'since', 'for', 'about', 'before', 'd', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (451, 'The Greens lived in London _____ six years.', 'since', 'for', 'in', 'at', 'b', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (452, 'A: _____ is Amanda’s birthday?
B: It is _____ the 25th _____ December.', 'What / on / in', 'When / on / of', 'When / in / on', 'What / on / of', 'b', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (453, 'A: What is _____ today?
B: Today is _____ 1st of _____ .', 'the day / the / May', 'the / the / Monday', 'the month / the / July', 'the date / the / October', 'd', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (454, 'A: When _____ Turkmenistan become Independent?
B: It _____ Independent on _____ .', 'did / became / the 27th of October, 1991.', 'became / did / 27 the 1991, October', 'did / became / the 27th of 1991, October', 'did / did / 1991, the 27th, October', 'a', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (455, 'A: _____ century is it now?
B: It is _____ .
A: What _____ the last century?
B: It was _____ .', 'What / the 21st century / was / the 20 century', 'What / the 21st century / was / the 20th century', 'What / the 21 century / is / the 20 century', 'When / the 21st century / was / the 20th century', 'b', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (456, 'A: _____ is the _____ month?
B: It is May.
A: Which is _____ 2 _____ month?
B: It is February.
A: Which is _____ 12th month?
B: It is December.', 'What / 5th / * / st / the', 'Which / 5 / the / th / the', 'Which / 5th / the / nd / the', 'Which / 5th / the / rd / the', 'c', 'ordinals');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (457, 'We _____ see Tom last night.', 'don’t', 'didn’t', 'doesn’t', 'isn’t', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (458, 'I _____ to the U.S.A. ten years ago.', 'went', 'go', 'visit', 'gone', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (459, 'What’s _____ television this evening?', 'at', 'on', 'in', 'of', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (460, 'Today’s the third _____ April.', 'in', 'on', 'of', 'at', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (461, 'I left the party early _____ I didn’t feel well.', 'because', 'but', 'until', 'so', 'a', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (462, 'They didn’t go to bed _____ midnight.', 'when', 'until', 'so', 'because', 'b', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (463, 'We met Ken’s brother last Saturday _____ they came for dinner.', 'but', 'until', 'when', 'so', 'c', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (464, 'I am _____ the mobile phone.', 'on', 'in', 'of', 'at', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (465, 'Some people try to find friends _____ the Internet.', 'at', 'on', 'in', 'of', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (466, 'We didn’t laugh _____ his joke.', 'at', 'with', 'for', 'on', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (467, 'There was a knock _____ the door.', 'of', 'in', 'at', 'for', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (468, 'We met fifty years _____ .', 'until', 'ago', 'of', 'after', 'b', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (469, 'I didn’t feel well _____ I left the party early.', 'so', 'because', 'but', 'until', 'a', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (470, 'Peter couldn’t speak _____ he was 6.', 'until', 'because', 'so', 'where', 'a', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (471, 'I didn’t enjoy math lessons _____ I was at school.', 'until', 'when', 'because', 'and', 'b', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (472, 'Sally didn’t buy the red shoes _____ she couldn’t afford them.', 'until', 'so', 'because', 'when', 'c', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (473, 'We met Ken’s wife _____ her parents last Saturday.', 'until', 'when', 'because', 'and', 'd', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (474, 'She _____ see me.', 'don’t', 'aren’t', 'isn’t', 'didn’t', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (475, 'Our teacher _____ come to school.', 'aren’t', 'isn’t', 'wasn’t', 'didn’t', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (476, 'Paul _____ read until he was eight.', 'can’t', 'can', 'couldn’t', 'could', 'c', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (477, 'I often _____ have a lot of time, so I _____ do the shopping myself.', 'don’t / don’t', 'doesn’t / does', 'didn’t / did', 'didn’t / didn’t', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (478, 'I _____ him three months ago.', 'see', 'sees', 'saw', 'seen', 'c', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (479, 'We _____ in 1965.', 'met', 'meets', 'meet', 'meeting', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (480, 'Princess Diana _____ in 1997.', 'die', 'died', 'dies', 'dye', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (481, 'Alice _____ back from America last month.', 'come', 'came', 'comes', 'coming', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (482, 'Their son _____ born at 2 o’clock this morning.', 'were', 'is', 'was', 'are', 'c', 'was_were');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (483, 'I _____ have a shower yesterday evening.', 'don’t', 'didn’t', 'doesn’t', 'haven’t', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (484, 'I _____ the answer now.', 'know', 'known', 'knows', 'knew', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (485, 'I _____ bread this morning.', 'buy', 'bought', 'sell', 'buying', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (486, 'He was born _____ 1955.', 'on', 'at', 'of', 'in', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (487, '130 __________', 'one hundred and thirty', 'one hundred and fifteen', 'one hundred and fifty', 'one hundred and thirteen', 'a', 'numbers');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (488, '862 __________', 'eight hundred and forty-two', 'eight hundred and sixty-two', 'eight hundred and sixty', 'eight hundred and sixteen', 'b', 'numbers');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (489, '999 __________', 'nine hundred and nineteen–nine', 'nine hundred and ninety-six', 'one thousand and ninety-nine', 'nine hundred and ninety-nine', 'd', 'numbers');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (490, '603 __________', 'six hundred and thirteen', 'six hundred and thirty', 'six hundred and three', 'six hundred and nine', 'c', 'numbers');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (491, '387 __________', 'three hundred and eighty-seven', 'three hundred and eighteen', 'three hundred and eighty', 'three hundred and eighty-eight', 'a', 'numbers');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (492, 'I liked the movie _____ I didn’t like the book.', 'until', 'but', 'so', 'when', 'b', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (493, 'I went to university, _____ Sandy didn’t.', 'until', 'so', 'but', 'and', 'c', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (494, 'She married _____ she was just eighteen.', 'when', 'until', 'but', 'and', 'a', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (495, 'We were together nearly every day _____ we left school twelve
years later.', 'when', 'until', 'so', 'and', 'b', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (496, 'I didn’t see Sandy very often _____ we talked on the telephone.', 'and', 'but', 'until', 'when', 'b', 'conj');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (497, 'We stopped for three-quarters of an hour _____ New York Airport.', 'at', 'in', 'over', 'on', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (498, 'Where is your mother? Is she _____ the hairdresser’s again?', 'in', 'on', 'at', '*', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (499, 'I’ll finish the work _____ two weeks.', 'by', 'for', 'since', 'in', 'd', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (500, 'I’ll be home _____ 7 o’clock.', 'by', 'in', 'on', 'since', 'a', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (501, 'He lived with Nomads _____ the Sahara desert for two years.', 'over', 'on', 'in', 'of', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (502, 'I won’t stay _____ bed; I’ll just lie down _____ the bed for an hour.', 'in / in', 'at / in', 'at / on', 'in / on', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (503, 'I last saw her _____ the car park.', 'in', 'under', 'on', '*', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (504, 'He grows corn _____ his farm.', 'over', 'with', 'at', 'on', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (505, 'They lived in Spain _____ the Second World War.', 'during', 'for', 'since', 'at', 'a', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (506, 'She opened her mouth so the doctor could look _____ her throat.', 'to', 'on', 'at', 'for', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (507, 'I cut myself _____ a knife.', 'by', 'with', 'in', 'over', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (508, 'You’d better go _____ the next plane to London.', 'at', 'in', 'by', 'on', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (509, 'She said hello _____ everyone except me.', 'to', '*', 'at', 'of', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (510, 'She is worried ______ her exams.', 'of', 'about', 'with', '*', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (511, 'Tell us _____ your holiday.', '*', 'of', 'about', 'with', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (512, 'Mr. Collins always talks ______ himself.', 'to', 'with', 'at', 'in', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (513, 'Is it possible for me to keep it _____ Tuesday?', 'by', 'at', 'since', 'until', 'd', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (514, 'Who’s the man _____ the funny hat?', 'in', 'from', 'at', 'to', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (515, 'Will you come _____ bus or _____ a late train ?', 'by-by', 'on-in', 'by-on', 'in-by', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (516, 'I saw an accident _____ my way home.', 'on', 'at', 'in', 'to', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (517, 'The doctor gave me a prescription _____ my cough.', 'with', 'to', 'at', 'for', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (518, 'I usually stay at home _____ night.', 'at', 'with', 'in', 'over', 'a', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (519, 'I called you _____ seven o’clock yesterday.', 'in', 'on', 'at', 'of', 'c', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (520, 'Can’t you come _____ your bicycle?', 'in', 'with', 'on', 'by', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (521, 'She arrived _____ Friday.', 'in', 'on', 'at', 'over', 'b', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (522, 'We’ll go _____ Rio _____ June.', '* - in', 'at - on', 'to - on', 'to - in', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (523, 'I was born _____ September 9th.', 'in', 'on', 'at', 'of', 'b', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (524, 'John and Mary are talking _____ the telephone.', '*', 'to', 'on', 'with', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (525, 'Classes began _____ last week.', 'in', '*', 'at', 'on', 'b', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (526, 'They took my temperature _____ the operation.', 'before', 'by', '*', 'of', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (527, 'Do you want sugar _____ your tea ?', 'with', 'on', 'by', '*', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (528, 'I’m afraid _____ falling trees.', 'from', 'of', 'with', 'at', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (529, 'She didn’t get a passing grade _____ her test.', 'from', 'with', 'at', 'of', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (530, 'I sometimes listen _____ the radio or watch _____ TV.', 'of - on', 'to - on', '* - to', 'to - *', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (531, 'I always lie down _____ a swim.', 'by', 'with', 'on', 'after', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (532, 'Did you stay _____ a tent on your last holiday?', 'in', 'over', 'on', 'of', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (533, 'She put a bandage _____ the boy’s cut finger.', 'at', 'to', 'on', 'in', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (534, 'He has a pain _____ his leg.', 'on', 'over', 'in', 'at', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (535, 'The Prime Minister arrived ____ Tokyo last night.', '*', 'in', 'at', 'to', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (536, 'I couldn’t get _____ school in time.', 'to', 'at', '*', 'in', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (537, 'Ann stirred her coffee _____ a spoon.', 'with', 'by', 'in', 'to', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (538, 'Would you like _____ rice?', 'a', 'some', 'an', 'any', 'b', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (539, 'Can I have _____ stamps, please?', 'a', 'an', 'some', 'any', 'c', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (540, 'Can you give me _____ money?', 'some', 'a', 'any', 'an', 'a', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (541, 'I usually have _____ biscuit and _____ cup of coffee at 11 a.m.', 'a/some', 'some/some', 'a/a', 'a/any', 'c', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (542, 'He always has _____ egg for breakfast.', 'an', 'a', 'any', 'the', 'a', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (543, 'Do you like _____ ?', 'cook', 'cooking', 'to cook', 'cooked', 'b', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (544, '“_____ you like some tea?”
“No, thanks.”', 'Does', 'Do', 'Would', 'Are', 'c', 'would_like');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (545, '“_____ you _____ your teacher?”
“Yes, he is a good man.”', 'Would / like', 'Do / like', 'Did / liked', 'Are / like', 'b', 'would_like');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (546, 'Would you like _____ apple or _____ strawberries?', 'a / any', 'an / some', 'any / any', 'a / some', 'b', 'would_like');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (547, 'Would you like _____ milk?', 'a', 'some', 'any', 'an', 'b', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (548, 'Do you like _____ homework ?', 'making', 'do', 'doing', 'does', 'c', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (549, 'I have got a book _____ Stephen King.', 'by', 'for', 'from', 'in', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (550, 'Help me _____ my homework.', 'to', 'with', 'of', 'about', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (551, 'There is _____ cheese on the table.', 'any', 'some', 'a', 'the', 'b', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (552, 'There are _____ oranges on the table.', 'any', 'an', 'a', 'some', 'd', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (553, '_____ rice is there?', 'How many', 'How much', 'How long', 'How', 'b', 'much_many');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (554, 'Are there _____ chips?', 'any', 'some', 'a', 'the', 'a', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (555, 'Can I have _____ tea?', 'a', 'the', 'any', 'some', 'd', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (556, 'I’d like _____ bananas.', 'any', 'a', 'an', 'some', 'd', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (557, 'Is there _____ tea?', 'a', 'the', 'some', 'any', 'd', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (558, '_____ coffee is there?', 'How many', 'How', 'How much', 'How long', 'c', 'much_many');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (559, 'There isn’t _____ coffee.', 'many', 'a', 'the', 'much', 'd', 'much_many');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (560, 'Can I have _____ bread?', 'a', 'some', 'any', 'an', 'b', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (561, 'Do you like _____ ?', 'shop', 'shopping', 'to shop', 'shopped', 'b', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (562, 'Do you like _____ English?', 'learn', 'learned', 'learning', 'learnt', 'c', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (563, 'She _____ the Rolling Stones records.', 'like', 'liking', 'likes', 'to like', 'c', 'like_doing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (564, 'Would you like to listen to _____ music?', 'any', 'some', 'many', 'a', 'b', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (565, 'I need to put _____ petrol in the car.', 'some', 'a', 'any', 'an', 'a', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (566, '_____ English books do you have?', 'How many', 'How some', 'How much', 'How any', 'a', 'much_many');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (567, 'I want _____ book from the library.', 'the', 'a', 'some', 'any', 'b', 'articles');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (568, 'Are there _____ letters for me this morning?', 'some', 'a', 'the', 'any', 'd', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (569, 'You have _____ lovely pictures in your house.', 'some', 'a', 'an', 'any', 'a', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (570, 'There was _____ rain during the night.', 'an', 'some', 'any', 'a', 'b', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (571, '“Are you Canadian?”
“No, but I have _____ good friends in Canada.”', 'any', 'a', 'an', 'some', 'd', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (572, 'Do you have _____ sisters or brothers?', 'some', 'a', 'the', 'any', 'd', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (573, '_____ I have a cheese sandwich, please?', 'Do', 'Does', 'Can', 'Am', 'c', 'can_could');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (574, 'I don’t have _____ milk left.', 'much', 'some', 'many', 'a', 'a', 'much_many');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (575, 'We have _____ of homework today.', 'many', 'a lot', 'much', 'a few', 'b', 'much_many');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (576, 'How _____ milk is there in the fridge?', 'much', 'a lot', 'many', 'a few', 'a', 'much_many');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (577, 'I’d like _____ mineral water.', 'any', 'a', 'the', 'some', 'd', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (578, 'Where do you come _____ ?', 'from', '*', 'of', 'in', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (579, 'We stayed _____ the Heathrow Hotel.', 'on', 'into', 'at', 'to', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (580, 'I waited _____ the bus-stop for ten minutes.', 'at', 'in', 'on', 'for', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (581, 'I’m not very good _____ mathematics.', 'of', 'on', 'in', 'at', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (582, 'What are you interested _____ ?', 'in', 'of', 'on', 'over', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (583, 'Please, put your homework _____ my desk.', 'at', 'to', 'on', 'with', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (584, 'It takes about five minutes to walk _____ the bridge.', '*', 'to', 'at', 'till', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (585, 'I took the train _____ Dover to Ostend.', 'by', 'on', '*', 'from', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (586, 'David was very busy _____ the afternoon.', '*', 'on', 'at', 'in', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (587, 'Toshio is _____ Japan. He isn’t American.', 'of', 'in', 'at', 'from', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (588, 'Bob ran 100 meters _____ 11 seconds.', 'in', 'at', 'on', 'with', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (589, 'They arrived _____ plane.', 'by', 'on', 'with', 'at', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (590, '“Did they come _____ bus ?”
No, they came _____ foot.', 'on / on', 'by / on', 'with / by', 'by / with', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (591, 'Switch _____ the light. It’s getting dark.', 'of', 'off', 'out', 'on', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (592, 'Is there a fridge _____ your kitchen?', 'at', 'on', 'with', 'in', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (593, 'I’m still waiting _____ the Blue Train.', 'to', '*', 'for', 'of', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (594, 'What was the temperature _____ Ankara yesterday?', 'at', 'of', 'in', 'off', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (595, 'I look forward _____ meeting you next month.', 'at', 'for', 'with', 'to', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (596, '“You can’t come in ____ a ticket,” the man told us.', 'without', 'through', 'by', 'with', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (597, 'I get up _____ six o’clock _____ Tuesdays.', 'at / on', 'at / in', 'about / at', 'around / in', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (598, 'My father takes a nap _____ dinner.', 'with', 'after', 'on', 'at', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (599, 'When people go _____ picnic they always eat a lot.', '*', 'on', 'to', 'at', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (600, 'Boys and girls go _____ dancing.', 'to', 'at', '*', 'with', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (601, 'When do you take _____ your wrist watch?', 'off', 'on', 'out', 'of', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (602, 'I’ll phone _____ you tomorrow.', 'to', 'at', 'on', '*', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (603, 'Our village lies _____ two high mountains.', 'among', 'over', 'in', 'between', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (604, 'You may write _____ a pen or _____ a pencil.', 'with / by', 'with / with', 'in / in', 'by / by', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (605, 'A lot of planes fly _____ the city every day.', 'on', 'through', 'over', 'between', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (606, 'They went _____ a museum.', 'to', 'at', 'of', '*', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (607, 'There were no planes _____ the past.', 'in', 'on', 'at', 'over', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (608, 'We waited _____ you _____ 11.00.', 'at / to', 'for / until', 'for / to', 'with / since', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (609, 'Marie Curie was born _____ Warsaw.', 'on', 'at', 'in', 'from', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (610, 'Chocolate _____ harmful for your teeth, but strawberries _____ useful
for your health.', 'is / is', 'are / is', 'are / are', 'is / are', 'd', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (611, 'There _____ apple juice in the fridge. And apples _____ so delicious.', 'are / are', 'is / are', 'is / was', 'is /is', 'b', 'to_be');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (612, 'Would you like _____ chips?', 'some', 'any', 'a', 'the', 'a', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (613, 'Would you like _____ tea _____ mineral water?', 'some / and', 'any / or', 'some / or', 'any / and', 'c', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (614, 'A: Is there _____ juice in the fridge?
B: No, there isn’t _____ juice, but there is _____ lemonade.', 'some / some / any', 'any / any / some', 'some / any / any', 'any / any / any', 'b', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (615, 'A: Would you like _____ oranges? Oh, sorry! There aren’t _____
oranges. But we have apples.
B: That’s all right. Can I have _____ tea?
A: OK.', 'any / any / some', 'some / any / some', 'any / some / any', 'some / some / any', 'b', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (616, 'A: _____ you like _____ cold water?
B: No, thanks. _____ ____ green tea.', 'Do / some / I love / some', 'Would / any / I’d love / any', 'Would / some / I’d love / some', 'Did / some / I liked / some', 'c', 'would_like');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (617, 'A: _____ you like _____ biscuit?
B: Yes, please. And I _____ some milk, too.', 'Would / a / ’d like', 'Do / a / would like', 'Would / some / ’d love', 'Would / * / would love', 'a', 'would_like');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (618, 'You are _____ me.', 'older', 'oldest', 'older than', 'older then', 'c', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (619, 'New York is _____ Paris.', 'dirty', 'dirtier than', 'the dirtiest', 'dirtier', 'b', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (620, 'Prague is one of the _____ cities in Europe,', 'most beautiful', 'more beautiful', 'beautiful', 'the most beautiful', 'a', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (621, 'How many children _____ they _____?', 'have / got', 'have / get', 'does / got', 'has / got', 'a', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (622, 'A country is quieter _____ a city.', 'with', 'to', 'than', 'ago', 'c', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (623, 'The house is 50 meters _____ the sea.', 'to', 'by', 'for', 'from', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (624, 'He spends his time _____ the banks of the river.', 'in', 'to', 'about', 'on', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (625, 'She came _____ the garage.', 'out', 'of', 'out of', 'up', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (626, 'He jumped _____ the lake.', 'into', 'to', 'in', 'at', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (627, 'He walked _____ the hill.', 'to', 'at', 'out', 'up', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (628, 'A country is _____ than a city.', 'cheap', 'cheaper', 'cheapest', 'more cheaper', 'b', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (629, 'A city is _____ than the country.', 'the most exciting', 'exciting', 'more exciting', 'excited', 'c', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (630, 'Your class is _____ than my class.', 'noisy', 'noisiest', 'noisier', 'more noisy', 'c', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (631, 'Life in a country is _____ in a city.', 'slow', 'slower than', 'slower', 'slowly', 'b', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (632, 'Brain’s car is _____ in our district.', 'fast', 'faster', 'the fastest', 'more fast', 'c', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (633, 'Paris is _____ Madrid.', 'big than', 'bigger', 'bigger than', 'biggest', 'c', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (634, 'Madrid is much _____.', 'cheap', 'cheaper', 'cheapest', 'the cheapest', 'b', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (635, 'Why did you leave London? You had a _____ job.', 'better', 'best', 'gooder', 'the best', 'a', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (636, 'London _____ got a lot of parks.', 'has', 'have', 'does', 'do', 'a', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (637, 'Our school ____ a library, but it doesn’t ____ any computers.', 'has / have', 'have / has', 'has / has', 'have / have', 'a', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (638, 'My parents _____ a new stereo.', 'has', 'have', 'have get', 'have got', 'd', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (639, 'Does your sister _____ a fiancé?', 'has', 'has got', 'have', 'has get', 'c', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (640, 'I don’t _____ a problem with this exercise.', 'has', 'to have', 'have', 'has got', 'c', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (641, 'Do you have _____ homework?', 'some', 'a', 'any', 'the', 'c', 'some_any');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (642, 'I’ve got _____ pencils than you.', 'many', 'more', 'much', 'most', 'b', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (643, 'The Plaza is the _____ hotel.', 'cheap', 'cheapest', 'the cheapest', 'cheaper', 'b', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (644, 'Claridge’s is the _____ hotel.', 'old', 'oldest', 'older', 'the oldest', 'b', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (645, 'The Plaza _____ a swimming pool.', 'have got', 'has got', 'does have', 'do has', 'b', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (646, 'I _____ for a walk in the country and ___ a farm.', 'went / see', 'go / saw', 'went / saw', 'look / saw', 'c', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (647, 'Yesterday was _____ than today.', 'most hottest', 'more hot', 'hot', 'much hotter', 'd', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (648, 'She’s _____ than her brother.', 'tall', 'tallest', 'taller', 'the tallest', 'c', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (649, 'She is smaller _____ her sister.', 'that', 'this', 'than', 'this', 'c', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (650, 'I’m the _____ in the class.', 'youngest', 'most youngest', 'young', 'younger', 'a', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (651, 'Last week was _____ than this week', 'busier', 'busiest', 'more busy', 'busy', 'a', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (652, 'He _____ got any sisters.', 'haven’t', 'doesn’t', 'hasn’t', 'don’t', 'c', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (653, 'Do you _____ any bread?', 'got', 'have', 'has', 'had', 'b', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (654, 'My homework is the _____ in class.', 'worst', 'worse', 'worthy', 'bad', 'a', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (655, 'This exercise is _____ difficult in the book.', 'most', 'more', 'the most', 'the more', 'c', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (656, 'I’m the most _____.', 'intelligent', 'clever', 'cleverer', 'the intelligent', 'a', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (657, 'Its university, founded ___ 1965, is one of the oldest in Europe', 'on', 'in', 'at', 'of', 'b', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (658, 'I’ve got a book _____ Mark Twain.', 'by', 'from', 'off', 'in', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (659, 'Help me _____ my homework.', 'in', 'by', 'with', 'on', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (660, 'These exercises are _____ in the exam.', 'the difficulties', 'the most difficult', 'the difficult', 'most difficult', 'b', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (661, 'His exam marks were _____ for several months.', 'the baddest', 'the bad', 'badder', 'the worst', 'd', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (662, 'Have you _____ any rice?', 'have', 'got', 'have got', 'had', 'b', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (663, 'Bill _____ got any friends.', 'has no', 'hasn’t', 'doesn’t', 'not', 'b', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (664, 'Last week was _____ than this week.', 'busy', 'more busy', 'busier', 'the busiest', 'c', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (665, 'Hey! You are _____ employee in our firm.', 'youngest', 'younger', 'young', 'the youngest', 'd', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (666, 'She is taller _____ her elder sister.', 'than', 'then', 'that', 'the', 'a', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (667, 'Yesterday it was ____ the day before yesterday.', 'colder the', 'colder than', 'colder them', 'colder', 'b', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (668, 'Nancy’s car is ____than mine, but Ben’s car is ____ car.', 'the most expensive / more expensive', 'more expensive / the most expensive', 'expensiver / expensivest', 'most expensive / the more expensive', 'b', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (669, 'Your essay was _____ than Jim’s, but it was _____ than Mary’s.', 'better / worse', 'gooder / badder', 'better / worst', 'best / worse', 'a', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (670, 'New houses are _____ than old ones.', 'more modern and clean', 'modern and cleaner', 'more modern and cleaner', 'moderner/cleaner', 'c', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (671, 'A: _____ she _____ a new job?
B: Yes, she does.', 'Has / got', 'Does / got', 'Does / *', 'Does / have', 'd', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (672, 'A: _____ they got any problems?
B: No, they _____ .', 'Have / haven’t', 'Do / have', 'Do / does', 'Does / has', 'a', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (673, 'Maya _____ got a camera. And she _____ have a car either.', 'haven’t / doesn’t', 'hasn’t / doesn’t', 'doesn’t / hasn’t', 'haven’t / don’t', 'b', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (674, 'She dived _____ the lake and went _____ the water quickly.', 'into / out of', 'in / out of', 'into / out', 'in / out', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (675, 'Who can run first _____ and _____ the hill?', 'up / on', 'upper / down', 'down / under', 'up / down', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (676, 'The chemist is 2 kilometers _____ the port.', 'off', 'from', 'along', 'via', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (677, 'Cairo is located _____ the banks _____ the Nile River.', 'of / on', 'on / off', 'on / of', 'in / of', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (678, 'Walk _____ this path and ____ the stream.', 'along / in', 'along / over', 'over / in', 'in / on', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (679, 'Go _____ the bus stop _____ is at the corner.', 'close / what', 'past / where', 'past / which', 'near / went', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (680, 'Drive me to the _____ , or I’ll be late _____ my plane.', 'port / of', 'airport / on', 'airport / for', 'port / of', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (681, 'Izmir is the sea _____ _____ hundreds of ships come to.', 'port / where', 'port / that', 'stop / which', 'port / when', 'a', 'rel_prons');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (682, 'Is there a car ____ _____ I can park my Porche?', 'center / where', 'park / where', 'station / where', 'bank / which', 'b', 'rel_prons');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (683, 'We went on picnic to the _____ of the Nile River _____ is very beautiful
in spring.', 'banks / where', 'where / banks', 'banks / which', 'which / banks', 'c', 'rel_prons');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (684, 'We _____ watching a good documentary _____ BBC World now.', 'are / in', 'am / on', 'are / on', 'is / in', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (685, 'I always _____ _____ credit card.', 'pay / by', 'am paying / with', '’m paying / by', 'pay / with', 'a', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (686, '_____ you _____ a girl _____ fair hair?', 'Do / knowing / of', 'Does / know / of', 'Do / know / with', 'Are / knowing / with', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (687, '_____ she got a dress _____ white?', 'Does / in', 'Has / on', 'Have / in', 'Has / in', 'd', 'have_got');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (688, '_____ is reading a letter _____ bed now.', 'She / in', 'I / in', 'You / on', 'He / at', 'a', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (689, 'A: What _____ you _____?
B: I’m a lecturer.', 'do / do', 'are / do', 'is / do', 'do / doing', 'a', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (690, 'A: What _____ she ____ now?
B: I don’t know.', 'does / do', 'do / do', 'is / doing', 'is / do', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (691, 'A: _____ are we _____?
B: To the class.', 'When / going', 'Where / go', 'When / go', 'Where / going', 'd', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (692, 'A: Oh no! It _____. We can’t go out.
B: It always _____ here in March.', 'is snowing / snows', 'snows / ’s snowing', '’s snow / snows', 'snows / snows', 'a', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (693, 'I _____. Because it’s my happiest day today.', 'jumping', 'jump', '’m jumping', 'jumped', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (694, 'Benedit and Nina are _____ only salads.
Because vegetarians don’t _____ meat.', 'eat / eat', 'eating / eating', 'eat / eating', 'eating / eat', 'd', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (695, 'Sorry, I _____ understand you. I _____ speak Russian.', 'do / don’t', 'do / do', 'don’t / don’t', 'am / am', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (696, 'A: Why _____ we _____ to a park?
B: A good idea!', 'do / go', 'don’t / go', 'aren’t / going', 'are / going', 'b', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (697, 'What _____ you _____ to know?', 'do / want', 'are / wanting', 'do / wanting', 'are / want', 'a', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (698, 'A: _____ she _____ a problem now?
B: No. She _____ _____ how to solve.', 'Is / solve / doesn’t / know', 'Does / solve / isn’t / knowing', 'Is / solving / doesn’t / know', 'Does / solving / doesn’t / know', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (699, 'Can you translate this letter _____ English _____ Chinese _____ me?', 'from / into / for', 'into / from / for', 'from / in / her', 'for / from / in', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (700, 'We watched the program called Hard Talk _____ CNN. Because we
are interested _____ politics.', 'in / to', 'on / from', 'on / in', 'off / of', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (701, '_____ child _____ playing in _____ yard.', 'Who’s / is / our', 'Whose / is / our', 'Whose / is / ours', 'Whose / are / our', 'b', 'my_mine');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (702, 'A: _____ are you doing under the trees?
B: I’m _____ my keys.', 'What / looking off', 'Whom / looking in', 'When / looking up', 'What / looking for', 'd', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (703, '_____ hair is blonder than _____.', 'Her / yours', 'Hers / yours', 'Her / your', 'Hers / your', 'a', 'my_mine');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (704, '_____ is hiding behind _____ car?', 'Whose / my', 'Who’s / mine', 'Who / my', 'Whose / mine', 'c', 'my_mine');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (705, 'I am _____ English.', 'study', 'to study', 'studying', 'studied', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (706, 'She’s _____ jeans.', 'wearing', 'wear', 'to wear', 'wore', 'a', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (707, 'I am _____ tennis this afternoon.', 'play', 'playing', 'to play', 'played', 'b', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (708, 'We are not _____ outside.', 'go', 'went', 'going', 'to go', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (709, 'Where are you _____?', 'go', 'going', 'to go', 'went', 'b', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (710, '“Are you ____ a good time?”
“Yes, we ____.”', 'having / are', 'have / is', 'having / do', 'have / aren’t', 'a', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (711, 'I _____ from Switzerland.', 'come', 'coming', 'to come', 'came', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (712, 'Is my English _____ better.', 'gets', 'get', 'getting', 'to get', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (713, 'Jane’s _____ her friend tonight.', 'sees', 'seeing', 'see', 'saw', 'b', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (714, 'He _____ as a clerk in a bank.', 'working', 'work', 'works', 'to work', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (715, '“Why are you _____ a suit?” “You usually wear jeans.”', 'wears', 'wore', 'wear', 'wearing', 'd', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (716, 'I read _____ bed.', 'at', 'in', 'to', 'under', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (717, 'We’ve got this jumper _____ red', 'in', 'to', 'with', 'at', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (718, 'He’s talking _____ Mandy.', 'with', 'to', 'at', 'for', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (719, 'There’s a girl _____ fair hair.', 'with', 'on', 'at', 'out', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (720, 'I’m looking _____ jumper.', 'at', 'for', 'on', 'in', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (721, 'I always pay _____ credit card.', 'in', 'on', 'at', 'by', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (722, 'He’s _____ down.', 'sit', 'sitting', 'sits', 'sat', 'b', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (723, 'It is _____ .', 'rains', 'to rain', 'raining', 'rained', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (724, 'I’m _____ gum.', 'chew', 'chewing', 'chews', 'chewed', 'b', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (725, 'I _____ a shower every morning.', 'am having', 'have', 'having', 'had', 'b', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (726, 'I like _____ house.', 'your', 'you', 'yours', 'your', 'a', 'my_mine');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (727, '_____ house is smaller than _____ .', 'Ours / theirs', 'Our / their', 'Ours / their', 'Our / theirs', 'd', 'my_mine');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (728, '_____ children are older than _____.', 'My / her', 'Mine / hers', 'My / hers', 'Mine / her', 'c', 'my_mine');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (729, '_____ talking to _____ sister?', 'Whose / yours', 'Who’s / your', 'Whose / your', 'Who’s / yours', 'b', 'my_mine');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (730, 'This book isn’t _____. Is it _____?', 'my / yours', 'mine / your', 'my / your', 'mine / yours', 'd', 'my_mine');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (731, '“_____ dictionary is this?” “It’s _____.”', 'Whose / him', 'Who’s / his', 'Whose / his', 'Who’s / him', 'c', 'my_mine');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (732, '“_____ going to the party tonight?”
“I am not.”', 'Whose', 'Which', 'Who’s', 'Where', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (733, 'And _____ garden is bigger than _____.', 'their / ours', 'theirs / ours', 'their / our', 'theirs / ours', 'a', 'my_mine');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (734, '_____ dog is running round _____ garden.', 'Whose / ours', 'Who’s/our', 'Whose / our', 'Who’s / ours', 'c', 'my_mine');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (735, 'I _____ tennis this afternoon.', '’m playing', 'play', 'playing', 'plays', 'a', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (736, 'We _____ pizza for dinner tonight.', 'having', 'have', 'are having', 'had', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (737, '_____ boots are these?', 'Whose', 'Which', 'What', 'Whose', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (738, '_____ do you do after school today?', 'Which', 'Why', 'What', 'Where', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (739, 'Where _____ you going tonight.', 'do', 'is', 'does', 'are', 'd', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (740, 'She _____ tennis every day.', 'play', 'playing', 'plays', 'to play', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (741, 'My daughter _____ French and German.', 'speaks', '’s speaking', 'speak', 'to speak', 'a', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (742, 'Sally _____ a breakfast at the moment.', 'has', 'having', 'is having', 'had', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (743, 'I’m not _____ to buy you lunch, today.', 'go', 'going', 'goes', 'to go', 'b', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (744, 'How many languages do you _____?', 'speaking', 'speaks', 'spoke', 'speak', 'd', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (745, 'She _____ to be a ballet dancer when she _____ up.', 'go / grow', 'going / grows', 'goes / grows', '’s going / grows', 'd', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (746, 'We _____ to stay in a villa in France this summer.', 'going', '‘re going', 'to go', 'go', 'b', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (747, 'I _____ Peter tonight.', '‘m seeing', 'see', 'seeing', 'to see', 'a', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (748, 'I’m going _____ Peter tonight.', 'see', 'seeing', 'to see', 'saw', 'c', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (749, 'Careful! The glass is _____ fall.', 'going', 'going to', 'goes to', 'go to', 'b', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (750, 'We _____ to Paris this weekend.', 'going', 'go', '‘re going', 'to go', 'c', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (751, 'Tom and Tim _____ for lunch tomorrow.', 'to come', 'coming', 'came', 'are coming', 'd', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (752, 'I’m saving my money _____ a CD player.', 'buying', 'to buy', 'buy', 'bought', 'b', 'infin');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (753, 'We’re going to Paris _____ a holiday.', 'to have', 'have', 'having', 'had', 'a', 'infin');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (754, 'I’m going to Florida _____ a year’s time.', 'at', 'on', 'in', 'by', 'c', 'time_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (755, 'He’s interested _____ flying.', 'at', 'in', 'on', 'with', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (756, 'She’s good _____ singing.', 'on', 'at', 'in', 'with', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (757, 'She was afraid _____ cars.', 'at', 'with', 'in', 'of', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (758, 'What’s the weather _____ today?', 'like', 'with', 'in', 'about', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (759, 'What’s _____ TV tonight?', 'in', 'at', 'on', 'by', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (760, 'There’s a film _____ channel 4.', 'at', 'in', 'by', 'on', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (761, 'What’s _____ the cinema?', 'on', 'at', 'on at', 'at on', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (762, 'They _____ both _____ to become TV stars.', 'are / go', 'are / going to', 'is / going', 'are / going', 'd', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (763, 'What’s she going _____ ?', 'do', 'doing', 'to do', 'did', 'c', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (764, 'She’s going _____ home.', 'to walk', 'walking', 'walk', 'to walking', 'a', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (765, 'She wants _____ in Paris and Moscow.', 'dancing', 'dance', 'is dancing', 'to dance', 'd', 'infin');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (766, 'They _____ going _____ a car this year.', 'aren’t / get', 'aren’t / getting', 'aren’t / to get', 'aren’t / got', 'c', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (767, '_____ he play tennis last Sunday?', 'Did', 'Does', 'Do', 'Are', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (768, '_____ he playing tennis now?', 'Are', 'Does', 'Is', 'Did', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (769, '_____ you wash it yesterday ?', 'Do', 'Does', 'Did', 'Are', 'c', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (770, 'I _____ going to wash it tonight.', 'do', 'am', 'are', 'do', 'b', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (771, 'We _____ having dinner at the moment.', 'do', 'is', 'are', 'did', 'c', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (772, '_____ you have a dinner at this time every evening?', 'Did', 'Do', 'Does', 'Are', 'b', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (773, 'What _____ your parents going to do when they retire?', 'is', 'do', 'are', 'did', 'c', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (774, 'When _____ your parents first meet?', 'did', 'does', 'do', 'are', 'a', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (775, 'What time _____ Maria usually arrive at school?', 'does', 'is', 'do', 'did', 'a', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (776, 'Look _____ that picture. Isn’t it beautiful?', 'on', 'at', 'in', 'by', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (777, 'What have we got _____ dinner?', 'at', 'of', 'for', 'from', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (778, 'Our hotel is fifty meters _____ the sea.', 'of', 'in', 'than', 'from', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (779, 'What is the longest river _____ the world?', 'at', 'on', 'in', 'at', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (780, 'France is bigger ____ England.', 'from', 'on', 'like', 'than', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (781, 'I’m looking _____ Jane. Do you know where she is?', 'about', 'for', 'at', 'in', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (782, 'Can you buy me a bottle _____ lemonade _____ the shop?', 'of / at', 'at / of', 'from / at', 'from / of', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (783, 'Maria is _____ her sister in many ways.
They’re both beautiful and intelligent.', 'from', 'like', 'of', 'about', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (784, 'What did you do _____ the weekend?', 'of', 'in', 'at', 'for', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (785, '_____ Saturday night we went to a party.', 'In', 'On', 'At', 'For', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (786, 'I _____ going out, because it _____ going to rain.', '‘m not / is', 'amn’t / is', 'isn’t / am', 'aren’t / is', 'a', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (787, '_____ you going _____ wash your car this afternoon?', 'Are / too', 'Are / to', '‘re / to', 'Am / to', 'b', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (788, 'She _____ going to the post office _____ some stamps.', 'is / to buy', 'is / for buying', '‘s / for to buy', '* / buy', 'a', 'infin');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (789, 'I’m _____ home early next week.', 'go', 'going for going', 'going', 'going to', 'b', 'pres_cont');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (790, 'What _____ the weather _____ in Las Vegas the day before yesterday.', 'were / like', 'was/as', 'is / like', 'was/like', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (791, 'A : _____ is the weather like _____ ?
B : _____ is sunny & warm. But yesterday _____ cold.', 'What / today / it / was', 'How / today / it / was', 'What / it / today / *', 'How / it / today / was', 'a', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (792, 'A : What _____ we _____ ?
B : _____ go swimming.', 'will / do / Let me', 'shall / do / Let’s', 'would / do / Let her', 'shall / do / Let me', 'b', 'fut_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (793, 'A: What is the weather _____ like tomorrow?
B: Sunny. _____ we go on picnic?', 'going to / Shall', 'going to be / Will', 'going to be / Are', 'going to be / Shall', 'd', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (794, 'A : _____ are you going to eat?
B : Pizza.
A : _____ ’re you going to eat?
B : In the cafeteria.', 'Where / What', 'What / Where', 'What / When', 'Who / Whom', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (795, 'A : _____ is Jim going to get married?
B : Next month.
A : _____ is he going to marry?
B : His colleague.', 'What time / Who', 'Who / Where', 'When / Whom', 'Where / *', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (796, 'A: _____ are you going to the chemist’s?
B: I’m going to the chemist’s _____ some medicine.', 'Why / too buy', 'Why / to buy', 'When / two buy', 'Where / buy', 'b', 'infin');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (797, 'A: _____ is Pittsburg _____ Ohio?
B: About 500 kilometers.', 'How long / from', 'How far / from', 'How big / off', 'How small / since', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (798, 'German is _____ English in some ways, but it is more difficult _____
English.', 'like / then', 'as / that', 'like / than', 'like / like', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (799, 'Nicola’s _____ to Liverpool _____ his grandparents.', 'coming / visit', 'to come/visit', 'going to come / to visit', 'coming / to visit', 'd', 'infin');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (800, '“_____ did the first man walk on the moon?”
“In 1969.”', 'When', 'Where', 'Who', 'What', 'a', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (801, '“_____ did she marry?”
“She married to John.”', 'What', 'Who', 'Which', 'Why', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (802, 'A _____ dog.', 'bigger than', 'big', 'biggest', 'the biggest', 'b', 'is_going_to');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (803, 'A _____ driver.', 'care', 'careful', 'carefully', 'the careful', 'b', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (804, 'She ran _____.', 'quick', 'quicker', 'quickly', 'the quickly', 'c', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (805, 'He drives too _____ .', 'fastly', 'fast', 'faster', 'fastest', 'b', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (806, 'What is the story _____?', 'of', 'on', 'at', 'about', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (807, 'What happened _____ the end of the story?', 'on', 'in', 'at', 'from', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (808, 'The train leaves _____ platform 9.', 'of', 'at', 'from', 'for', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (809, '“_____ did you buy your new jacket?”
“At supermarket.”', 'What', 'Where', 'When', 'How', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (810, '“_____ did you pay ?”
“$ 1000.”', 'How many', 'How', 'How much', 'Which one', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (811, '“_____ did you buy?”
“A new jacket.”', 'Who', 'When', 'How much', 'What', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (812, '_____ did you buy with?', 'Which one', 'Why', 'When', 'Who', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (813, '“_____ did you go?”
“This morning.”', 'Why', 'What', 'When', 'How', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (814, '“_____ did you go?”
“To buy some new clothes.”', 'When', 'Why', 'Where', 'How', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (815, '“_____ did you go?”
“To the shops.”', 'When', 'Why', 'Where', 'How', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (816, '“_____ did you go?”
“By car.”', 'When', 'Why', 'How much', 'How', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (817, '“_____ do you want to go?”
“To Paris.”', 'Why', 'Where', 'How', 'What', 'b', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (818, '“_____ is she?”
“Our cousin.”', 'Who', 'What', 'How', 'Where', 'a', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (819, '“_____ old was she?”
“60 years old.”', 'What', 'How much', 'How many', 'How', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (820, '_____ you like learning English?', 'Does', 'Are', 'Do', 'Have', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (821, 'What _____ you do last night?', 'does', 'did', 'do', 'done', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (822, 'How many languages _____ your mother speak?', 'do', 'are', 'does', 'is', 'c', 'present_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (823, 'When _____ you go shopping last?', 'do', 'does', 'are', 'did', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (824, '_____ do you weigh?', 'How many', 'How', 'How much', 'What', 'c', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (825, 'Smoking is a _____ habit.', 'badly', 'worth', 'worst', 'bad', 'd', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (826, 'The team played _____ and lost the match.', 'badly', 'worth', 'worst', 'bad', 'a', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (827, 'Please listen _____ .', 'careful', 'carefully', 'care', 'carely', 'b', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (828, 'The homework was the _____.', 'easy', 'easier', 'easily', 'easiest', 'd', 'compar');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (829, 'Peter’s very _____ at tennis. He won the game.', 'goodly', 'well', 'good', 'best', 'c', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (830, 'I know the Prime Minister _____ .', 'good', 'best', 'better', 'well', 'd', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (831, 'My husband’s a _____ cook.', 'bad', 'worst', 'badly', 'worse', 'a', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (832, 'Teachers work _____, but they don’t earn much money.', 'hardly', 'harder', 'hard', 'hardest', 'c', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (833, 'Lunch is a _____ meal for many people.', 'quick', 'quickly', 'quicker', 'quickest', 'a', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (834, 'Life in New York is very _____ .', 'excited', 'exciting', 'exciter', 'excitely', 'b', 'adj_ed_ing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (835, 'The teacher was _____ when nobody did the homework.', 'annoyed', 'annoying', 'annoy', 'annoys', 'a', 'adj_ed_ing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (836, 'The news is very _____ .', 'worried', 'worrying', 'worry', 'worringly', 'b', 'adj_ed_ing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (837, 'Everybody was very _____ about you.', 'worried', 'worrying', 'worry', 'worringly', 'a', 'adj_ed_ing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (838, 'The game of tennis was very _____ .', 'tired', 'tire', 'tiring', 'tires', 'c', 'adj_ed_ing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (839, '“_____ did the story take place?”
“A long time ago.”', 'How many', 'What', 'Where', 'When', 'd', 'question_word');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (840, 'We use adverbs _____ the beginning and the end of a sentence, but
sometimes _____ the middle of a sentence.', 'at / in', 'in / at', 'on / at', 'at / on', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (841, 'A train leaves _____ Berlin and arrives _____ Bonn in time.', 'from / to', 'from / in', 'from / at', 'in / from', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (842, 'A plane arrived _____ the airport _____ .', 'in / late', 'at / lately', 'at / late', 'in / lately', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (843, 'What is the story _____?', 'in', 'from', 'off', 'about', 'd', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (844, 'A - _____ is it _____ London _____ New York?
B - 6000 km.', 'How long / from / to', 'How fast / to / from', 'How much / from / to', 'How wide / from / to', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (845, 'My friend never comes school _____. He is always _____.', 'early / late', 'early / lately', 'earlily / lately', 'earlily / late', 'a', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (846, 'At first we draw _____ then _____.', 'quickly / slowly', 'quick / slowly', 'quickly / slow', 'quick / slow', 'a', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (847, 'They are _____ readers, they read _____.', 'slowly / hard', 'slow / hard', 'slow / hardly', 'slowly / hardly', 'b', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (848, 'I turned around _____, because there was a _____ shout.', 'immediately / sudden', 'immediate / suddenly', 'immediate / sudden', 'immediately / suddenly', 'a', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (849, 'Are you _____? Or is the book _____?', 'boring / boring', 'boring / bored', 'bored / bored', 'bored / boring', 'd', 'adj_ed_ing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (850, 'A- I am really _____ about my exam marks.
B- Oh, no! You are sometimes so _____.', 'worried / tired', 'worried / tiring', 'worrying / tired', 'worrying / tiring', 'b', 'adj_ed_ing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (851, 'I am _____ in the Mexican Culture, because it is _____ .', 'interesting / excited', 'interested / exciting', 'interesting / exciting', 'interesting / excited', 'b', 'adj_ed_ing');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (852, 'Be _____! Walk _____.', 'careful / quietly', 'careful / quiet', 'carefully / quietly', 'carefully / quiet', 'a', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (853, 'She paints _____; she is a _____ painter.', 'goodly / well', 'goodly / good', 'well / good', 'good / good', 'c', 'adverb');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (854, 'She _____ traveled to most parts of the world.', 'have', 'is', 'has', 'will', 'c', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (855, '_____ you ever _____ in a car accident?', 'Has / been', 'Have / been', 'Have / be', 'Have / was', 'b', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (856, 'She _____ to Russia two years ago.', 'go', 'went', 'gone', 'goes', 'b', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (857, 'I _____ in a crash when I _____ 10.', 'were / was', 'am / was', 'was / am', 'was / was', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (858, 'I _____ last night.', 'leave', 'leaves', 'leaving', 'left', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (859, '“_____ you _____ to Russia.”
“Yes, I _____ .”', 'Had / be / haven’t', 'Has / been / have', 'Have / be / have', 'Have / been / have', 'd', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (860, 'Have you _____ your homework?', 'do', 'to do', 'done', 'did', 'c', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (861, 'I haven’t done it _____ .', 'yet', 'already', 'just', 'since', 'a', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (862, 'I have _____ done it.', 'yet', 'ago', 'just', 'since', 'c', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (863, 'She has _____ to Portugal.', 'going', 'went', 'gone', 'went', 'c', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (864, 'She has _____ to Portugal.', 'be', 'been', 'being', 'were', 'b', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (865, 'She works _____ a big company.', 'to', 'with', 'for', 'of', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (866, '‘Hamlet’ is a play _____ Shakespeare.', 'of', 'by', 'at', 'on', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (867, 'Brad and Marilyn are _____ honeymoon.', 'on', 'for', 'at', 'of', 'a', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (868, 'Wait _____ me.', 'to', 'for', 'at', 'on', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (869, 'Monica _____ many tournaments?', 'have / won', 'has / win', 'have / win', 'has / won', 'd', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (870, '_____ she go to America 10 years ago?', 'Has', 'Does', 'Had', 'Did', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (871, 'Have they _____ been to Australia?', 'never', 'just', 'yet', 'ever', 'd', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (872, '_____ they go to Australia last month?', 'Have', 'Do', 'Has', 'Did', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (873, 'Has she won the Wimbledon Tennis Tournament _____ ?', 'just', 'yet', 'already', 'since', 'b', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (874, 'I’ve _____ the latest Star Wars film. I _____ it last week.', 'seen / saw', 'see / saw', 'seen / seen', 'saw / saw', 'a', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (875, 'She’s _____ the letter. She _____ it yesterday.', 'wrote / wrote', 'written / written', 'wrote / written', 'written / wrote', 'd', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (876, 'They’ve _____ lunch. They _____ it at 12 o’clock.', 'have / had', 'had / have', 'had / having', 'had / had', 'd', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (877, 'I’ve _____ my homework. I _____ it after supper.', 'done / done', 'did / done', 'done / did', 'did / did', 'c', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (878, 'A: Have you tidied your room _____ ?
B: Yes, I’ve _____ tidied it.', 'yet / just', 'just / yet', 'already / just', 'already / just', 'a', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (879, 'I’ve never _____ anyone who_____ more than you.', 'saw / eats', 'seen / eat', 'saw / eaten', 'seen / eats', 'd', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (880, 'Bob’s not here. He’s _____ to work.', 'been', 'went', 'gone', 'being', 'c', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (881, 'My brother’s _____ to America 4 times.', 'been', 'gone', 'went', 'being', 'a', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (882, 'It’s good to see you again. Where have you _____ ?', 'gone', 'being', 'been', 'went', 'c', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (883, 'Mary’s hair looks nice. She’s just _____ to the hairdresser’s.', 'gone', 'been', 'was', 'went', 'b', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (884, 'It’s terribly difficult to give _____ smoking.', 'on', 'off', 'of', 'up', 'd', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (885, 'Why don’t we turn _____ the T.V. to watch the news.', 'of', 'on', 'off', 'out', 'b', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (886, 'When I grow _____, I’m going to be a T.V. Star.', 'up', 'on', 'of', 'out', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (887, 'Angela _____ Thai food but Frank _____ .', 'have eaten / hasn’t', 'has ate / hasn’t', 'have ate / hasn’t', 'has eaten / hasn’t', 'd', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (888, 'I _____ John yesterday.', 'see', 'seen', '’m seeing', 'saw', 'd', 'past_simple');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (889, '_____ she already bought a new car?', 'Did', 'Has', 'Does', 'Have', 'b', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (890, 'They’ve _____ on a double-decker bus.', 'travel', 'traveled', 'traveling', 'travels', 'b', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (891, 'He _____ cooking when he _____ 15 years old.', 'started / was', 'has started / has been', '‘s started / was', 'started / has been', 'a', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (892, 'In 1992 I _____ for the Italian President
When he _____ to France.', 'cooked / has come', 'have cooked / came', 'cook / came', 'cooked / came', 'd', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (893, 'She is only 14 years old, but she _____ many tournaments in her life.', 'already won', '‘s already won', 'already win', '‘ve already won', 'b', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (894, 'I _____ been _____ Ireland.', 'have / too', 'have / to', 'has / to', 'has / too', 'b', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (895, '_____ Sandra _____ ridden a horse?', 'Has / never', 'Have / never', 'Have / never', 'Has / ever', 'd', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (896, '_____’ve _____ played golf.', 'They / yet', 'She / never', 'We / ever', 'I / just', 'd', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (897, 'When _____ the watchman _____ work?', 'has / started', 'did / start', 'started / *', '* / start', 'b', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (898, '_____ she _____ a new carpet yet?', 'Does / buy', 'Did / buy', 'Has / bought', 'Is / buying', 'c', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (899, 'A- Have your parents come _____?
B- Yes, they _____ just come.', 'yet / ’re', 'just / do', 'already / ’ve', 'yet / ’ve', 'd', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (900, 'Mason _____ his homework 10 minutes ago, but I’ve not finished
mine _____.', 'finished / yet', 'finish / just', 'finished / just', 'finish / just', 'a', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (901, 'A- Have you ever _____ a holiday in India?
B- Yes, we have. We _____ there in 2000.', 'had / ’ve gone', '* / went', 'had / went', 'have / went', 'c', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (902, 'A- Welcome back. _____ have you been?
B- I’ve _____ to Afghanistan.', 'Where / gone', 'Where / been', 'When / been', 'When / gone', 'b', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (903, 'There’s nobody in the class. All the students have _____ home.', 'been', 'went', 'gone', 'be', 'c', 'present_perfect');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (904, '_____ the TV and _____ the lights. Let’s watch news.', 'Turn out / turn off', 'Turn off / turn out', 'Turn back / on', 'Turn on / turn off', 'd', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (905, 'First he _____ his jumper, then _____ his best shirt.', 'took off / put on', 'took after / put on', 'turned up / tried on', 'tried on / turned up', 'a', 'voc');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (906, 'The new couples watched a play _____ Shakespeare _____ their
honeymoon.', 'of / in', 'by / on', 'off / at', 'by / in', 'b', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (907, 'When I _____ , I’m going to work _____ my dad’s company.', 'go out / in', 'give up / at', 'grow up / for', 'look up / on', 'c', 'preposition');
INSERT INTO T_QUESTIONS (id, question, a, b, c, d, right_an, tags) VALUES (908, 'Nurses _____ ill people, and gardeners _____ flowers & plants.', 'look after / grow up', 'look up / get up', 'look around / grow up', 'look before / get up', 'a', 'voc');
