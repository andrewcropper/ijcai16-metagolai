train_ex([robot_pos(1),end_pos(4),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,tea,cup(down,empty))])],[robot_pos(4),end_pos(4),places([place(1,coffee,cup(up,coffee)),place(2,tea,cup(up,tea)),place(3,tea,cup(up,tea))])]).
train_ex([robot_pos(1),end_pos(10),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,coffee,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,tea,cup(down,empty)),place(6,tea,cup(down,empty)),place(7,tea,cup(down,empty)),place(8,tea,cup(down,empty)),place(9,coffee,cup(down,empty))])],[robot_pos(10),end_pos(10),places([place(1,coffee,cup(up,coffee)),place(2,coffee,cup(up,coffee)),place(3,coffee,cup(up,coffee)),place(4,coffee,cup(up,coffee)),place(5,tea,cup(up,tea)),place(6,tea,cup(up,tea)),place(7,tea,cup(up,tea)),place(8,tea,cup(up,tea)),place(9,coffee,cup(up,coffee))])]).
train_ex([robot_pos(1),end_pos(6),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,tea,cup(down,empty))])],[robot_pos(6),end_pos(6),places([place(1,coffee,cup(up,coffee)),place(2,coffee,cup(up,coffee)),place(3,tea,cup(up,tea)),place(4,coffee,cup(up,coffee)),place(5,tea,cup(up,tea))])]).
train_ex([robot_pos(1),end_pos(3),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty))])],[robot_pos(3),end_pos(3),places([place(1,coffee,cup(up,coffee)),place(2,tea,cup(up,tea))])]).
train_ex([robot_pos(1),end_pos(6),places([place(1,tea,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,coffee,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,coffee,cup(down,empty))])],[robot_pos(6),end_pos(6),places([place(1,tea,cup(up,tea)),place(2,tea,cup(up,tea)),place(3,coffee,cup(up,coffee)),place(4,coffee,cup(up,coffee)),place(5,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(5),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,coffee,cup(down,empty))])],[robot_pos(5),end_pos(5),places([place(1,coffee,cup(up,coffee)),place(2,coffee,cup(up,coffee)),place(3,tea,cup(up,tea)),place(4,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(4),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,tea,cup(down,empty))])],[robot_pos(4),end_pos(4),places([place(1,coffee,cup(up,coffee)),place(2,tea,cup(up,tea)),place(3,tea,cup(up,tea))])]).
test_pos_ex([robot_pos(1),end_pos(6),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,coffee,cup(down,empty)),place(4,tea,cup(down,empty)),place(5,tea,cup(down,empty))])],[robot_pos(6),end_pos(6),places([place(1,coffee,cup(up,coffee)),place(2,tea,cup(up,tea)),place(3,coffee,cup(up,coffee)),place(4,tea,cup(up,tea)),place(5,tea,cup(up,tea))])]).
test_pos_ex([robot_pos(1),end_pos(3),places([place(1,tea,cup(down,empty)),place(2,coffee,cup(down,empty))])],[robot_pos(3),end_pos(3),places([place(1,tea,cup(up,tea)),place(2,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(3),places([place(1,tea,cup(down,empty)),place(2,tea,cup(down,empty))])],[robot_pos(3),end_pos(3),places([place(1,tea,cup(up,tea)),place(2,tea,cup(up,tea))])]).
test_pos_ex([robot_pos(1),end_pos(7),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,tea,cup(down,empty)),place(5,tea,cup(down,empty)),place(6,tea,cup(down,empty))])],[robot_pos(7),end_pos(7),places([place(1,coffee,cup(up,coffee)),place(2,tea,cup(up,tea)),place(3,tea,cup(up,tea)),place(4,tea,cup(up,tea)),place(5,tea,cup(up,tea)),place(6,tea,cup(up,tea))])]).
test_pos_ex([robot_pos(1),end_pos(5),places([place(1,tea,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,coffee,cup(down,empty))])],[robot_pos(5),end_pos(5),places([place(1,tea,cup(up,tea)),place(2,coffee,cup(up,coffee)),place(3,tea,cup(up,tea)),place(4,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(3),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty))])],[robot_pos(3),end_pos(3),places([place(1,coffee,cup(up,coffee)),place(2,tea,cup(up,tea))])]).
test_pos_ex([robot_pos(1),end_pos(7),places([place(1,tea,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,coffee,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,tea,cup(down,empty)),place(6,tea,cup(down,empty))])],[robot_pos(7),end_pos(7),places([place(1,tea,cup(up,tea)),place(2,coffee,cup(up,coffee)),place(3,coffee,cup(up,coffee)),place(4,coffee,cup(up,coffee)),place(5,tea,cup(up,tea)),place(6,tea,cup(up,tea))])]).
test_pos_ex([robot_pos(1),end_pos(8),places([place(1,tea,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,coffee,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,tea,cup(down,empty)),place(6,tea,cup(down,empty)),place(7,coffee,cup(down,empty))])],[robot_pos(8),end_pos(8),places([place(1,tea,cup(up,tea)),place(2,coffee,cup(up,coffee)),place(3,coffee,cup(up,coffee)),place(4,coffee,cup(up,coffee)),place(5,tea,cup(up,tea)),place(6,tea,cup(up,tea)),place(7,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(9),places([place(1,tea,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,coffee,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,coffee,cup(down,empty)),place(6,tea,cup(down,empty)),place(7,coffee,cup(down,empty)),place(8,coffee,cup(down,empty))])],[robot_pos(9),end_pos(9),places([place(1,tea,cup(up,tea)),place(2,coffee,cup(up,coffee)),place(3,coffee,cup(up,coffee)),place(4,coffee,cup(up,coffee)),place(5,coffee,cup(up,coffee)),place(6,tea,cup(up,tea)),place(7,coffee,cup(up,coffee)),place(8,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(10),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,tea,cup(down,empty)),place(6,coffee,cup(down,empty)),place(7,tea,cup(down,empty)),place(8,coffee,cup(down,empty)),place(9,coffee,cup(down,empty))])],[robot_pos(10),end_pos(10),places([place(1,coffee,cup(up,coffee)),place(2,tea,cup(up,tea)),place(3,tea,cup(up,tea)),place(4,coffee,cup(up,coffee)),place(5,tea,cup(up,tea)),place(6,coffee,cup(up,coffee)),place(7,tea,cup(up,tea)),place(8,coffee,cup(up,coffee)),place(9,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(3),places([place(1,tea,cup(down,empty)),place(2,tea,cup(down,empty))])],[robot_pos(3),end_pos(3),places([place(1,tea,cup(up,tea)),place(2,tea,cup(up,tea))])]).
test_pos_ex([robot_pos(1),end_pos(3),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty))])],[robot_pos(3),end_pos(3),places([place(1,coffee,cup(up,coffee)),place(2,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(6),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,tea,cup(down,empty)),place(5,coffee,cup(down,empty))])],[robot_pos(6),end_pos(6),places([place(1,coffee,cup(up,coffee)),place(2,tea,cup(up,tea)),place(3,tea,cup(up,tea)),place(4,tea,cup(up,tea)),place(5,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(7),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,tea,cup(down,empty)),place(5,coffee,cup(down,empty)),place(6,tea,cup(down,empty))])],[robot_pos(7),end_pos(7),places([place(1,coffee,cup(up,coffee)),place(2,tea,cup(up,tea)),place(3,tea,cup(up,tea)),place(4,tea,cup(up,tea)),place(5,coffee,cup(up,coffee)),place(6,tea,cup(up,tea))])]).
test_pos_ex([robot_pos(1),end_pos(4),places([place(1,tea,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,coffee,cup(down,empty))])],[robot_pos(4),end_pos(4),places([place(1,tea,cup(up,tea)),place(2,tea,cup(up,tea)),place(3,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(6),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,tea,cup(down,empty)),place(5,coffee,cup(down,empty))])],[robot_pos(6),end_pos(6),places([place(1,coffee,cup(up,coffee)),place(2,coffee,cup(up,coffee)),place(3,tea,cup(up,tea)),place(4,tea,cup(up,tea)),place(5,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(8),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,tea,cup(down,empty)),place(5,tea,cup(down,empty)),place(6,coffee,cup(down,empty)),place(7,coffee,cup(down,empty))])],[robot_pos(8),end_pos(8),places([place(1,coffee,cup(up,coffee)),place(2,coffee,cup(up,coffee)),place(3,tea,cup(up,tea)),place(4,tea,cup(up,tea)),place(5,tea,cup(up,tea)),place(6,coffee,cup(up,coffee)),place(7,coffee,cup(up,coffee))])]).
test_pos_ex([robot_pos(1),end_pos(10),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,tea,cup(down,empty)),place(5,tea,cup(down,empty)),place(6,tea,cup(down,empty)),place(7,coffee,cup(down,empty)),place(8,tea,cup(down,empty)),place(9,tea,cup(down,empty))])],[robot_pos(10),end_pos(10),places([place(1,coffee,cup(up,coffee)),place(2,coffee,cup(up,coffee)),place(3,tea,cup(up,tea)),place(4,tea,cup(up,tea)),place(5,tea,cup(up,tea)),place(6,tea,cup(up,tea)),place(7,coffee,cup(up,coffee)),place(8,tea,cup(up,tea)),place(9,tea,cup(up,tea))])]).
test_neg_ex([robot_pos(1),end_pos(5),places([place(1,tea,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,coffee,cup(down,empty))])],[robot_pos(5),end_pos(5),places([place(1,tea,cup(up,tea)),place(2,coffee,cup(up,tea)),place(3,tea,cup(up,tea)),place(4,coffee,cup(up,tea))])]).
test_neg_ex([robot_pos(1),end_pos(10),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,coffee,cup(down,empty)),place(6,tea,cup(down,empty)),place(7,tea,cup(down,empty)),place(8,tea,cup(down,empty)),place(9,tea,cup(down,empty))])],[robot_pos(10),end_pos(10),places([place(1,coffee,cup(up,coffee)),place(2,coffee,cup(up,coffee)),place(3,tea,cup(up,coffee)),place(4,coffee,cup(up,coffee)),place(5,coffee,cup(up,tea)),place(6,tea,cup(up,coffee)),place(7,tea,cup(up,tea)),place(8,tea,cup(up,coffee)),place(9,tea,cup(up,coffee))])]).
test_neg_ex([robot_pos(1),end_pos(7),places([place(1,tea,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,tea,cup(down,empty)),place(5,coffee,cup(down,empty)),place(6,tea,cup(down,empty))])],[robot_pos(7),end_pos(7),places([place(1,tea,cup(up,coffee)),place(2,tea,cup(up,coffee)),place(3,tea,cup(up,coffee)),place(4,tea,cup(up,coffee)),place(5,coffee,cup(up,tea)),place(6,tea,cup(up,tea))])]).
test_neg_ex([robot_pos(1),end_pos(4),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty))])],[robot_pos(4),end_pos(4),places([place(1,coffee,cup(up,coffee)),place(2,coffee,cup(up,tea)),place(3,tea,cup(up,tea))])]).
test_neg_ex([robot_pos(1),end_pos(6),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,coffee,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,tea,cup(down,empty))])],[robot_pos(6),end_pos(6),places([place(1,coffee,cup(up,tea)),place(2,tea,cup(up,coffee)),place(3,coffee,cup(up,coffee)),place(4,coffee,cup(up,tea)),place(5,tea,cup(up,coffee))])]).
test_neg_ex([robot_pos(1),end_pos(10),places([place(1,tea,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,coffee,cup(down,empty)),place(4,tea,cup(down,empty)),place(5,tea,cup(down,empty)),place(6,tea,cup(down,empty)),place(7,coffee,cup(down,empty)),place(8,coffee,cup(down,empty)),place(9,tea,cup(down,empty))])],[robot_pos(10),end_pos(10),places([place(1,tea,cup(up,coffee)),place(2,coffee,cup(up,tea)),place(3,coffee,cup(up,tea)),place(4,tea,cup(up,coffee)),place(5,tea,cup(up,tea)),place(6,tea,cup(up,coffee)),place(7,coffee,cup(up,tea)),place(8,coffee,cup(up,coffee)),place(9,tea,cup(up,coffee))])]).
test_neg_ex([robot_pos(1),end_pos(9),places([place(1,tea,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,coffee,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,coffee,cup(down,empty)),place(6,coffee,cup(down,empty)),place(7,coffee,cup(down,empty)),place(8,coffee,cup(down,empty))])],[robot_pos(9),end_pos(9),places([place(1,tea,cup(up,coffee)),place(2,tea,cup(up,coffee)),place(3,coffee,cup(up,coffee)),place(4,coffee,cup(up,coffee)),place(5,coffee,cup(up,tea)),place(6,coffee,cup(up,tea)),place(7,coffee,cup(up,tea)),place(8,coffee,cup(up,coffee))])]).
test_neg_ex([robot_pos(1),end_pos(10),places([place(1,tea,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,tea,cup(down,empty)),place(5,coffee,cup(down,empty)),place(6,coffee,cup(down,empty)),place(7,coffee,cup(down,empty)),place(8,tea,cup(down,empty)),place(9,tea,cup(down,empty))])],[robot_pos(10),end_pos(10),places([place(1,tea,cup(up,tea)),place(2,coffee,cup(up,coffee)),place(3,tea,cup(up,tea)),place(4,tea,cup(up,tea)),place(5,coffee,cup(up,tea)),place(6,coffee,cup(up,coffee)),place(7,coffee,cup(up,coffee)),place(8,tea,cup(up,tea)),place(9,tea,cup(up,tea))])]).
test_neg_ex([robot_pos(1),end_pos(4),places([place(1,tea,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,coffee,cup(down,empty))])],[robot_pos(4),end_pos(4),places([place(1,tea,cup(up,tea)),place(2,coffee,cup(up,tea)),place(3,coffee,cup(up,coffee))])]).
test_neg_ex([robot_pos(1),end_pos(3),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty))])],[robot_pos(3),end_pos(3),places([place(1,coffee,cup(up,tea)),place(2,tea,cup(up,tea))])]).
test_neg_ex([robot_pos(1),end_pos(9),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,coffee,cup(down,empty)),place(6,coffee,cup(down,empty)),place(7,coffee,cup(down,empty)),place(8,tea,cup(down,empty))])],[robot_pos(9),end_pos(9),places([place(1,coffee,cup(up,tea)),place(2,coffee,cup(up,coffee)),place(3,tea,cup(up,tea)),place(4,coffee,cup(up,coffee)),place(5,coffee,cup(up,coffee)),place(6,coffee,cup(up,tea)),place(7,coffee,cup(up,tea)),place(8,tea,cup(up,coffee))])]).
test_neg_ex([robot_pos(1),end_pos(5),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,tea,cup(down,empty))])],[robot_pos(5),end_pos(5),places([place(1,coffee,cup(up,coffee)),place(2,tea,cup(up,tea)),place(3,tea,cup(up,tea)),place(4,tea,cup(up,coffee))])]).
test_neg_ex([robot_pos(1),end_pos(3),places([place(1,tea,cup(down,empty)),place(2,tea,cup(down,empty))])],[robot_pos(3),end_pos(3),places([place(1,tea,cup(up,coffee)),place(2,tea,cup(up,coffee))])]).
test_neg_ex([robot_pos(1),end_pos(4),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,coffee,cup(down,empty))])],[robot_pos(4),end_pos(4),places([place(1,coffee,cup(up,tea)),place(2,coffee,cup(up,coffee)),place(3,coffee,cup(up,tea))])]).
test_neg_ex([robot_pos(1),end_pos(4),places([place(1,tea,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,tea,cup(down,empty))])],[robot_pos(4),end_pos(4),places([place(1,tea,cup(up,tea)),place(2,tea,cup(up,tea)),place(3,tea,cup(up,coffee))])]).
test_neg_ex([robot_pos(1),end_pos(4),places([place(1,tea,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,coffee,cup(down,empty))])],[robot_pos(4),end_pos(4),places([place(1,tea,cup(up,tea)),place(2,tea,cup(up,tea)),place(3,coffee,cup(up,coffee))])]).
test_neg_ex([robot_pos(1),end_pos(6),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,coffee,cup(down,empty))])],[robot_pos(6),end_pos(6),places([place(1,coffee,cup(up,tea)),place(2,tea,cup(up,coffee)),place(3,tea,cup(up,coffee)),place(4,coffee,cup(up,tea)),place(5,coffee,cup(up,tea))])]).
test_neg_ex([robot_pos(1),end_pos(3),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty))])],[robot_pos(3),end_pos(3),places([place(1,coffee,cup(up,coffee)),place(2,coffee,cup(up,coffee))])]).
test_neg_ex([robot_pos(1),end_pos(10),places([place(1,coffee,cup(down,empty)),place(2,tea,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,coffee,cup(down,empty)),place(5,coffee,cup(down,empty)),place(6,tea,cup(down,empty)),place(7,coffee,cup(down,empty)),place(8,tea,cup(down,empty)),place(9,tea,cup(down,empty))])],[robot_pos(10),end_pos(10),places([place(1,coffee,cup(up,tea)),place(2,tea,cup(up,tea)),place(3,tea,cup(up,coffee)),place(4,coffee,cup(up,coffee)),place(5,coffee,cup(up,tea)),place(6,tea,cup(up,coffee)),place(7,coffee,cup(up,coffee)),place(8,tea,cup(up,tea)),place(9,tea,cup(up,tea))])]).
test_neg_ex([robot_pos(1),end_pos(6),places([place(1,coffee,cup(down,empty)),place(2,coffee,cup(down,empty)),place(3,tea,cup(down,empty)),place(4,tea,cup(down,empty)),place(5,tea,cup(down,empty))])],[robot_pos(6),end_pos(6),places([place(1,coffee,cup(up,tea)),place(2,coffee,cup(up,tea)),place(3,tea,cup(up,coffee)),place(4,tea,cup(up,coffee)),place(5,tea,cup(up,tea))])]).
