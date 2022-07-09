
insert into Category values (1, 'food');
insert into Category values (2, 'drink');
insert into Category values (3, 'supplement');

--food
insert into Product(pname, quantity, image, pPrice, cid) values ('Pizza', 100, 'https://img.dominos.vn/Veggie-mania.jpg', 5, 1);
insert into Product(pname, quantity, image, pPrice, cid)  values ( 'Hamburger', 100, 'https://hamburgerdanang.com/wp-content/uploads/2021/03/the-ultimate-hamburger.jpg', 8, 1);
insert into Product(pname, quantity, image, pPrice, cid) values ( 'Hotdog', 100, 'https://kenh14cdn.com/2019/2/2/cr-health-inlinehero-healthy-hotdogs-07-18-15490912572491297258971.jpg', 3, 1);
insert into Product(pname, quantity, image, pPrice, cid) values ( 'Golden Apple', 100, 'https://goldenapplecannabis.com/wp-content/uploads/2015/11/golden-apple-768x450.png', 999, 1);
insert into Product(pname, quantity, image, pPrice, cid) values ( 'Donut', 100, 'https://images.unsplash.com/photo-1626094309830-abbb0c99da4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80', 3, 1);
insert into Product(pname, quantity, image, pPrice, cid) values ( 'Fried Chicken', 100, 'https://insanelygoodrecipes.com/wp-content/uploads/2020/04/Fried_Chicken-1024x536.png', 10, 1);
insert into Product(pname, quantity, image, pPrice, cid) values ( 'Fried French', 100, 'https://pbs.twimg.com/media/FJehAzbXsAgH6Sg.jpg:large', 10, 1);
insert into Product(pname, quantity, image, pPrice, cid) values ( 'Sausage', 100, 'https://www.kindpng.com/picc/m/270-2707027_grill-clipart-bbq-sausage-hot-dog-sausage-png.png', 5, 1);
insert into Product(pname, quantity, image, pPrice, cid) values ( 'Patato Snack', 100, 'https://sovina.vn/wp-content/uploads/2016/11/khoai-tay-chien-slide-kinh-do-vi-cheese-lon-160g_3082677577757980900-300x300.jpg', 25, 1);

--drink
insert into Product(pname, quantity, image, pPrice, cid) values ('Matcha Milk', 100, 'https://bizweb.dktcdn.net/thumb/large/100/302/982/articles/hollin-bubble-tea-matcha-819x1024.jpg?v=1591151043300https://bizweb.dktcdn.net/100/025/663/articles/matcha-dau-do.png?v=1599525073587', 50, 2);
insert into Product(pname, quantity, image, pPrice, cid) values ('Milktea', 100, 'http://gongcha.com.vn/wp-content/uploads/2018/10/Hinh-Web-OKINAWA-TR%C3%80-S%E1%BB%AEA.png', 6, 2);
insert into Product(pname, quantity, image, pPrice, cid) values ('Capuchino', 100, 'https://bonjourcoffee.vn/blog/wp-content/uploads/2020/01/capuchino.jpg', 7, 2);
insert into Product(pname, quantity, image, pPrice, cid) values ('Avorcado Smoothe', 100, 'http://bizweb.dktcdn.net/thumb/grande/100/041/028/products/sinhtobo.png?v=1513153642910', 10, 2);
insert into Product(pname, quantity, image, pPrice, cid) values ('Watermelon juice', 100, 'https://cdn.cet.edu.vn/wp-content/uploads/2020/06/cach-lam-nuoc-ep-dua-hau.jpg', 8, 2);
insert into Product(pname, quantity, image, pPrice, cid) values ('Orange juice', 100, 'https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2022/2/19/cach-lam-nuoc-cam-ep-ngon-va-thom-ket-hop-voi-le-va-gung-5-1645248090817401855254.jpg', 15, 2);
insert into Product(pname, quantity, image, pPrice, cid) values ('Lemon Tea', 100, 'https://www.unileverfoodsolutions.com.vn/dam/global-ufs/mcos/phvn/vietnam/calcmenu/recipes/VN-recipes/other/energizing-lemon-tea/main-header.jpg', 3, 2);
insert into Product(pname, quantity, image, pPrice, cid) values ('Coconut Water', 100, 'https://images.immediate.co.uk/production/volatile/sites/30/2017/08/coconut-water-bb9cfe8.jpg', 2407, 2);
insert into Product(pname, quantity, image, pPrice, cid) values ('Water', 100, 'https://www.priorlakemn.gov/home/showpublishedimage/1078/637384528077200000', 1803, 2);

-- Supplement
insert into Product(pname, quantity, image, pPrice, cid) values ('Whey Protein', 100, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfOky-UjmhvVs4x_FDd8OL_aS3FP7hluo2H0-7o4CvcAUf-ySGU_C6CLN4DzqJ218bXCc&usqp=CAU', 70, 3);
insert into Product(pname, quantity, image, pPrice, cid) values ('Golden Whey Protein', 100, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLPzpn-ssefLKokCLPkmmQwzLzmj_C9bSxsQ&usqp=CAU', 9999, 3);
insert into Product(pname, quantity, image, pPrice, cid) values ('Ostrovit Testo Booster', 100, 'https://wheyshop.vn/wp-content/uploads/2021/10/Ostrovit-Testo-Booster-90-vien-1-280x280.jpg', 24, 3);
insert into Product(pname, quantity, image, pPrice, cid) values ('ABE Pre Workout', 100, 'https://wheyshop.vn/wp-content/uploads/2019/11/ABE-Pre-Workout-30-servings-280x280.jpg', 50.5, 3);
insert into Product(pname, quantity, image, pPrice, cid) values ('Muscletech Alpha Test', 100, 'https://wheyshop.vn/wp-content/uploads/2022/06/muscletech-alpha-test-120-vien-280x280.jpg', 55, 3);
insert into Product(pname, quantity, image, pPrice, cid) values ('Mutant MADNESS', 100, 'https://wheyshop.vn/wp-content/uploads/2019/05/Mutant-MADNESS-30sv-280x280.jpg', 30.5, 3);
insert into Product(pname, quantity, image, pPrice, cid) values ('Mutant Mass', 100, 'https://wheyshop.vn/wp-content/uploads/2018/03/Mutant-Mass-5lbs-23kg-280x280.jpg', 50, 3);
insert into Product(pname, quantity, image, pPrice, cid) values ('Biotech Hyper Mass', 100, 'https://wheyshop.vn/wp-content/uploads/2019/05/Biotech-Hyper-Mass-8-280x280.jpg', 20, 3);
insert into Product(pname, quantity, image, pPrice, cid) values ('ON Pro Gainer', 100, 'https://wheyshop.vn/wp-content/uploads/2021/12/on-pro-gainer-10lbs-4-6kg-280x280.jpg', 28.99, 3);
