BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "cards" (
	"id"	integer,
	"type"	tinyint NOT NULL,
	"front"	text NOT NULL,
	"back"	text NOT NULL,
	"known"	boolean DEFAULT 0,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "cards" VALUES (1,1,'What is Hamming Code?','In telecommunication, Hamming codes are a family of linear error-correcting codes that generalize the Hamming(7,4)-code, and were invented by Richard Hamming in 1950. Hamming codes can detect up to two-bit errors or correct one-bit errors without detection of uncorrected errors.',0);
INSERT INTO "cards" VALUES (2,1,'What is the square root of 256?','16',0);
INSERT INTO "cards" VALUES (3,1,'2^16','65,536',0);
INSERT INTO "cards" VALUES (4,2,'Using bitwise operations, how would you test that a number is a power of 2?','bool isPowerOfTwo = (x & (x - 1);',0);
INSERT INTO "cards" VALUES (5,1,'What does ELF stand for?','Executable and Linkable Format.
It''s a common standard file format for executables, object code, shared libraries, and core dumps.',0);
INSERT INTO "cards" VALUES (6,1,'example of a latency device','CPU core',0);
INSERT INTO "cards" VALUES (7,1,'example of a throughput device','GPU core',0);
INSERT INTO "cards" VALUES (8,1,'What is the Hamming Distance?','A number used to denote the number of differences between two binary strings of the same length.',0);
INSERT INTO "cards" VALUES (9,1,'What are the 5 steps of the compiling process?','Lexical Analysis
Parsing
Semantic Analysis
Optimization
Code Generation',0);
INSERT INTO "cards" VALUES (10,1,'What is parsing?','Combining tokens and groups of tokens into a tree structure (a parse tree).',0);
INSERT INTO "cards" VALUES (11,1,'What is lexical analysis?','The process of dividing program text into words or tokens.',0);
INSERT INTO "cards" VALUES (12,1,'What is code generation?','Producing a translation from a high-level program to assembly code. (Linker and Archiver taker over from here to produce machine code)',0);
INSERT INTO "cards" VALUES (13,1,'4 * 16','64',0);
INSERT INTO "cards" VALUES (14,1,'2 ^ 4','16',0);
INSERT INTO "cards" VALUES (15,1,'2^3','8',0);
INSERT INTO "cards" VALUES (16,1,'2^5','32',0);
INSERT INTO "cards" VALUES (17,1,'2^6','64',0);
INSERT INTO "cards" VALUES (18,1,'2^7','128',0);
INSERT INTO "cards" VALUES (19,1,'2^8','256',0);
INSERT INTO "cards" VALUES (20,1,'2^9','512',0);
INSERT INTO "cards" VALUES (21,1,'2^10','1024',0);
INSERT INTO "cards" VALUES (22,1,'2^11','2048',0);
INSERT INTO "cards" VALUES (23,1,'2^12','4096',0);
INSERT INTO "cards" VALUES (24,1,'2^13','8192',0);
INSERT INTO "cards" VALUES (25,1,'2^14','16,384',0);
INSERT INTO "cards" VALUES (26,1,'2^15','32,768',0);
INSERT INTO "cards" VALUES (27,1,'2^32','4.294 Billion',0);
INSERT INTO "cards" VALUES (28,1,'size of char in bits','8 bits',0);
INSERT INTO "cards" VALUES (29,1,'size of char in bytes','1 byte',0);
INSERT INTO "cards" VALUES (30,1,'size of bool in bits','8 bits',0);
INSERT INTO "cards" VALUES (31,1,'size of short in bits','16 bits (at least), and 16 commonly',0);
INSERT INTO "cards" VALUES (32,1,'size of short in bytes','2 bytes, and 2 bytes commonly',0);
INSERT INTO "cards" VALUES (33,1,'size of int in bits','32 bits commonly, at least 16 bits',0);
INSERT INTO "cards" VALUES (34,1,'size of int in bytes','4 bytes commonly, at least 2 bytes',0);
INSERT INTO "cards" VALUES (35,1,'size of long in bits','32 (at least, 32 commonly), 64 on LP64',0);
INSERT INTO "cards" VALUES (36,1,'size of long in bytes','4 bytes, (at least 4, and commonly 4), 8 on LP64',0);
INSERT INTO "cards" VALUES (37,1,'size of long long in bits','64 bits',0);
INSERT INTO "cards" VALUES (38,1,'size of long long in bytes','8 bytes',0);
INSERT INTO "cards" VALUES (39,1,'size of float in bits','32 bits',0);
INSERT INTO "cards" VALUES (40,1,'size of float in bytes','4 bytes',0);
INSERT INTO "cards" VALUES (41,1,'size of double in bits','64 bits',0);
INSERT INTO "cards" VALUES (42,1,'size of double in bytes','8 bytes',0);
INSERT INTO "cards" VALUES (43,1,'size of wchar_t in bits','16 bits',0);
INSERT INTO "cards" VALUES (44,1,'size of wchar_t in bytes','2 bytes',0);
INSERT INTO "cards" VALUES (54,1,'How many levels in a complete binary tree of size n?','floor(1 + log(base2)(n))',0);
INSERT INTO "cards" VALUES (55,1,'How can build heap be done in linear time?','A tree of size n nodes, will have floor(n/2^h) nodes with height >= h.
The last half of nodes will be leaves, so they already satisfy the heap property. No work needs to be done on them.
going bottom-up (ignoring the last n/2 items) and satisfying the heap property one level at a time, each level going up the tree has to do at most 1 operation more than the level below it. But as you go up the tree, higher levels have fewer nodes, so you may be doing more operations, but it happens on fewer number of times.
This resembles a series:

n/2 - height 1: 1 operations
n/4 - height 2: 2 operation
n/8 - height 3: 3 operations
...
going to floor(n/2^h) - height h: h operations

n * (1/2 + 2/4 + 3/8 + 4/16 ....) = n * 1 = n',0);
INSERT INTO "cards" VALUES (57,1,'How are queues usually implemented?','Using a Circular Array or Singly Linked List.',0);
INSERT INTO "cards" VALUES (58,1,'How is a deque usually implemented?','Using a Circular Array or Doubly Linked List.',0);
INSERT INTO "cards" VALUES (59,2,'How would you swap 2 integers using only bitwise operations?','a ^= b
b ^= a
a ^= b',0);
INSERT INTO "cards" VALUES (60,2,'How would you turn ON the 3rd bit from the end in a bitstring?','x |= (1 << 2)',0);
INSERT INTO "cards" VALUES (61,2,'How would you turn OFF the 3rd bit from the end in a bitstring?','x &= ~(1 << 2);',0);
INSERT INTO "cards" VALUES (73,1,'What is a Binary Search Tree?','A binary tree is a data structure where each node has a comparable key and satisfies the restriction that the key in any node is larger than the keys in all nodes in that node''s left subtree and smaller than the keys in all nodes in that node''s right subtree.',0);
INSERT INTO "cards" VALUES (74,1,'What is an AVL tree?','A BST where the height of every node and that of its sibling differ by at most 1.',0);
INSERT INTO "cards" VALUES (75,1,'What is a red-black tree?','BSTs having red and black links satisfying:
- Red links lean left
- No node has two links connected to it
- The tree has perfect black balance: every path from the root to a null link has the same number of blacks',0);
INSERT INTO "cards" VALUES (76,1,'What is a splay tree?','A self-adjusting binary search tree where recently accessed elements are moved to the root so they are quick to access again.',0);
INSERT INTO "cards" VALUES (77,1,'What is a treap?','A random priority is assigned to every key and must maintain two properties:
-They are in order with respect to their keys, as in a typical binary search tree
-They are in heap order with respect to their priorities, that is, no key has a key of lower priority as an ancestor
O(log N) expected time for all operations, O(N) worst case.',0);
INSERT INTO "cards" VALUES (78,1,'What is typical cache line size?','64 bytes.

-- extra below --

To know the sizes, you need to look it up using the documentation for the processor, afaik there is no programatic way to do it. On the plus side however, most cache lines are of a standard size, based on intels standards. On x86 cache lines are 64 bytes, however, to prevent false sharing, you need to follow the guidelines of the processor you are targeting (intel has some special notes on its netburst based processors), generally you need to align to 64 bytes for this (intel states that you should also avoid crossing 16 byte boundries).

To do this in C or C++ requires that you use aligned_malloc or one of the compiler specific specifiers such as __attribute__((align(64))) or __declspec(align(64)). To pad between members in a struct to split them onto different cache lines, you need on insert a member big enough to align it to the next 64 byte boundery',0);
INSERT INTO "cards" VALUES (79,1,'What is latency?','Latency is the delay from input into a system to desired outcome. The time interval between between a stimulus and response.',0);
INSERT INTO "cards" VALUES (80,1,'What is a y-fast trie?','A y-fast trie is a data structure for storing integers from a bounded domain. It supports exact and predecessor or successor queries in time O(log log M), using O(n) space, where n is the number of stored values and M is the maximum value in the domain. The structure was proposed by Dan Willard in 1982 to decrease the O(n log M) space used by an x-fast trie.',0);
INSERT INTO "cards" VALUES (81,1,'What is an x-fast trie?','An x-fast trie is a data structure for storing integers from a bounded domain. It supports exact and predecessor or successor queries in time O(log log M), using O(n log M) space, where n is the number of stored values and M is the maximum value in the domain. The structure was proposed by Dan Willard in 1982, along with the more complicated y-fast trie, as a way to improve the space usage of van Emde Boas trees, while retaining the O(log log M) query time.',0);
INSERT INTO "cards" VALUES (82,1,'What is a van Emde Boas tree?','The van Emde Boas tree supports insertions, deletions, lookups, successor queries, and predecessor queries in time O(log log U), where U is the universe of items to store. Items are stored in clusters of size sqrt(U). 

The van Emde Boas data structure divides the range {0,...,n−1} into blocks of size sqrt(n), which we call clusters. Each cluster is itself a vEB structure of size sqrt(n). In addition, there is a “summary” structure that keeps track of which clusters are nonempty.

More detail:
A van Emde Boas tree (or van Emde Boas priority queue), also known as a vEB tree, is a tree data structure which implements an associative array with m-bit integer keys. It performs all operations in O(log m) time, or equivalently in O(log log M) time, where M = 2m is the maximum number of elements that can be stored in the tree. The M is not to be confused with the actual number of elements stored in the tree, by which the performance of other tree data-structures is often measured. The vEB tree has good space efficiency when it contains a large number of elements, as discussed below. It was invented by a team led by Dutch computer scientist Peter van Emde Boas in 1975.',0);
INSERT INTO "cards" VALUES (83,1,'What is a compressed trie?','It''s a trie where the non-branching paths are compacted into a single edge.',0);
INSERT INTO "cards" VALUES (84,1,'What relationship of the keys do you lose with a hash table?','The ordering of the keys.',0);
INSERT INTO "cards" VALUES (85,2,'Sed command to take a file separated by spaces, turn spaces into newlines, and then sort it alphabetically.','sed ''s/ /\n/g'' words.txt | sort',0);
INSERT INTO "cards" VALUES (86,2,'Print columns 2, 3, and 6 from the date command.','date | awk ''{print $2, $3, $6}''',0);
INSERT INTO "cards" VALUES (87,2,'Take a file delimited by : and make it tab-delimited.','cat /etc/passwd | sed ''s/:/\t/g''',0);
INSERT INTO "cards" VALUES (88,2,'Output a file with line numbers.','cat -n somefile',0);
INSERT INTO "cards" VALUES (89,1,'Is quicksort stable?','No.',0);
INSERT INTO "cards" VALUES (90,1,'Can quicksort be done in-place?','Yes.',0);
INSERT INTO "cards" VALUES (91,1,'Can merge sort be done in-place?','No. It requires O(n) space. There is an in-place version?',0);
INSERT INTO "cards" VALUES (92,1,'Is merge sort stable?','Yes.',0);
INSERT INTO "cards" VALUES (93,1,'Is insertion sort stable?','Yes.',0);
INSERT INTO "cards" VALUES (94,1,'Can insertion sort be done in-place?','Yes.',0);
INSERT INTO "cards" VALUES (95,1,'Can selection sort be done in-place?','Yes.',0);
INSERT INTO "cards" VALUES (96,1,'Is selection sort stable?','No.',0);
INSERT INTO "cards" VALUES (97,1,'Is heap sort stable?','No.',0);
INSERT INTO "cards" VALUES (98,1,'Can heap sort be done in-place?','Yes.',0);
INSERT INTO "cards" VALUES (103,1,'In what case would perfect hashing be practical?','When you don''t need to support inserts or deletes. The data is static.',0);
INSERT INTO "cards" VALUES (104,1,'How does perfect hashing handle collisions?','It creates a second hash table in the buckets where there are multiple items (k), using a second hash function, and k^2 space. The hash table has two hashing levels. k^2 is chosen because the Markov inequality (birthday paradox) ensures we will not have collisions in bucket.',0);
INSERT INTO "cards" VALUES (105,1,'What is the optimal load factor for a hash table?','O(sqrt(n))',0);
INSERT INTO "cards" VALUES (106,1,'What is the expected load factor for a hash table?','n/m,  where n = items, m = buckets) n/m is also called alpha.',0);
INSERT INTO "cards" VALUES (107,1,'What is the technical running time for operations on a hash table?','O(1 + alpha), where alpha is the load factor (n/m). Table doubling operations are amortized.',0);
INSERT INTO "cards" VALUES (108,1,'What is the worst-case search time of perfect hashing?','O(1)',0);
INSERT INTO "cards" VALUES (109,1,'What is the worst-case space required for perfect hashing?','O(n)',0);
INSERT INTO "cards" VALUES (110,1,'What''s the best-case running time of binary search?','O(1) - we get lucky and find the element right at the midpoint.',0);
INSERT INTO "cards" VALUES (111,1,'What''s the worst-case running time of binary search?','O(log n)',0);
INSERT INTO "cards" VALUES (112,1,'What are the downsides of using an adjacency matrix to represent a graph?','Finding all the outgoing edges from a vertex takes O(n) time even if there aren''t very many, and the O(n^2) space cost is high for "sparse graphs," those with much fewer than n^2 edges.',0);
INSERT INTO "cards" VALUES (113,1,'When is using an adjacency list expensive?','Finding predecessors of a node u is extremely expensive, requiring looking through every list of every node in time O(n + e), where e is the total number of edges, although if this is something we actually need to do often we can store a second copy of the graph with the edges reversed.',0);
INSERT INTO "cards" VALUES (114,1,'When are adjacency lists most useful?','Adjacency lists are most useful when we mostly want to enumerate outgoing edges of each node. This is common in search tasks, where we want to find a path from one node to another or compute the distances between pairs of nodes. If other operations are important, we can optimize them by augmenting the adjacency list representation; for example, using sorted arrays for the adjacency lists reduces the cost of edge existence testing to O(log(d+ (u))), and adding a second copy of the graph with reversed edges lets us find all predecessors of u in O(d− (u)) time, where d− (u) is u''s in-degree.',0);
INSERT INTO "cards" VALUES (115,1,'What is the space required for a graph using an adjacency list?','O(n + e)',0);
INSERT INTO "cards" VALUES (116,1,'What''s the maximum unsigned number you can represent with 4 bits?','15',0);
INSERT INTO "cards" VALUES (117,1,'What''s the maximum unsigned number you can represent with 8 bits?','255',0);
INSERT INTO "cards" VALUES (118,1,'What''s the maximum unsigned number you can represent with 16 bits?','65,535',0);
INSERT INTO "cards" VALUES (119,1,'What''s the maximum unsigned number you can represent with 6 bits?','63',0);
INSERT INTO "cards" VALUES (120,1,'What''s the maximum unsigned number you can represent with 15 bits?','32,767',0);
INSERT INTO "cards" VALUES (121,1,'What''s the maximum signed number you can represent with 4 bits?','7',0);
INSERT INTO "cards" VALUES (122,1,'What''s the maximum signed number you can represent with 16 bits?','32,767',0);
INSERT INTO "cards" VALUES (123,1,'What''s the maximum signed number you can represent with 8 bits?','127',0);
INSERT INTO "cards" VALUES (125,1,'What''s the maximum signed number you can represent with 9 bits?','255',0);
INSERT INTO "cards" VALUES (126,1,'What''s the maximum unsigned number you can represent with 32 bits?','4.294 Billion',0);
INSERT INTO "cards" VALUES (127,1,'What''s the maximum signed number you can represent with 32 bits?','2.147 Billion',0);
INSERT INTO "cards" VALUES (128,1,'How do you get the logarithm of a number n given a base b?','Keep dividing n by b until you get to a number <= 1.',0);
INSERT INTO "cards" VALUES (129,1,'How can you write log(base b)(ac)?','log(base b)a + log(base b)c',0);
INSERT INTO "cards" VALUES (130,1,'How can you write log(base b)(a/c)?','log(base b)a - log(base b)c',0);
INSERT INTO "cards" VALUES (131,1,'How else can you write log(base b)(a^c)?','c * log(base b)a',0);
INSERT INTO "cards" VALUES (132,1,'How you can express log(base b)a as another base?','log(base d)a / log(base d)b',0);
INSERT INTO "cards" VALUES (133,1,'Why is log(base2)(2^n) == n?','log(base2)(2^n) = n * log(base 2)2 = n * 1 = n',0);
INSERT INTO "cards" VALUES (134,1,'What is the arithmetic series: 1 + 2 + 3 + 4 + ... (n - 1) + n?','(n(n+1)) / 2',0);
INSERT INTO "cards" VALUES (135,1,'What is the value of the geometric (exponential) series when x != 1: 1 + x + x^2 + x^3 + ... x^n ?','(x^(n + 1) - 1) / (x - 1)',0);
INSERT INTO "cards" VALUES (136,1,'What is the sum of this series when it''s infinite and x < 1? 1 + x + x^2 + x^3 + ... x^n ?','1 / (1 - x)',0);
INSERT INTO "cards" VALUES (137,1,'What is the sum of the harmonic series for the nth harmonic number: 1 + 1/2 + 1/3 + 1/4 .. + 1/n','No closed form, only good approximations:

≈ 0.57721
the Euler-Mascheroni constant.',0);
INSERT INTO "cards" VALUES (138,1,'What is the maximum unsigned integer you can represent with n bits?','2^n - 1',0);
INSERT INTO "cards" VALUES (139,1,'Given a fully balanced binary tree with x nodes, what is the height of the tree in nodes?','log(base2) x + 1',0);
INSERT INTO "cards" VALUES (140,1,'Given a fully balanced k-ary tree with x nodes, what is the height of the tree in nodes?','log(basek) x + 1',0);
INSERT INTO "cards" VALUES (141,1,'A binary tree with height h can contain at most how many nodes?','2^(h+1) − 1 nodes',0);
INSERT INTO "cards" VALUES (142,1,'For a k-ary tree with height h, the upper bound for the maximum number of leaves is:','k^h',0);
INSERT INTO "cards" VALUES (143,1,'What is the complexity of Dijkstra''s shortest-path algorithm?','O(e log v), where e is the number of edges. 
It must scan each edge, and gets and updates values on the heap.',0);
INSERT INTO "cards" VALUES (144,1,'What is a drawback of using an adjacency matrix for an undirected graph?','Half of the entries in the matrix are duplicates.',0);
INSERT INTO "cards" VALUES (145,1,'What is the memory needed to store an adjacency list?','Theta( |V| + |E| )',0);
INSERT INTO "cards" VALUES (146,1,'What is the memory needed to store an adjacency matrix?','Theta(|V|^2)',0);
INSERT INTO "cards" VALUES (147,1,'How would you implement a queue with a linked list?','Use a tail pointer. Push new items at the tail, pop items at the head. Both operations are constant-time.',0);
INSERT INTO "cards" VALUES (148,1,'How would you implement a stack with a linked list?','Push and pop items at the head. Both operations are constant-time.',0);
INSERT INTO "cards" VALUES (149,1,'What preference of nodes vs leaves does preorder traversal give on a tree?','Nodes first, leaves later.',0);
INSERT INTO "cards" VALUES (150,1,'What preference of nodes vs leaves does postorder traversal give on a tree?','Leaves first, internal nodes later.',0);
INSERT INTO "cards" VALUES (151,1,'What could you use in DFS to turn a recursive algorithm into an interative one?','A stack.',0);
INSERT INTO "cards" VALUES (152,1,'What do you use to keep track of nodes to visit in BFS?','A queue.',0);
INSERT INTO "cards" VALUES (153,1,'Using a stack to keep track of unvisited nodes gives what kind of traversal?','DFS',0);
INSERT INTO "cards" VALUES (154,1,'Using a queue to keep track of unvisited nodes gives what kind of traversal?','BFS',0);
INSERT INTO "cards" VALUES (155,1,'In a highly connected graph of n vertices, how many cycles can there be?','(n - 1)! - enumerating is possible (using backtracking), but there will be a lot.',0);
INSERT INTO "cards" VALUES (156,1,'What can use to find if a graph is bipartite?','BFS. Using only 2 colors. When you encounter a new vertex, if it has no color, give it the opposite color of its parent vertex. If it is already colored the same, the graph is not bipartite.',0);
INSERT INTO "cards" VALUES (157,1,'How can you find a cycle in a graph?','DFS. If you discover an edge that connects to an ancestor (previously discovered vertex), you have a cycle.',0);
INSERT INTO "cards" VALUES (158,1,'What is an articulation vertex?','A vertex of a graph whose deletion disconnects the graph.',0);
INSERT INTO "cards" VALUES (159,1,'How can you find an articulation vertex?','DFS multiple times. Remove each edge one at a time, doing a DFS after each, so see if you end up with > 1 connected components. If you remove a node and then DFS and find you have fewer than m - 1 edges, you''ve deleted an articulation vertex. O(n(n+m))

A faster way, with a little more bookkeeping, can be done in O(n+m) time, if you do DFS and keep track of parents and make a note when you reach a back edge, which connects to an ancestor.',0);
INSERT INTO "cards" VALUES (160,1,'How could you identify errors in a DNA fragment assembly given many pairs of sequences, where item A must appear before B in the larger sequence?','Build a DAG representing all the left-right constraints. Any topological sort of the DAG is a consistent ordering. If there are cycles, there must be errors.',0);
INSERT INTO "cards" VALUES (161,1,'What path does BFS find in a graph?','The shortest path tree from start to all nodes (unweighted)',0);
INSERT INTO "cards" VALUES (163,1,'What''s the upper bound on the number of edges in a graph G(V, E)?','|V|^2',0);
INSERT INTO "cards" VALUES (164,2,'In Python, initialize a list of lists called x with 100 elements.','x = [[] for _ in range(100)]',0);
INSERT INTO "cards" VALUES (166,1,'What is the optimal substructure property tell us about shortest paths?','That a subpath of a shortest path is also a shortest path.',0);
INSERT INTO "cards" VALUES (170,1,'What is a Dunder method?','A magic method in Python, such as __getitem__ and __len__.',0);
INSERT INTO "cards" VALUES (171,1,'What is the sum of numbers from 1 to 2^n?','2^(n+1) - 1
The sum of a sequence of powers is roughly equal to the next value in the sequence.',0);
INSERT INTO "cards" VALUES (172,1,'How many ways can you rearrange a string of n unique characters?','n!
Permutations.',0);
INSERT INTO "cards" VALUES (173,1,'How many ways can you arrange k characters from n unique characters?','n! / (n - k)!
Permutation of n elements of size k.',0);
INSERT INTO "cards" VALUES (174,1,'How many subsets (ordering doesn''t matter) of size k are there in n unique characters?','n! / k!(n - k)!
This is n choose k.',0);
INSERT INTO "cards" VALUES (176,1,'What should you avoid in your base case in recursion?','Too many base case scenarios. Just have one base case so you can return as quickly as possible. Avoid "arm''s length" recursion.',0);
INSERT INTO "cards" VALUES (177,1,'What is the bandwidth of a graph?','The longest edge in the permutation that gives you the shortest edges.',0);
INSERT INTO "cards" VALUES (179,1,'When talking dynamic programming, what is feasibility?','The rules the algorithm must adhere to in reaching its solution.',0);
INSERT INTO "cards" VALUES (180,1,'When talking dynamic programming, what is optimality?','An algorithm has optimality if the subsolutions of an optimal solution of the problem are themsleves optimal solutions for their subproblems.',0);
INSERT INTO "cards" VALUES (181,1,'What is dynamic programming?','Dynamic programming is a general-purpose algorithm design technique that is most often used to solve combinatorial optimization problems, where we are looking for the best possible input to some function chosen from an exponentially large search space.

There are two parts to dynamic programming. The first part is a programming technique: dynamic programming is essentially divide and conquer run in reverse: we solve a big instance of a problem by breaking it up recursively into smaller instances; but instead of carrying out the computation recursively from the top down, we start from the bottom with the smallest instances of the problem, solving each increasingly large instance in turn and storing the result in a table. The second part is a design principle: in building up our table, we are careful always to preserve alternative solutions we may need later, by delaying commitment to particular choices to the extent that we can.

The bottom-up aspect of dynamic programming is most useful when a straightforward recursion would produce many duplicate subproblems. It is most efficient when we can enumerate a class of subproblems that doesn''t include too many extraneous cases that we don''t need for our original problem.',0);
INSERT INTO "cards" VALUES (182,1,'What is the complexity for a naive recursive Fibonacci function?','Θ(φ^n), where phi(φ) is the golden ratio (1 + sqrt(5)) / 2. 
approx: 1.618',0);
INSERT INTO "cards" VALUES (186,1,'What does __getitem__ in a class allow us to use?','- iteration
- slicing
- reverse iteration
- random.choice',0);
INSERT INTO "cards" VALUES (191,1,'How many subsets are there in n items?','2^n',0);
INSERT INTO "cards" VALUES (193,1,'What is a contiguously-allocated structures, and give examples.','Contiguously-allocated structures are composed of single slabs of memory, and include arrays, matrices, heaps, and hash tables.',0);
INSERT INTO "cards" VALUES (194,1,'What are linked data structures and give examples.','Linked data structures are composed of distinct chunks of memory bound together by pointers, and include lists, trees, and graph adjacency lists.',0);
INSERT INTO "cards" VALUES (195,1,'What are some benefits of arrays?','- Constant-time access given the index
- Space efficiency
- Memory locality',0);
INSERT INTO "cards" VALUES (196,1,'Why is memory locality important?','Physical continuity between successive data accesses helps exploit the high-speed cache memory on modern computer architectures.',0);
INSERT INTO "cards" VALUES (197,1,'What are some advantages to linked lists over arrays?','- Overflow on linked structures can never occur unless the memory is actually full.
- Insertions and deletions are simpler than for contiguous (array) lists.
- With large records, moving pointers is easier and faster than moving the items themselves.',0);
INSERT INTO "cards" VALUES (198,1,'What are some advantages to arrays over linked lists?','- Linked structures require extra space for storing pointer fields.
- Linked lists do not allow efficient random access to items.
- Arrays allow better memory locality and cache performance than random pointer jumping.',0);
INSERT INTO "cards" VALUES (200,1,'Codeless question: Write a function to find the middle node of a singly-linked list.','How would you do it?',0);
INSERT INTO "cards" VALUES (201,1,'Codeless question: Write a function to compare whether two binary trees are identical. Identical trees have the same key value at each position and the same structure.','How?',0);
INSERT INTO "cards" VALUES (202,1,'Codeless quesiton: Write a program to convert a binary search tree into a linked list.','How would you do it?',0);
INSERT INTO "cards" VALUES (203,1,'Codeless Question: You are given a search string and a magazine. You seek to generate all the characters in search string by cutting them out from the magazine. Give an algorithm to efficiently determine whether the magazine contains all the letters in the search string.','How would you do it?',0);
INSERT INTO "cards" VALUES (204,1,'Codeless question: Give an algorithm for finding an ordered word pair (e.g., “New York”) occurring with the greatest frequency in a given webpage. Which data structures would you use?','You could use a hash table, creating or updating an entry for each pair. 
Keep track of max_frequency and most_frequent_phrase.
Just increment the count, and when you see the new count is > than max_frequency, update max_frequency and most_frequent_phrase',0);
INSERT INTO "cards" VALUES (205,1,'Codeless question: Given a set of n numbers, how do you find the pair of numbers that have the smallest difference between them?','Sort them: Once the numbers are sorted, the closest pair of numbers must lie next to each other somewhere in sorted order. Thus, a linear-time scan through them completes the job, for a total of O(n log n) time including the sorting.',0);
INSERT INTO "cards" VALUES (206,1,'Codeless question: Are there any duplicates in a given set of n items?','This is a special case of the closest-pair problem, where we ask if there is a pair separated by a gap of zero. The most efficient algorithm sorts the numbers and then does a linear scan though checking all adjacent pairs.',0);
INSERT INTO "cards" VALUES (207,1,'Codeless question: Given a set of n items, which element occurs the largest number of times in the set? Bonus: How do you find out how many times some element k appears?','If the items are sorted, we can sweep from left to right and count them, since all identical items will be lumped together during sorting.

To find out how often an arbitrary element k occurs, look up k using binary search in a sorted array of keys. Then use binary search in each direction to find where that run of the number begins and ends.',0);
INSERT INTO "cards" VALUES (208,1,'Codeless question: Give an efficient algorithm to determine whether two sets (of size m and n, respectively) are disjoint.','The small set can be sorted in O(m log m) time. We can now do a binary search with each of the n elements in the big set, looking to see if it exists in the small one. The total time will be O((n + m) log m).

This is better than sorting the larger array or sorting both sets and going through the list.',0);
INSERT INTO "cards" VALUES (210,1,'What is a uniform distribution?','When a known finite number of outcomes are equally likely to occur. When graphed as a histogram of occurrences, it''s a flat line. N items each have 1/n probability.',0);
INSERT INTO "cards" VALUES (211,1,'What is a normal distribution?','The standard normal probability density function has the famous bell shape that is known to just about everyone.',0);
INSERT INTO "cards" VALUES (212,1,'What is an n-gram?','A set of N sequential words appearing together.',0);
INSERT INTO "cards" VALUES (213,1,'What''s the maximum unsigned number you can represent with 9 bits?','511',0);
INSERT INTO "cards" VALUES (214,1,'Whats the average height of a binary search tree after n insertions?','2 ln n
About 39% taller than a perfectly balanced BST',0);
INSERT INTO "cards" VALUES (215,1,'What is the runtime of randomized quicksort?','Theta(n log n) time on any input, with high probability.',0);
INSERT INTO "cards" VALUES (222,1,'Python: Default arguments are okay to use with the following caveat.','Do not use mutable objects as default values in the function or method definition.

Lists are not ok.',0);
INSERT INTO "cards" VALUES (223,2,'Python: Give an example of a conditional expression.','x = 1 if cond else 2',0);
INSERT INTO "cards" VALUES (224,2,'Python: break this string ''a/b/c'' into a list of [''a'', ''b'', c'']','''a/b/c''.split(''/'')',0);
INSERT INTO "cards" VALUES (225,2,'Python: split a word or sentences into characters.','list(''some words'')',0);
INSERT INTO "cards" VALUES (226,1,'What''s the difference between foo.sort() and sorted(foo) where foo is a list?','foo.sort() changes the list to its sorted state
sorted(foo) doesn''t change foo, just returns a sorted list.',0);
INSERT INTO "cards" VALUES (227,1,'Can you sort a tuple?','Yes, using sorted(foo)
but not with foo.sort()',0);
INSERT INTO "cards" VALUES (228,2,'Python: How would you remove indices 6 to 11 in a list foo?','del foo[6:12]',0);
INSERT INTO "cards" VALUES (229,2,'Python: How can you tell if an index is in a list?','if 0 < i < len(foo):',0);
INSERT INTO "cards" VALUES (232,1,'What''s the probability of getting heads twice? P(HH)','1/4 
= 1/2 * 1/2',0);
INSERT INTO "cards" VALUES (233,1,'What''s the probability of getting heads, tails, heads? P(HTH)','1/8 
= 1/2 * 1/2 * 1/2
the ordering of HTH doesn''t matter. It could be TTH or HHH or TTT, they are tall the same.',0);
INSERT INTO "cards" VALUES (234,1,'What''s the probability of getting heads 200 times in a row?','(1/2)^200',0);
INSERT INTO "cards" VALUES (235,1,'What''s the Probability of getting head, tails or tails, heads? P(HT U TH)','(1/2 * 1/2) + (1/2 * 1/2) = 2/4 = 1/2',0);
INSERT INTO "cards" VALUES (236,1,'What''s the probability of getting exactly 3 heads in 8 flips?','56/256 = 7/32

(8 choose 3)/2^8',0);
INSERT INTO "cards" VALUES (237,1,'You have 26 letters in an alphabet. How many ways you can arrange 3 letters from that alphabet where repeated letters is OK?','26*26*26 = 26^3 = 17,576',0);
INSERT INTO "cards" VALUES (238,1,'You have 26 letters in an alphabet. How many ways you can arrange 3 letters from that alphabet without repeating a letter?','26*25*24 = 26 permute 3 = 15,600',0);
INSERT INTO "cards" VALUES (239,1,'Given an alphabet of 26 letters, how many times you can you choose 3 letters, if ordering of the letters doesn''t matter?','26*25*24 / 3! = 2600',0);
INSERT INTO "cards" VALUES (240,1,'What is 0! ?','1',0);
INSERT INTO "cards" VALUES (241,1,'There are 4 people. How many ways can they shake each other''s hands without shaking the same person''s hand twice?','6
= 4 choose 2
= 4 * 3 / 2',0);
INSERT INTO "cards" VALUES (242,2,'Right-propagate the rightmost 1-bit, producing all 1''s if x = 0 (e.g., 01011000 01011111):','x |= (x - 1)',0);
INSERT INTO "cards" VALUES (243,2,'Isolate the right-most bit in x.','x & ~(x - 1)',0);
INSERT INTO "cards" VALUES (245,1,'What is P?','The set of all problems solvable in polynomial time.',0);
INSERT INTO "cards" VALUES (246,1,'What is EXP?','The set of all problems solvable in exponential time.',0);
INSERT INTO "cards" VALUES (247,1,'What is R? (not real numbers)','The set of problems solvable in finite time.',0);
INSERT INTO "cards" VALUES (248,1,'Is the Halting Problem in R?','No.',0);
INSERT INTO "cards" VALUES (249,1,'What does NP mean? What is an NP algorithm?','NP is the set of decision problem solvable in non-deterministric polynomial time. An NP problem can be solved by a lucky algorithm that magically always finds a yes decision. NP problems can be checked in polynomial time.',0);
INSERT INTO "cards" VALUES (250,1,'What makes a problem NP-Complete?','If x is an element of NP and of NP-hard. NP-Complete is the narrow intersection of NP and NP-hard.

Because NP is such a large class of problems, most NP-hard problems you encounter will actually be complete.',0);
INSERT INTO "cards" VALUES (251,1,'What is Fib(0) ?','0',0);
INSERT INTO "cards" VALUES (253,1,'What is Fib(3) ?','2',0);
INSERT INTO "cards" VALUES (254,1,'What is Fib(2) ?','1',0);
INSERT INTO "cards" VALUES (255,1,'What is a PTAS?','Polynomial-time approximation scheme.',0);
INSERT INTO "cards" VALUES (256,1,'What is a pointer?','A memory address stored in memory.',0);
INSERT INTO "cards" VALUES (257,1,'Give 2 examples of common data structures that contain reference cycles.','- Doubly-linked lists
- Trees with parent and child pointers',0);
INSERT INTO "cards" VALUES (258,1,'What is a weak reference in Python?','A weak reference to an object does not affect its reference count. 
When the only remaining references to a referent are weak references, garbage collection is free to destroy the referent and reuse its memory for something else. A primary use for weak references is to implement caches or mappings holding large objects, where it’s desired that a large object not be kept alive solely because it appears in a cache or mapping.',0);
INSERT INTO "cards" VALUES (259,1,'How does garbage collection work in CPython?','CPython uses reference counting and generational garbage collection. There are 3 age stages where objects live in memory. They all start in the "nursery", stage0, then if they survive a garbage collection, they are moved to stage1, the oldest objects that continue to survive in stage1 are promoted to stage2. The gc module has thresholds 700, 10, 10 for each stage. In order to decide when to run, the collector keeps track of the number object allocations and deallocations since the last collection. When the number of allocations minus the number of deallocations exceeds threshold0, collection starts. If generation 0 has been examined more than threshold1 times since generation 1 has been examined, then generation 1 is examined as well. Similarly, threshold2 controls the number of collections of generation 1 before collecting generation 2.',0);
INSERT INTO "cards" VALUES (260,1,'What is reference counting?','RC is a method of garbage collection. The runtime keeps track of references to an object by manipulating the reference count on each assignment and delete (del), and when the reference count reaches 0 it means the object is practically unreachable. When the next collection runs, the object''s memory will be reserved to allocate for new objects.',0);
INSERT INTO "cards" VALUES (261,1,'What is a finalizer in Python?','A finalizer is a destructor, named __del__. __del__() is run when the runtime is about to destroy the object.',0);
INSERT INTO "cards" VALUES (262,1,'What are 2 advantages of reference counting?','- easy to implement
- collects garbage incidentally without large pauses in execution.',0);
INSERT INTO "cards" VALUES (263,1,'What are 2 disadvantages of reference counting?','- it cannot collect circular references
- manipulating reference counts at each assignment is very slow.',0);
INSERT INTO "cards" VALUES (264,1,'What is cyclic garbage collection?','Detects and removes cycles unreachable by the program.',0);
INSERT INTO "cards" VALUES (265,1,'How is garbage collection done in PyPy?','The GC implementation can be chosen at runtime. It''s pluggable.
PyPy uses mark and sweep, and generational gc optimization. Marked objects are promoted from the nursery to an older generation.
PyPy uses incremental garbage collection, where major collection is split into multiple passes, each lasting only a few milliseconds.',0);
INSERT INTO "cards" VALUES (266,1,'What is a pointer?','A pointer is a memory address stored in memory.',0);
INSERT INTO "cards" VALUES (267,1,'How does mark and sweep work?','(In Java) Perform a DFS on the graph of references to objects. This graph can have multiple roots. Each root is a reference that the program can access directly, such as a variable. Traverse the graph, setting a mark bit in each object. The sweep phase causes unmarked memory to be linked together in a list, so that memory can be reallocated. Sometimes this also triggers compaction, which moves used objects adjacent to each other in memory. The side effect of this is that free memory is also adjacent to free memory so large blocks can be allocated.',0);
INSERT INTO "cards" VALUES (268,1,'What is copying garbage collection (stop and copy)?','Heap memory is split into 2 partitions: an old space and a new space. Find live objects by DFS of their reference graph, and move live objects into the new space. The new space is now called the old space. Unreachable objects are simply left in the old space to be overwritten the next time collection occurs. The movement of objects implicitly compacts the objects. Disadvantage: you can only use half of the heap space.',0);
INSERT INTO "cards" VALUES (269,1,'How could you implement an LRU cache?','A fast lookup table, like a hash table or binary tree, and a linked list of items by use. When you access or add an item, you delete it from the linked list and add it to the head of the list.  Then to prune, traverse the linked list and remove trailing elements, and delete them from the storage (tree or hash table).
You can also use a splay tree, since it moves accesses to the root. To prune items, somehow find and remove the leaves, since the number of leaves will be about n/2.',0);
INSERT INTO "cards" VALUES (270,1,'What is a direct mapped cache?','It''s a type of cache used in the CPU, where the lower order bits of a given memory address are used modulo the number of cache lines to place or lookup in the cache. Collisions are treated as overwrites.',0);
INSERT INTO "cards" VALUES (271,1,'What is a fully-associative cache?','It''s a type of cache used in the CPU, where lookups are done on all cache lines in parallel to determine a hit or miss.

This requires a very large number of comparators that increase the complexity and cost of implementing large caches. Therefore, this type of cache is usually only used for small caches, typically less than 4K.',0);
INSERT INTO "cards" VALUES (272,1,'Disadvantage of a fully-associative cache?','- expensive due to parallel checks
- complexity of implementing this scheme',0);
INSERT INTO "cards" VALUES (273,1,'How do some processors handle caching for data and instructions?','There will be a slightly slower (3-4 clocks latency) separate cache for data.',0);
INSERT INTO "cards" VALUES (275,1,'What is an N-way set associative cache?','A Set-Associative cache scheme is a combination of Fully-Associative and Direct Mapped caching schemes. A set-associate scheme works by dividing the cache SRAM into equal sections (2 or 4 sections typically) called cache ways. The cache page size is equal to the size of the cache way. Each cache way is treated like a small direct mapped cache.',0);
INSERT INTO "cards" VALUES (276,1,'Describe the memory hierarchy of a Core i7 processor.','Inside of each core is a 32 kB L1 instruction cache, a 32 kB L1 data cache (it''s 8-way set associative), and a dedicated 256 kB L2 cache (also 8-way set associative). 
Outside of the cores is the L3, which is much larger at 8 MB and smarter (16-way associative) than the L2s.',0);
INSERT INTO "cards" VALUES (277,1,'When is entropy at its maximum?','When all outcomes are equal.',0);
INSERT INTO "cards" VALUES (278,1,'As predictability increases, what happens to entropy?','It decreases.',0);
INSERT INTO "cards" VALUES (279,1,'As it relates to compression, as entropy increases, does our ability to compress increase?','No, it decreases.',0);
INSERT INTO "cards" VALUES (280,1,'What does low entropy mean?','Very predictable.',0);
INSERT INTO "cards" VALUES (281,1,'What is entropy?','The minimum number of bits needed to represent x number of states. Also, information we don''t know.',0);
INSERT INTO "cards" VALUES (282,1,'What is a Caesar cipher?','The cipher created by shifting/rotating an alphabet by a specific number previously agreed upon.',0);
INSERT INTO "cards" VALUES (283,1,'What is a polyalphabetic cipher?','A cipher where each letter is shifted based on the shifts of letters in a key word.',0);
INSERT INTO "cards" VALUES (284,1,'What is the entropy of n equally likely outcomes?','log(n)',0);
INSERT INTO "cards" VALUES (285,1,'Is GET idempotent?','Yes',0);
INSERT INTO "cards" VALUES (286,1,'Is PUT idempotent?','Yes.',0);
INSERT INTO "cards" VALUES (287,1,'Is POST idempotent?','No.',0);
INSERT INTO "cards" VALUES (288,1,'Is DELETE idempotent?','According to the REST spec, yes, but it''s up to the developer to conform to that. It can be achieved by using a deleted flag for a resource instead of completely removing the resource.',0);
INSERT INTO "cards" VALUES (289,1,'What is idempotent?','The property that a method has side-effects of making more than one identical requests is the same as for a single request.',0);
INSERT INTO "cards" VALUES (290,1,'What is HMAC?','HMAC is a keyed-hash message authentication code used to provide a checksum for a message, sent along with the message to provide confidence that the message has not been tampered.',0);
INSERT INTO "cards" VALUES (291,1,'What is a MAC?','MAC is a message authentication code used to provide a checksum for a message, sent along with the message to provide confidence that the message has not been tampered.',0);
INSERT INTO "cards" VALUES (292,1,'How does RSA work?','It''s a public/private key cryptography method. The public key can be used to encrypt a message into ciphertext that only the owner of the key can decrypt. The owner of the key uses their secret key to encrypt messages, and their secret key to decrypt messages encrypted with their public key.',0);
INSERT INTO "cards" VALUES (293,1,'What is the phi function?','It answers the number of integers <= n that do not share a common factor with n.',0);
INSERT INTO "cards" VALUES (294,1,'What is phi(n) if n is prime?','n - 1',0);
INSERT INTO "cards" VALUES (295,1,'What is the gcd of a number a and prime p when p is prime?','1, unless a is a pseudoprime (Carmichael number)',0);
INSERT INTO "cards" VALUES (296,1,'What does SHA stand for?','One of the family of Secure Hashing Algorithms.',0);
INSERT INTO "cards" VALUES (297,1,'What is the largest output size of SHA-3?','512 bits',0);
INSERT INTO "cards" VALUES (298,1,'What are desirable properties of one-way functions?','- collision resistant
- target collision resistant
- non-malleable',0);
INSERT INTO "cards" VALUES (299,1,'If a one-way function is collision-resistant, does that mean it''s also target collision-resistant?','Yes.',0);
INSERT INTO "cards" VALUES (300,1,'If a one-way function is target collision-resistant, does that mean it''s also collision-resistant?','No.',0);
INSERT INTO "cards" VALUES (301,1,'What is symmetric key encryption?','There is a known encryption function, and one key is used to encrypt and decrypt. The key has to be shared between 2 parties.',0);
INSERT INTO "cards" VALUES (302,1,'How does Diffie-Hellman key exchange work?','2 parties agree on a G and a modulus p, and each party comes up with a number. One party does G^a and the other G^b. They pass this information. One party A computes the key from B as B^a mod p. B computes A^b mod p to get the key.',0);
INSERT INTO "cards" VALUES (303,1,'Is Diffie-Hellman key exchange perfect?','No. A man in the middle can intercept one side, and communicate with parties A and B independently.',0);
INSERT INTO "cards" VALUES (304,1,'How is RSA (using product of large primes) better than using NP-Complete algorithms for encryption?','NP-Complete algorithms are hard in the worst case, but can be sometimes solved in linear time in the average case. Compositing the product of large primes is hard in the average case.',0);
INSERT INTO "cards" VALUES (305,1,'What is Vigenere cipher?','Improvement on Caesar cipher. Letters are shifted based on a shifted dictionary. "Polyalphabetic cipher"',0);
INSERT INTO "cards" VALUES (306,1,'What is a one-time pad encryption?','The "perfect" simple encryption scheme. Pad/key is the same size as the message being encrypted. The key is randomly generated and xored against the plain text. Or key used to determine the amount each letter should be shifted.',0);
INSERT INTO "cards" VALUES (307,1,'What is block size in cryptography?','Symmetric key ciphers are generally divided into stream ciphers and block ciphers. Block ciphers operate on a fixed length string of bits. The length of this bit string is the block size. Both the input (plaintext) and output (ciphertext) are the same length; the output cannot be shorter than the input – this is logically required by the Pigeonhole principle and the fact that the cipher must be invertible – and it is simply undesirable for the output to be longer than the input.',0);
INSERT INTO "cards" VALUES (308,1,'What is the limiting factor of compression?','For lossless compression, it''s entropy. For lossy compression, it''s our acceptance with the amount of loss.',0);
INSERT INTO "cards" VALUES (309,1,'What is LZ* compression based on?','Cataloging the positions and lengths of redundant patterns and combining the values with a dictionary.',0);
INSERT INTO "cards" VALUES (310,1,'What is LZMA?','It''s a variant of LZ77 that uses Markov chains. It''s used in the 7z compression algorithms used in 7-zip.',0);
INSERT INTO "cards" VALUES (311,1,'What is DEFLATE?','It''s an lossless compression algorithm based on LZ77 used in Gzip, WinZip, and mod_deflate, which is bundled with Apache web server for automated gzip compression of HTTP served content. It uses LZ77 and Huffman coding.',0);
INSERT INTO "cards" VALUES (312,1,'How does LZ77-based compression work?','LZ77 is a dictionary encoding algorithm, which is a statistical encoding algorithm. Compression in the LZ77 algorithm is based on the notion that strings of characters (words, phrases, etc.) occur repeatedly in the message being compressed.

The input is partitioned into 2 segments: a search buffer and a look-ahead buffer. The search buffer maxes out at 32KB. Starting with one character in the LA buffer, it looks back in the search buffer to find a copy of the symbol. If one is found, it looks at the second symbol of the LA buffer to see if it also matches the predecessor. Using this method, it can detect long phrases of symbols and encode them as one unit.

This process implicitly creates a rolling statistical probability for each symbol/phrase.',0);
INSERT INTO "cards" VALUES (313,1,'What is Huffman encoding?','Huffman encoding algorithm analyzes the occurrence of individual symbols and creates a binary tree where the common symbols are closest to the root, using fewer bits to encode, and less common/rare symbols have longer paths on the tree, with longer encodings to accommodate. By traversing the tree, from root to leaf, and keeping track of 1 or 0 at each node, we can determine the encoding of the symbol.',0);
INSERT INTO "cards" VALUES (314,1,'What is the primary factor of compression?','Probability of redundant portions of input.',0);
INSERT INTO "cards" VALUES (315,1,'How can you maximize compression?','By deeply analyzing the given input to reduce redundancy as much as possible.',0);
INSERT INTO "cards" VALUES (316,1,'What compression scheme uses Burrows-Wheeler transform?','BZip2',0);
INSERT INTO "cards" VALUES (317,1,'What is the Burrows-Wheeler transform?','It''s a compression method involving the sorting of all possible rotations of the input text into lexicographic order. Take as output the last column and the index of the row that the original text appears in. 

To decode, take the single column and repeatedly add the final columns characters to each of the rows, sorting each time. Once you''ve reached the length of the column''s height, use the index to find the output string.',0);
INSERT INTO "cards" VALUES (318,1,'For Gzip in web servers, what is the usual setting?','6',0);
INSERT INTO "cards" VALUES (319,1,'What is the min and max compression settings in command line gzip?','0-9',0);
INSERT INTO "cards" VALUES (320,1,'How can you make JSON better compressable with Gzip?','Transpose from multiple mini-dicts into one dict with arrays as the values. This allows the items in an array to fit within the 32KB search buffer common to LZ-based compression.',0);
INSERT INTO "cards" VALUES (321,1,'What are Dense Codes?','A way to put symbols or words into a dictionary or array, and use the indices as the values in the text to save space so that words are not repeated.',0);
INSERT INTO "cards" VALUES (322,1,'What is the LZ in LZ compression?','Lempel-Ziv',0);
INSERT INTO "cards" VALUES (323,1,'What is OS hardware virtualization?','The abstraction of heterogeneous hardware provided by the operating system, to hide the details of interfacing with various hardware so that they share a common interface for that type.',0);
INSERT INTO "cards" VALUES (324,1,'What is a process?','An instance of an executing program consisting of an address space and one or more threads of control. It has restricted rights. It owns a region of memory. It owns file descriptors, file system context. It encapsulates one or more threads sharing the process'' resources. It is isolated from other processes.',0);
INSERT INTO "cards" VALUES (325,1,'What is a context switch?','The copying out and in of register state to switch from running one process to running another.',0);
INSERT INTO "cards" VALUES (326,1,'What is the scheduler?','The scheduler manages the priorities of user and OS processes.',0);
INSERT INTO "cards" VALUES (327,1,'What causes operating systems to crash most of the time?','Device drivers. They are in the kernel and very low level. They have access to all the hardware, including memory. They are written by authors outside of the operating system.',0);
INSERT INTO "cards" VALUES (328,1,'What is a process VM?','A virtual environment that supports the execution of a single program. This is provided by an operating system.',0);
INSERT INTO "cards" VALUES (329,1,'What is a system VM?','A virtual environment that supports the execution of an entire operating system and its applications.',0);
INSERT INTO "cards" VALUES (330,1,'How does the OS abstract the environment for a process?','Each process thinks it has all the memory and CPU time, and thinks it owns all devices.',0);
INSERT INTO "cards" VALUES (331,1,'What is fault isolation?','Processes are unable to directly impact other processes. Bugs can''t crash the whole machine.',0);
INSERT INTO "cards" VALUES (332,1,'What is a thread?','A single, unique execution context.',0);
INSERT INTO "cards" VALUES (333,1,'What''s the maximum address in memory for a 32 bit processor?','2^32 - 1',0);
INSERT INTO "cards" VALUES (334,1,'What is the execution sequence for a program?','- Fetch instruction
- Decode
- Execute (perhaps using ALU and writing result to a register)
- Write results to registers or memory
- Increment program counter
- Repeat',0);
INSERT INTO "cards" VALUES (335,1,'What does the program counter point to?','An address in memory that contains the current instruction.',0);
INSERT INTO "cards" VALUES (336,1,'What is the stack pointer?','A register that holds the address of the top of the stack portion of a process'' memory.',0);
INSERT INTO "cards" VALUES (337,1,'What is the heap pointer?','A register that holds the address of the top of the heap portion of a process'' memory.',0);
INSERT INTO "cards" VALUES (338,1,'What is multiprogramming?','Making one processor appear as multiple processors, each handling one process each.',0);
INSERT INTO "cards" VALUES (339,1,'What triggers a context switch?','Timer interrupt, hardware interrupt, I/O where we''re waiting for a read or write to complete (OS doesn''t want to waste time waiting), voluntary yield.',0);
INSERT INTO "cards" VALUES (340,1,'What is dual-mode operation?','Hardware provides at least 2 modes: user mode and kernel (aka: supervisor, protected) mode.',0);
INSERT INTO "cards" VALUES (341,1,'How does the OS run a program?','It does an exec from kernel mode (system mode 1). We go to system mode 0, user mode. When the program exits, we switch back to kernel mode.',0);
INSERT INTO "cards" VALUES (342,1,'How does a user program interact with the kernel?','It makes a system call, and the kernel takes over, completes the action, and the kernel returns to the process (back to user mode).',0);
INSERT INTO "cards" VALUES (343,1,'What happens when the hardware needs something to happen?','It does an interrupt, and the kernel takes control, switches the process, and once hardware task is complete, does a return from interrupt back to user mode.',0);
INSERT INTO "cards" VALUES (344,1,'What happens when a program makes an exception?','The program terminates, and switches to kernel mode.',0);
INSERT INTO "cards" VALUES (345,1,'What is base and bound?','It''s a memory addressing restriction where a processes are only allowed access to the memory between a base address and the bound + base addresses. Each process has its own base and bound. A drawback is you don''t get address 0. Address translation fixes this.',0);
INSERT INTO "cards" VALUES (346,1,'How does the OS know how to handle an interrupt?','It keeps an interrupt vector in the memory of the OS. Each interrupt type is mapped to an address to execute. They are just pointers to code in the OS.',0);
INSERT INTO "cards" VALUES (347,1,'What is the difference between PC and uPC?','PC is the program counter for the current process. uPC is the PC of the user process we will return to once an interrupt or other OS process switches context.',0);
INSERT INTO "cards" VALUES (348,1,'How are base and bound enforced?','They are stored in registers. Access is restricted by the hardware.',0);
INSERT INTO "cards" VALUES (349,1,'How does x86 do segments and stacks?','Each process'' individual segments (heap, stack, code, static data) get their own base and bound. They don''t even need to be adjacent in memory and their location is hidden by memory addressing.',0);
INSERT INTO "cards" VALUES (350,1,'When a process forks, what happens?','The process is paused, and a complete copy is made: code, stack, heap, data, program counter and registers.
The child and parent resume with returning from fork syscall.',0);
INSERT INTO "cards" VALUES (351,1,'What does fork() return?','It returns the child process id to the parent, and 0 to the child. < 0 if error.',0);
INSERT INTO "cards" VALUES (352,1,'What does wait() do?','Causes the parent process to pause until the child terminates.',0);
INSERT INTO "cards" VALUES (353,1,'What does exec() do?','It''s a system call to change the currently running program to something else.',0);
INSERT INTO "cards" VALUES (354,1,'What comes back from wait()?','on success, returns the process ID of the terminated child; on error, -1 is returned.',0);
INSERT INTO "cards" VALUES (355,1,'What is a signal?','A system call to send a notification to another process.',0);
INSERT INTO "cards" VALUES (356,1,'In a child process, what can you do with fork and then exec?','Create a completely new process and then exit.',0);
INSERT INTO "cards" VALUES (357,1,'What is a shell?','A job control program. It allows a programmer to create and manage a set of programs to do some task.',0);
INSERT INTO "cards" VALUES (358,1,'What is a microsecond? Also known as μs','1 millionth of a second.',0);
INSERT INTO "cards" VALUES (359,1,'What is a nanosecond?','1 billionth of a second. ns',0);
INSERT INTO "cards" VALUES (360,1,'What is a picosecond?','A trillionth of a second.',0);
INSERT INTO "cards" VALUES (361,1,'How does the kernel handle reads and writes?','It buffers reads so they can be handled as a stream in your program. Writes are buffered and are not written until the kernel flushes the buffer.',0);
INSERT INTO "cards" VALUES (362,1,'What''s the difference between the fread, read, fwrite, write I/O calls?','The ones with f are high-level I/O and streamed and buffered by the kernel. The non-f are low-level I/O.',0);
INSERT INTO "cards" VALUES (363,1,'When a system call is made, where are parameters stored?','In registers.',0);
INSERT INTO "cards" VALUES (364,1,'What is a socket?','It''s an abstraction of a network I/O queue.  It''s a method of communication where a producer writes to one side, and a consumer reads from the other side. It''s similar to writing and reading a file, but no file is involved.',0);
INSERT INTO "cards" VALUES (365,1,'What sockets are in modern use?','Local sockets to local machine, called UNIX sockets, and TCP/IP and UDP/IP.',0);
INSERT INTO "cards" VALUES (366,1,'What is the GIL?','It''s the Global Interpreter Lock. It''s is a part of CPython. It ensures only one thread runs in the interpreter at once. Having the GIL simplifies many low-level details (memory management, callouts to C extensions, etc.)',0);
INSERT INTO "cards" VALUES (367,1,'When is the GIL released?','During I/O (disk IO, network IO, output to display) including when a thread uses sleep.',0);
INSERT INTO "cards" VALUES (368,1,'What is a "tick" in CPython?','Approximately 1 machine instruction.',0);
INSERT INTO "cards" VALUES (369,1,'What happens every 100 "ticks" in the CPython interpreter?','A thread check occurs during which the thread releases the GIL then attempts to reacquire it. Other Python threads will contend for the the GIL. This is no longer the case in 3.4.',0);
INSERT INTO "cards" VALUES (370,1,'What is a lock in CPython?','It''s a binary semaphore. It''s not a mutex lock.',0);
INSERT INTO "cards" VALUES (371,1,'What happens when the heap gets too large?','It does a page fault, and the kernel will allocate more memory.',0);
INSERT INTO "cards" VALUES (372,1,'What happens when the heap and stack meet in memory?','A guard page is hit and the process is killed.',0);
INSERT INTO "cards" VALUES (373,1,'Where is information about a process stored?','In a PCB (process control block).',0);
INSERT INTO "cards" VALUES (374,1,'Where is information about a thread stored?','In a TCB (thread control block).',0);
INSERT INTO "cards" VALUES (375,1,'What do multiple threads in the same process share?','Heap, file descriptors, code, static data.',0);
INSERT INTO "cards" VALUES (376,1,'What do threads in a process NOT share?','Registers and stack.',0);
INSERT INTO "cards" VALUES (377,1,'What can happen with thread stacks if one goes into a deep recursion?','One thread''s stack can grow into another thread''s stack and write over it. A guard page can help to protect from that.',0);
INSERT INTO "cards" VALUES (378,1,'What can cause a thread to give control back to the dispatcher?','Thread returns control voluntarily (yield, requesting I/O (which blocks), wait for signal from another thread) or gets preempted by an interrupt.',0);
INSERT INTO "cards" VALUES (379,1,'How long does it take to do a process context switch?','3-4 microseconds.',0);
INSERT INTO "cards" VALUES (380,1,'How long does it take to perform a thread context switch?','100ns',0);
INSERT INTO "cards" VALUES (381,1,'How often do context switches happen?','Every 10-100 ms.',0);
INSERT INTO "cards" VALUES (382,1,'Context switch time increases sharply with the size of what? (by 100x or more.)','The working set - the subset of memory used by the process in a time window. Cache etc.',0);
INSERT INTO "cards" VALUES (383,1,'What happens in a system call to get the OS to switch to kernel mode?','A trap.',0);
INSERT INTO "cards" VALUES (384,1,'How many threads should you run per process?','One per core.',0);
INSERT INTO "cards" VALUES (385,1,'How is concurrency accomplished?','By multiplexing CPU time.',0);
INSERT INTO "cards" VALUES (386,1,'What''s the difference between parallelism and concurrency?','Concurrency means running multiple blocks of instructions independently. Parallelism means running instructions at the same time, as on multiple cores at once.',0);
INSERT INTO "cards" VALUES (387,1,'What is oversubscription?','Spawning more threads than available cores.',0);
INSERT INTO "cards" VALUES (388,1,'What is a race condition?','When the outcome of a deterministic procedure becomes non-deterministic based on differences in subprocess timing.',0);
INSERT INTO "cards" VALUES (389,1,'What can you put in place to exclusively use a resource without another process interfering?','A mutex, or even better, a lock guard.',0);
INSERT INTO "cards" VALUES (391,1,'How do you use a mutex in Python?','import threading

lock = threading.Lock()

[first process]
global lock
lock.release()
...
[other process]
global lock
lock.acquire() // attempts to get access, waits if it can''t',0);
INSERT INTO "cards" VALUES (392,1,'What does a future do?','Allows us to receive a return value from a function in a child thread.',0);
INSERT INTO "cards" VALUES (393,1,'What is a promise?','A promise to send a parameter to a child thread''s function later.',0);
INSERT INTO "cards" VALUES (394,1,'What is livelock?','It occurs when multiple processes are attempting to deal with the current state, but neither makes progress. This can happen when a system is attempting to resolve a deadlock situation but another or the same process continue to trigger it.
Starvation is another example.',0);
INSERT INTO "cards" VALUES (395,1,'How long does a terminated process stay in the terminated state?','Until the parent process does a wait to receive its exit code.',0);
INSERT INTO "cards" VALUES (396,1,'In Python, what can you use to fork a process?','The multiprocessing module. It supports process Pool and Process for making a pool of worker processes or forking temporary subprocesses.',0);
INSERT INTO "cards" VALUES (397,1,'What does the concurrent.futures module offer?','ThreadPoolExecutor
ProcessPoolExecutor
Executor objects
Future objects',0);
INSERT INTO "cards" VALUES (398,1,'What is an interrupt?','A hardware-invoked context switch. The interrupt handler always runs immediately.',0);
INSERT INTO "cards" VALUES (399,1,'What happens during an interrupt?','The currently running process'' state is saved. We switch to kernel mode, the interrupt handler runs, and once its complete, the system goes back to user mode and the process continues.',0);
INSERT INTO "cards" VALUES (400,1,'What really happens when you fork a process?','A fork doesn''t copy everything, it just duplicates the page table pointers, which are all set at read-only. Called copy-on-write. Once you write to memory, then it copies the state.',0);
INSERT INTO "cards" VALUES (401,1,'What is multiprocessing?','Parallel execution on multiple cores.',0);
INSERT INTO "cards" VALUES (402,1,'What does a PCB contain?','Everything about a process:
- status
- register state (when not in ready state)
- PID, User, Executable, Priority
- Execution time
- Memory space, translation',0);
INSERT INTO "cards" VALUES (403,1,'What is special about an interrupt handler?','It disables interrupts and runs to completion.',0);
INSERT INTO "cards" VALUES (404,1,'What are the five states a process can be in?','- new (when being created)
- ready
- running
- waiting (for I/O or event coordination)
- terminated (waits for parent process to receive its exit code)',0);
INSERT INTO "cards" VALUES (405,1,'What is the difference between filter() and map()?','Filter uses a function that returns true or false (predicate).
Map uses a function that returns a value.',0);
INSERT INTO "cards" VALUES (406,1,'What is synchronization?','Using atomic operations to ensure cooperation between threads.',0);
INSERT INTO "cards" VALUES (407,1,'What is a critical section?','A block of code that multiple threads within a process could try to access at the same time. To ensure correct processing, the critical section should be locked before entering, then unlocked when leaving. This creates a mutual exclusion on shared data.',0);
INSERT INTO "cards" VALUES (408,1,'What is the priority inversion problem?','A thread that is busy-waiting for a lock to be released ends up stealing CPU and getting a higher priority than the thread with the lock. SO since the waiting thread gets higher priority, the thread holding the lock can''t complete and release the lock.',0);
INSERT INTO "cards" VALUES (409,1,'What is busy-waiting?','One or more threads is using a lot of CPU by continuously checking a value, or test&set() checking and writing a value in wiating for a lock to release, thus stealing CPU from the thread holding the lock.',0);
INSERT INTO "cards" VALUES (410,1,'What is a semaphore?','A semaphore limits access to a maximum number of threads (maximum concurrency) to have access to a source at the same time. It is commonly used to limit database connections.

A semaphore (defined by Dijkstra) is kind of signaling solution for handling concurrency data integrity problems that arise in multi-threaded applications. It has a non-negative integer that supports 2 operations:
- P() [proberen, to test/probe] - atomic operation that waits for semaphore to become > 1, then decrements it by 1 (wait)
- V() [verhogen, to increment] - an atomic operation that increments the semaphore by 1, waking up any P (signal)

The initial semaphore value will determine how many threads can run in the critical section at once.',0);
INSERT INTO "cards" VALUES (411,1,'What''s another name for a mutual exclusion?','Binary semaphore.',0);
INSERT INTO "cards" VALUES (412,1,'What is a monitor?','A lock and zero or more condition variables for managing concurrent access to shared data.',0);
INSERT INTO "cards" VALUES (413,1,'What should locks and condition variables each be used for?','locks - mutual exclusion
condition variables - scheduling constraints',0);
INSERT INTO "cards" VALUES (414,1,'What is a condition variable?','A queue of threads waiting for access to something in a critical section.',0);
INSERT INTO "cards" VALUES (415,1,'What is a special feature of condition variables?','It allows sleeping inside a critical section by atomically releasing lock at the time we sleep.',0);
INSERT INTO "cards" VALUES (416,1,'What are the 3 methods on a condition variable?','wait(&lock)
signal() - signals the next waiting member
broadcast() - signals all waiting members',0);
INSERT INTO "cards" VALUES (417,1,'What type of scheduling do most modern processors use?','Mesa-scheduling.',0);
INSERT INTO "cards" VALUES (418,1,'What are some things the scheduler tries to accomplish?','- minimize response time
- maximize throughput
- fairness',0);
INSERT INTO "cards" VALUES (419,1,'What is a drawback of context switching?','CPU cache misses as thread comes back from switching and finds the CPU cache doesn''t have the values it had before.',0);
INSERT INTO "cards" VALUES (420,1,'What''s the convoy effect?','Short processes get stuck behind long processes in a FIFO style ready queue.',0);
INSERT INTO "cards" VALUES (421,1,'What is the round robin scheduling scheme?','Each process gets a time quantum q milliseconds to run. 10-100ms, the q is tunable. Each process runs for that time slice (or until completion if close to done) and then goes back on the ready queue.',0);
INSERT INTO "cards" VALUES (422,1,'What are pros of the round-robin scheduling scheme?','- better for short jobs (they fit in the time slice)
- fair',0);
INSERT INTO "cards" VALUES (423,1,'What is a con of the round-robin scheduling scheme?','Long jobs take longer because context-switching time adds up.',0);
INSERT INTO "cards" VALUES (424,1,'How long does context switching take?','0.1ms - 1ms
It''s roughly 1% overhead.',0);
INSERT INTO "cards" VALUES (425,1,'What is starvation?','When low-priority jobs never get run because there are always higher priority jobs running.',0);
INSERT INTO "cards" VALUES (426,1,'How does a process'' priority get changed?','The scheduler utilizes heuristics on interactivity, locking, burst behavior, etc.',0);
INSERT INTO "cards" VALUES (427,1,'What are some methods of avoiding deadlock?','- don''t allow waiting for a resource (means a lot of retries)
- make all threads request everything they''ll need at the beginning
- force all threads to request resources in a particular order preventing any cyclic uses of resources (so no cycle exists)
- temporarily expand resources when a deadlock is detected',0);
INSERT INTO "cards" VALUES (428,1,'What is the banker''s algorithm for preventing deadlock?','- allocate resources dynamically
- evaluate each request and grant if some ordering of threads is still deadlock-free afterward
- do so by pretending the request was granted, then running a simulation to see if a deadlock would occur',0);
INSERT INTO "cards" VALUES (429,1,'How does the banker''s algorithm solve the dining lawyers problem?','When you try to grab a chopstick, it''s either:
- not the last chopstick
- is last chopstick but someone else will have two afterwards',0);
INSERT INTO "cards" VALUES (430,1,'Does the CPU use virtual addresses or physical addresses?','Virtual addresses',0);
INSERT INTO "cards" VALUES (431,1,'What translates virtual to physical addresses?','The MMU - the memory management unit',0);
INSERT INTO "cards" VALUES (432,1,'What are the four conditions needed for a deadlock?','- mutual exclusion
- hold and wait
- no preemption
- circular wait',0);
INSERT INTO "cards" VALUES (433,1,'How many bits represent an IPv4 address?','32',0);
INSERT INTO "cards" VALUES (434,1,'How many bits represent an IPv6 address?','128',0);
INSERT INTO "cards" VALUES (435,1,'Name some of the protocols used within the TCP/IP application layer.','- http
- https
- ftp
- tftp
- ntp
- irc
- telnet
- smtp
- ssh
- dns
- snmp
- pop3',0);
INSERT INTO "cards" VALUES (436,1,'What is NTP?','Network time protocol',0);
INSERT INTO "cards" VALUES (437,1,'What are some protocols in the TCP/IP transport layer?','- TCP
- UDP',0);
INSERT INTO "cards" VALUES (438,1,'What are some TCP/IP network layer protocols?','IP - internet protocol
ICMP - internet control message protocol
ARP - address resolution protocol',0);
INSERT INTO "cards" VALUES (439,1,'What are some TCP/IP network access layer protocols?','- RJ45
- ISDN
- Microwave
- Ethernet
- Wifi
- Fiber optics
- ATM
- RJ48
- Copper cables',0);
INSERT INTO "cards" VALUES (440,1,'What is a PDU?','Protocol data unit
- generic term used to describe the information at a given layer in the TCP/IP stack',0);
INSERT INTO "cards" VALUES (441,1,'What is the PDU for OSI layer 7?','data, determined by what information is being exchanged: text, encrypted text, compressed data',0);
INSERT INTO "cards" VALUES (442,1,'What are the PDUs for the the OSI transport layer?','for TCP, it''s called a segment
for UDP, it''s called a datagram',0);
INSERT INTO "cards" VALUES (443,1,'What is the PDU for the TCP/IP internet layer?','packet',0);
INSERT INTO "cards" VALUES (444,1,'What are the 2 PDUs of the OSI Network Access layer?','data link layer: frames
physical layer: bits',0);
INSERT INTO "cards" VALUES (445,1,'What is the port for DNS?','53',0);
INSERT INTO "cards" VALUES (446,1,'What is the port for telnet?','23',0);
INSERT INTO "cards" VALUES (447,1,'What is the port for ssh?','22',0);
INSERT INTO "cards" VALUES (448,1,'What is the port range for clients?','8000-65535',0);
INSERT INTO "cards" VALUES (449,1,'How many bits are in an ethernet frame?','48 bits, represented as a hexadecimal number.',0);
INSERT INTO "cards" VALUES (450,1,'What does MAC stand for?','medium access control, a sublayer in the data link layer.',0);
INSERT INTO "cards" VALUES (451,1,'What is the PDU and the addressing at the data link layer?','PDU: frame
Addressing: physical (MAC) address',0);
INSERT INTO "cards" VALUES (452,1,'What devices are at the data link layer?','Bridges, switches (multi-port bridge). They inspect frames and forward or not.',0);
INSERT INTO "cards" VALUES (453,1,'What devices are at the Internet/Network layer?','Routers
Layer 3 switches: can be a switch or a router',0);
INSERT INTO "cards" VALUES (454,1,'What is the PDU and the addressing at the Internet/Network layer?','PDU: packet
Addressing IP address',0);
INSERT INTO "cards" VALUES (455,1,'What is the PDU and the addressing at the Transport layer?','PDU: segment
addressing: ports',0);
INSERT INTO "cards" VALUES (456,1,'What devices are at the Transport layer?','Firewalls',0);
INSERT INTO "cards" VALUES (457,1,'What is a socket in HTTP?','The combination of an IP address and a port.',0);
INSERT INTO "cards" VALUES (458,1,'What is involved in the 3 way handshake (TCP)?','SYN=1 - synchronize, gives a Seq number and expects that number + 1 in response
ACK=1 - sent by acknowledging server with incremented number, who also sends a SYN=1 and a Seq
SYN=0 ACK=1 and the Seq (incremented number) back to the server

Now you''re talking!',0);
INSERT INTO "cards" VALUES (459,1,'Does Kerberos use symmetric or asymmetric encryption?','Symmetric. It tracks all principals and their keys in its KDC table.',0);
INSERT INTO "cards" VALUES (460,1,'What are the 7 layers of the OSI model?','- application
- presentation
- session
- transport
- network
- data link
- physical',0);
INSERT INTO "cards" VALUES (461,1,'What are the 4 layers of TCP/IP?','- application (application, presentation, session in OSI)
- transport
- internet (network in OSI)
- network access (data link & physical in OSI)',0);
INSERT INTO "cards" VALUES (462,1,'How is an SSL certificate generated by the certificate authority (CA)?','The common name and public key for a given domain name, signed by the certificate authority''s secret key.
The browser can verify the cert with CA''s public key.',0);
INSERT INTO "cards" VALUES (463,1,'What is the secure flag on a cookie?','When set on a cookie, it will only be sent on https requests.
When not set, cookie will be sent on both http and https requests.',0);
INSERT INTO "cards" VALUES (464,1,'When does a Python multi-threaded program terminate?','The entire Python program exits when no alive non-daemon threads are left.',0);
INSERT INTO "cards" VALUES (465,1,'In Python, if a thread is set to daemon, what happens when the thread sleeps?','If the Python program reaches its end, the thread will be killed even if it''s sleeping.',0);
INSERT INTO "cards" VALUES (466,1,'If a thread is a daemon, what happens when you do a join()?','The main thread will wait for it.',0);
INSERT INTO "cards" VALUES (467,1,'What does WebRTC stand for?','Web Real-Time Communication',0);
INSERT INTO "cards" VALUES (468,1,'Give an example of the thread-per-connection pattern.','A web server might spawn a thread per connection, then reuse that thread once the connection ends, or terminate the thread.',0);
INSERT INTO "cards" VALUES (469,1,'Give an example of the thread pool model.','A pool of threads can be maintained in order to quickly provide one as a resource for a database connection.',0);
INSERT INTO "cards" VALUES (471,1,'What is contained in a packet?','- source IP
- destination IP
- data - some portion of the final payload',0);
INSERT INTO "cards" VALUES (472,1,'What is TLS?','The successor to SSL. All of SSL''s versions have been deprecated due to security issues.',0);
INSERT INTO "cards" VALUES (473,1,'What is the purpose of the transport layer?','To allow multiple applications to use one network connection simultaneously.',0);
INSERT INTO "cards" VALUES (474,1,'What is DNS spoofing?','A DNS server is compromised and returns incorrect IP addresses for a some domains.',0);
INSERT INTO "cards" VALUES (475,1,'What does TCP stand for?','Transmission Control Protocol',0);
INSERT INTO "cards" VALUES (476,1,'What is special about TCP?','It manages the sending and receiving of packet data.
It acknowledges receipt of packets.
If packets are missing, the source will resend the missing packets.',0);
INSERT INTO "cards" VALUES (477,1,'What is HTTP?','The protocol for client-server communication.',0);
INSERT INTO "cards" VALUES (478,1,'What does UDP stand for?','User Datagram Protocol.',0);
INSERT INTO "cards" VALUES (479,1,'What is the size of a UDP header?','8 bytes',0);
INSERT INTO "cards" VALUES (480,1,'What is the size of a TCP header?','20 bytes',0);
INSERT INTO "cards" VALUES (481,1,'What does ICMP stand for?','Internet Control Messaging Protocol',0);
INSERT INTO "cards" VALUES (482,1,'What does ICMP allow you to do?','Allows devices to communicate and send errors. Can echo to see if a device is on the network.',0);
INSERT INTO "cards" VALUES (483,1,'What does SNMP stand for?','Simple Network Management Protocol.',0);
INSERT INTO "cards" VALUES (484,1,'What does SNMP do?','Gathers info from machines on the network when each box has an SNMP agent installed. Can send a large amount of info about machines, software installed, and machine configuration.',0);
INSERT INTO "cards" VALUES (485,1,'Do you need to establish a connection before sending data via UDP?','No, it''s connectionless.',0);
INSERT INTO "cards" VALUES (486,1,'Tell me about the checksum in a UDP packet.','It''s a 16-bit checksum. It''s only mandatory on IPv6',0);
INSERT INTO "cards" VALUES (487,1,'How many times are packets sent in UDP?','Once.',0);
INSERT INTO "cards" VALUES (488,1,'What is special about UDP?','It''s connectionless, packets are only sent once and not re-sent if dropped. Packets may not arrive in the right order, and there is no ordering mechanism to fix on the receiving end. No congestion control.',0);
INSERT INTO "cards" VALUES (489,1,'What''s special about TCP?','It does a 3-way handshake before data is sent.
Delivery is acknowledged by receiver.
Packets missing within a certain time window are re-requested.
Packets are put in order on receipt.
Congestion control: can delay delivery until network is uncongested.
IPv4 and IPv6: error detection, checksum mandatory.',0);
INSERT INTO "cards" VALUES (490,1,'What does OSI stand for?','Open Systems Interconnect',0);
INSERT INTO "cards" VALUES (491,1,'Why was OSI created?','To solve the interoperability problem of having multiple heterogeneous networks.',0);
INSERT INTO "cards" VALUES (492,1,'Is OSI just a model?','Yes.',0);
INSERT INTO "cards" VALUES (493,1,'What network protocol won the networking wars?','TCP/IP, based on the OSI model.',0);
INSERT INTO "cards" VALUES (494,1,'What happens at the Application level of the OSI model?','This is where applications live and they handle data in many forms.',0);
INSERT INTO "cards" VALUES (495,1,'What happens in the Session layer of the OSI model?','This layer handles configuration of the data:
- encryption
- compression
- translation to and from different character encodings',0);
INSERT INTO "cards" VALUES (496,1,'What happens at the Session layer of the OSI model?','This layer controls the communication''s access via:
- login rights
- permissions
- rights
- roles',0);
INSERT INTO "cards" VALUES (497,1,'What happens at the Transport layer of the OSI model?','This layer guarantees end-to-end delivery of data:
- packet ordering
- error detection
- acknowledgements',0);
INSERT INTO "cards" VALUES (498,1,'What happens at the Network layer of the OSI model?','This layer''s function is to find the shortest path through the network to the destination network.
Deals with congestion, bandwidth, etc.',0);
INSERT INTO "cards" VALUES (499,1,'What happens at the Data Link layer of the OSI model?','It decides whose turn it is to talk on the network using bus arbitration methods.
It finds the physical device on the network.',0);
INSERT INTO "cards" VALUES (500,1,'What happens at the Physical layer of the OSI model?','It''s the physical network that deals with the physical transmission of electricity through wire:
- cables
- voltages
- frequencies
- connectors
- bits
- transfer rates
- and much more',0);
INSERT INTO "cards" VALUES (501,1,'How does HTTP/2 save bandwidth?','Headers are compressed and do not need to send the same headers in a session if they haven''t changed.
Servers can send assets referenced in a document without waiting for discrete requests for them.',0);
INSERT INTO "cards" VALUES (502,1,'How does HTTP/2 improve cache breaking?','A server can send updated assets using server push when it recognizes a file has changed.',0);
INSERT INTO "cards" VALUES (503,1,'What is the stream parallelism in HTTP/2?','It''s fully multiplexed, so it can use 100-1000 streams in a connection.',0);
INSERT INTO "cards" VALUES (504,1,'Is HTTP/2 binary or textual?','HTTP/2 is a binary protocol.',0);
INSERT INTO "cards" VALUES (505,1,'How are headers and body treated differently in HTTP/2?','They are split into a header frame and a data frame. Multiple requests can be interleaved in a connection, so a request doesn''t block.',0);
INSERT INTO "cards" VALUES (506,1,'What is priority in HTTP/2?','Different assets can have different priority so that below the fold content can arrive later.',0);
INSERT INTO "cards" VALUES (507,1,'What is the range of the first octet on a Class A network?','1-126. We don''t use 0 or 127.',0);
INSERT INTO "cards" VALUES (508,1,'How many network IDs are there on a Class A network?','2^7 = 128
First bit is 0, bits 1-7 are network IDs',0);
INSERT INTO "cards" VALUES (509,1,'How many host IDs are supported on a Class A network?','2^24 = 16 million
There are 8 bits for the network ID, and the remaining 24 bits are for host IDs.
So there are 16 million per network.',0);
INSERT INTO "cards" VALUES (510,1,'What is the range of the first octet on a Class B network?','128 - 191',0);
INSERT INTO "cards" VALUES (511,1,'How many network IDs are supported on a Class B network?','2^14 = 16,384
First 2 bits are 10, bits 3-16 are network IDs',0);
INSERT INTO "cards" VALUES (512,1,'How many host IDs are supported on a Class B network?','2^16 = 65,536
So there are 65,536 per network',0);
INSERT INTO "cards" VALUES (513,1,'What is the range of the first octet on a Class C network?','192-223',0);
INSERT INTO "cards" VALUES (514,1,'How many network IDs are supported on a Class C network?','2^21 = 2 million
First 3 bits are 110, bits 4-24 are network IDs',0);
INSERT INTO "cards" VALUES (515,1,'How many host IDs are supported on a Class C network?','2^8 = 256
There are 256 hosts per network',0);
INSERT INTO "cards" VALUES (516,1,'What is a class D network reserved for?','Multicasting',0);
INSERT INTO "cards" VALUES (517,1,'What is unicasting?','Sending a packet from one host to another.',0);
INSERT INTO "cards" VALUES (518,1,'What does a network ID end in?','0',0);
INSERT INTO "cards" VALUES (519,1,'What does a broadcast ID end in?','255',0);
INSERT INTO "cards" VALUES (520,1,'Who does a broadcast address of 255.255.255.255 send to?','All hosts within the network.',0);
INSERT INTO "cards" VALUES (521,1,'What is a directed broadcast?','It''s a broadcast to all hosts within another network.',0);
INSERT INTO "cards" VALUES (522,1,'What is a limited broadcast address?','The limited broadcast address is the address formed by setting all 32 bits of the IP address to 1 (255.255.255.255). The limited broadcast address is used when an IP node must perform a one-to-everyone delivery on the local network but the network ID is unknown.',0);
INSERT INTO "cards" VALUES (523,1,'Why should you make networks as small as possible?','For:
- security
- maintenance
- management',0);
INSERT INTO "cards" VALUES (524,1,'How you divide a network?','By subnetting.',0);
INSERT INTO "cards" VALUES (525,1,'What does a /27 CIDR mean?','The first 27 bits are masked with 1s. The remaining 5 bits are reachable in the subnet.',0);
INSERT INTO "cards" VALUES (526,1,'What does a /24 CIDR mean?','The first 24 bits of the IP address are masked. Only hosts with addresses in the unmasked portion are reachable.',0);
INSERT INTO "cards" VALUES (527,1,'What is a block cipher?','A block cipher is a method of encrypting text (to produce ciphertext) in which a cryptographic key and algorithm are applied to a block of data (for example, 64 contiguous bits) at once as a group rather than to one bit at a time.',0);
INSERT INTO "cards" VALUES (528,1,'What is QUIC?','QUIC is a new transport which reduces latency compared to that of TCP. On the surface, QUIC is very similar to TCP+TLS+HTTP/2 implemented on UDP.',0);
INSERT INTO "cards" VALUES (529,1,'What is Capsicum?','A sandboxing framework that adds capability-based security to unix-like kernels and denies access to global namespaces.',0);
INSERT INTO "cards" VALUES (530,1,'What is a global namespace in unixy terms?','aspects of a system that can be accessed from anywhere:
- file paths
- networks
- PIDs',0);
INSERT INTO "cards" VALUES (531,1,'What is Google Native Client?','Also called NaCl, Native Client is a sandbox for running compiled C and C++ code in the browser efficiently and securely, independent of the user’s operating system.',0);
INSERT INTO "cards" VALUES (532,1,'What are web sockets?','Full-duplex communication between client and server.',0);
INSERT INTO "cards" VALUES (533,1,'What is the same-origin policy?','Goal: Two websites should not be able to tamper with each other.
Strategy: each resource is assigned an origin. JS can only access resources from its own origin.
Origin: scheme + hostname + port',0);
INSERT INTO "cards" VALUES (534,1,'How can 2 origins (let''s say 2 frames) communicate?','window.postMessage (HTML5) allows for sending data messages between two windows/frames across domains.',0);
INSERT INTO "cards" VALUES (535,1,'What is JIT compilation?','JIT compilation, also known as dynamic translation, is compilation done at run-time rather than ahead of time (AOT).',0);
INSERT INTO "cards" VALUES (536,1,'What is PyPy?','PyPy is a replacement for CPython. It is built using the RPython language that was co-developed with it. RPython is a subset of Python and can be translated to C. The main reason to use it instead of CPython is speed: it runs generally faster due to JIT compilation.
PyPy implements Python 2.7.10. It supports all of the core language, passing the Python test suite (with minor modifications that were already accepted in the main python in newer versions). It supports most of the commonly used Python standard library modules.',0);
INSERT INTO "cards" VALUES (537,1,'What does SMT stand for?','Satisfiability modulo theories.',0);
INSERT INTO "cards" VALUES (538,1,'What is an SMT solver?','A satisfiability modulo theories solver solves for large interconnected logic formulas to determine if a given formula can be satisfied. These are helpful for determining the outcome or inputs for a program using symbolic execution.',0);
INSERT INTO "cards" VALUES (539,1,'How do we find that a condition exists that will cause a program to have a predicted outcome?','Using an SAT solver (using logic tests) and an SMT solver (that plugs in numbers), and tells the SAT solver where it got it wrong. They provide feedback in a cycle to each other until a condition can be found.',0);
INSERT INTO "cards" VALUES (540,1,'What is  transactional memory?','Transactional memory attempts to simplify concurrent programming by allowing a group of load and store instructions to execute in an atomic way. It is a concurrency control mechanism analogous to database transactions for controlling access to shared memory in concurrent computing.',0);
INSERT INTO "cards" VALUES (541,1,'What is software transactional memory?','Software transactional memory provides transactional memory semantics in a software runtime library or the programming language, and requires minimal hardware support (typically an atomic compare and swap operation, or equivalent). As the downside, software implementations usually come with a performance penalty, when compared to hardware solutions.',0);
INSERT INTO "cards" VALUES (542,1,'Does PyPY have a GIL?','Yes. The GIL is very difficult to remove. You can use pypy-stm instead, which uses software transactional memory, but will suffer a performance penalty.',0);
INSERT INTO "cards" VALUES (543,1,'How can a server deal with a SYN flood attack?','When it detects a large number of SYN packets at once, or the size of its SN (sequence number) data structure reaches a certain threshold of entries, it can switch to a stateless version, where it send SN responses as signed values with a timestamp, and if it receives one back it lets them through without needing a lookup table.',0);
INSERT INTO "cards" VALUES (544,1,'What is a stack canary?','It''s a buffer overflow defense where a random value is pushed onto the stack after the saved EBP, and before tearing down the stack frame, the value is checked. Any buffer flow targeting the return instruction pointer would have to have overwritten this value.',0);
INSERT INTO "cards" VALUES (545,1,'What type of buffer overflow protection does gcc and Visual Studio employ?','They use a stack check guard of bytes before and after the buffer''s allocated memory. Once values are written to the buffer, the bytes are checked to ensure they are still the same.',0);
INSERT INTO "cards" VALUES (546,1,'What is scalability?','Scalability is the measure to which a system can adapt to a change in demand for resources, without negatively impacting performance.',0);
INSERT INTO "cards" VALUES (547,1,'What is Akka?','An open source project that provides a simpler, single programming model - one way of coding for concurrent and distributed applications - the actor programming model.
Akka’s primary goal is to make it simpler to build applications that are deployed in the cloud or run on devices with many cores and that efficiently leverage the full capacity of the computing power available. It’s a toolkit that provides an actor model, runtime, and required supporting tools for building scalable applications.',0);
INSERT INTO "cards" VALUES (548,1,'What is an actor?','Briefly, actors are a lot like message queues without the configuration and message broker installation overhead. They’re like programmable message queues shrunk to microsize—you can easily create thousands, even millions of them. They don’t “do”
anything unless they’re sent a message.
Messages are simple data structures that can’t be changed after they’ve been created, or in a single word, they’re immutable.
Actors can receive messages one at a time and execute some behavior whenever a message is received. Unlike queues, they can also send messages (to other actors).
Everything an actor does is executed asynchronously. Simply put, you can send a message to an actor without waiting for a response. Actors aren’t like threads, but messages sent to them are pushed through on a thread at some point in time. How actors are connected to threads is configurable - this is not a hardwired relationship.
For now the most important aspect of actors is that you build applications by sending and receiving messages. A message could be processed locally on some available thread, or remotely on another server. Exactly where the message is processed and where the actor lives are things you can decide later, which is very different compared to hardcoding threads and RPC style networking. Actors make it easy to build your application out of small parts that resemble networked services, only shrunk to microsize in footprint and administrative overhead.',0);
INSERT INTO "cards" VALUES (549,1,'What is an IDL-based encoding?','An interface description language or interface definition language (IDL) encoding. 
It requires a schema definitions. They offer peace of mind with respect to data format and validation for consumers while sacrificing flexibility in the schema’s evolution.',0);
INSERT INTO "cards" VALUES (550,1,'What is Tarantool?','An in-memory noSQL database that uses write-ahead logging for crash resistance and persistence.',0);
INSERT INTO "cards" VALUES (551,1,'What is a coroutine?','An object representing activity that eventually completes. Also refers the the function we call that returns a coroutine.
In Python, coroutines are generators.',0);
INSERT INTO "cards" VALUES (552,1,'What is a future?','An object representing a result that may not be available yet.',0);
INSERT INTO "cards" VALUES (553,1,'What is AQP?','Approximate query processing. It means pulling a sample of data instead of taking time to process an exact result. It is often used when a data storage involves terabytes or more.',0);
INSERT INTO "cards" VALUES (554,1,'How would you visualize billions of items in a graph?','In many cases, you don''t need to graph every point, just use visualization-aware sampling. Sometime 1% or less will do.',0);
INSERT INTO "cards" VALUES (555,1,'What is F1/Spanner?','Fault-Tolerant Distributed RDBMS (Spanner) Supporting Google''s Ad Business (F1)',0);
INSERT INTO "cards" VALUES (556,1,'What is Photon?','Fault-tolerant and Scalable Joining of Continuous Data Streams',0);
INSERT INTO "cards" VALUES (557,1,'What is Mesa?','Geo-Replicated, Near Real-Time, Scalable Data Warehousing',0);
INSERT INTO "cards" VALUES (558,1,'How does Google use multi-homed datacenters?','A multi-homed system runs live in multiple datacenters all the time. Each datacenter processes work all the time, and work is dynamically shared between datacenters to balance load. When one datacenter is slow, some fraction of work automatically moves to faster datacenters. When a datacenter is completely unavailable, all its work is automatically distributed to other datacenters.',0);
INSERT INTO "cards" VALUES (559,1,'What is ElasticSearch?','Open Source, Distributed, RESTful Search Engine',0);
INSERT INTO "cards" VALUES (560,1,'What is an example of a circuit breaker?','Start sending 503s if your service is choked to avoid numerous simultaneous retries that just make the system worse.',0);
INSERT INTO "cards" VALUES (561,1,'What is the name of Google''s search ranking algorithm?','Hummingbird. PageRank is just one factor used by the algorithm.',0);
INSERT INTO "cards" VALUES (562,1,'What is celery?','Distributed Task Queue',0);
INSERT INTO "cards" VALUES (563,1,'LRU is the most popular type of what kind of policy?','Eviction',0);
INSERT INTO "cards" VALUES (564,1,'What does an eviction policy try to predict?','An eviction policy tries to predict which entries are most likely to be used again in the near future, thereby maximizing the hit ratio',0);
INSERT INTO "cards" VALUES (565,1,'What is Caffiene?','Caffeine is a high performance, near optimal caching library based on Java 8.',0);
INSERT INTO "cards" VALUES (566,1,'What is request coalescing?','When many requests arrive for some content that’s missing in the cache (cache miss), only one instance request will proceed to the backend to fetch the content on behalf of all to avoid a flood.',0);
INSERT INTO "cards" VALUES (567,1,'When might you need to use a NoSQL database','You don’t have any relational data.
If you need to store > 5 TB of data or you have an incredibly data intensive workload.
Your application has super low-latency requirements.
You need really high throughput.',0);
INSERT INTO "cards" VALUES (568,1,'What is AMP?','AMP is a restricted subset of HTML designed to make the web fast on mobile devices.
Provides a shared library of scripts so they don’t have to downloaded every time.
Sets standards for the architecture of advertising so advertising doesn''t infect pages.
Shared mechanism for collecting data for analytics so you don’t have N different packages on a page gathering stats.',0);
INSERT INTO "cards" VALUES (569,1,'What is a benefit of making processes asynchronous?','Flexibility in the architecture. Getting users on hooked on synchronous low-latency interactions doesn''t allow for architecture flexibility.',0);
INSERT INTO "cards" VALUES (570,1,'What is BASE?','basically available
soft state
eventually consistent

A BASE based system is more tolerant to latency because it is an inherently partitioned and loosely coupled architecture and it uses eventual consistency.',0);
INSERT INTO "cards" VALUES (571,1,'What is ACID?','atomicity
consistency
isolation
durability',0);
INSERT INTO "cards" VALUES (572,1,'What is the CAP theorem?','The CAP theorem, also named Brewer''s theorem, states that it is impossible for a distributed computer system to simultaneously provide all three of the following guarantees:

- Consistency (all nodes see the same data at the same time)
- Availability (every request receives a response about whether it succeeded or failed)
- Partition tolerance (the system continues to operate despite arbitrary partitioning due to network failures)',0);
INSERT INTO "cards" VALUES (573,1,'What is zero copy?','Applications that use zero copy request that the kernel copy the data directly from the disk file to the socket, without going through the application. Zero copy greatly improves application performance and reduces the number of context switches between kernel and user mode.',0);
INSERT INTO "cards" VALUES (574,1,'What is a metaclass?','Any callable (function or class) that implements type()''s function signature.',0);
INSERT INTO "cards" VALUES (575,1,'What is privilege separation?','Separating an application into different areas so a vulnerability in one area doesn''t affect the entire application.',0);
INSERT INTO "cards" VALUES (576,1,'In security, what is a principal?','An entity with privileges or rights.',0);
INSERT INTO "cards" VALUES (577,1,'In Unix, who is the owner of a file?','The user with the user ID that matches the UID of the inode.',0);
INSERT INTO "cards" VALUES (578,1,'What privilege do you need to lookup files or directories in a path?','The executable permission.',0);
INSERT INTO "cards" VALUES (579,1,'When is security enforced on a file?','Security is checked when the file descriptor is created. Then it''s up to the user to be careful and secure the file descriptor.',0);
INSERT INTO "cards" VALUES (580,1,'What is ptrace?','ptrace is a system call found in several Unix and Unix-like operating systems. By using ptrace, one process can control another, enabling the controller to inspect and manipulate the internal state of its target.',0);
INSERT INTO "cards" VALUES (581,1,'What can you use to debug a process?','ptrace',0);
INSERT INTO "cards" VALUES (582,1,'What user privilege is required to bind to ports < 1024?','root',0);
INSERT INTO "cards" VALUES (583,1,'During system bootstrapping, what call is performed by the system to give a non-root user the ownership of a process?','setuid()',0);
INSERT INTO "cards" VALUES (584,1,'What are the setuid binaries?','su
sudo',0);
INSERT INTO "cards" VALUES (585,1,'What does chroot do?','Changes the root directory (/) for a user to be a directory on the filesystem where they can''t escape.',0);
INSERT INTO "cards" VALUES (586,1,'What is a confused deputy?','A confused deputy is a computer program that is innocently fooled by some other party into misusing its authority. It is a specific type of privilege escalation. In information security, the confused deputy problem is often cited as an example of why capability-based security is important, as capability systems protect against this whereas access control list-based systems do not.
The classic example is a Fortran compiler that creates a billing record for each use. A user was able to tell the compiler to output a binary with the same name as the billing file, overwriting it.',0);
INSERT INTO "cards" VALUES (587,1,'What is an example of a confused deputy in the web frontend world?','A CSRF attack.',0);
INSERT INTO "cards" VALUES (588,1,'What is ambient authority, or ambient privilege?','The decision about whether a process or agent can perform an action is based on information not explicitly stated, but inherited instead.',0);
INSERT INTO "cards" VALUES (589,1,'What is a capability?','The privilege to act upon something given your ownership of it, and the inability to act on something using an intermediate process'' privileges. An example would be a function where you pass a file descriptor as an argument and the function uses your capability, not its own.',0);
INSERT INTO "cards" VALUES (590,1,'What is a requirement of enabling sandboxing?','The kernel must be able to support it by disallowing system calls that reference global namespaces:
- file paths starting at root - must be relative
- network
- PIDs - use process descriptors instead',0);
INSERT INTO "cards" VALUES (591,1,'How is RSA decryption optimized for speed?','- c^d mod p and c^d mod q are processed in parallel and merged at the end using the Chinese remainder theorem
- put into Montgomery format
- sliding windows to exponentiate on bits of exponent
- perhaps a single extra reduction
- convert back from Montgomery format
- merge using CRT',0);
INSERT INTO "cards" VALUES (592,1,'How do you change a positive integer to negative?','Subtract 1, flip all bits',0);
INSERT INTO "cards" VALUES (593,1,'How do you change a negative integer to positive?','Flip all bits, then add 1',0);
INSERT INTO "cards" VALUES (594,1,'What is Intel architecture?','CISC - Complex Instruction Set Computer
Many special-purpose instructions.',0);
INSERT INTO "cards" VALUES (595,1,'What size are Intel instructions?','They are variable-length, from 1 to theoretically 16 bytes.',0);
INSERT INTO "cards" VALUES (596,1,'What is RISC?','Reduced Instruction Set Architecture. 
- more registers
- fewer, fixed-sized instructions
- used in PowerPC, ARM, SPARC, MIPS',0);
INSERT INTO "cards" VALUES (597,1,'What Endianness is Intel?','Little Endian, but only in memory. In registers, all are Big Endian.',0);
INSERT INTO "cards" VALUES (599,1,'What is Little Endianness?','The least significant bytes of a word or larger are stored in the lowest address. All bytes are the same. There is no Endianness within a byte.',0);
INSERT INTO "cards" VALUES (600,1,'How many registers are on CISC?','8 general-purpose registers and an instruction pointer. 2 of 8 are not that general.',0);
INSERT INTO "cards" VALUES (601,1,'What is the word size on Intel?','16 bits',0);
INSERT INTO "cards" VALUES (602,1,'What is the double-word size on Intel?','32 bits',0);
INSERT INTO "cards" VALUES (603,1,'What is Big Endianness?','The most significant bytes of a word or larger are stored in the lowest address.',0);
INSERT INTO "cards" VALUES (604,1,'What is the EAX register used for?','Stores the function''s return value.',0);
INSERT INTO "cards" VALUES (605,1,'What is the EBX register used for?','Base pointer to the data section.',0);
INSERT INTO "cards" VALUES (606,1,'What is the ECX register used for?','Counter for string and loop operations.',0);
INSERT INTO "cards" VALUES (607,1,'What is the EDX register used for?','I/O pointer',0);
INSERT INTO "cards" VALUES (608,1,'What is the ESI register used for?','Source pointer for string or other copy operations.',0);
INSERT INTO "cards" VALUES (609,1,'What is the EDI register used for?','Destination pointer for string or other copy operations.',0);
INSERT INTO "cards" VALUES (610,1,'What is the ESP register used for?','Stack pointer',0);
INSERT INTO "cards" VALUES (611,1,'What is the EBP register used for?','Stack frame base pointer',0);
INSERT INTO "cards" VALUES (612,1,'What is the EIP register used for?','Instruction pointer - next instruction pointer to execute.',0);
INSERT INTO "cards" VALUES (613,1,'What are the caller-save registers?','eax
edx
ecx',0);
INSERT INTO "cards" VALUES (614,1,'What are the callee-save registers?','ebp
ebx
esi
edi',0);
INSERT INTO "cards" VALUES (615,1,'Other than the main registers, what other registers can be used?','Legacy 8 and 16-bit registers: AX, AH, AL, SP, BP, SI',0);
INSERT INTO "cards" VALUES (616,1,'What is the caller register-saving convention on Linux systems?','cdecl - C declaration',0);
INSERT INTO "cards" VALUES (617,1,'What is avalancing?','The effect of a hashing method where a small change in the input has a large effect on the output.',0);
INSERT INTO "cards" VALUES (618,1,'What is Chef?','A configuration tool. You write or reuse recipes that declare the state you wish your server to be in. It calculates the delta and builds out for you.',0);
INSERT INTO "cards" VALUES (619,1,'What is an example of a non-cryptographic hash function?','MurmurHash is an efficient, non-cryptographic hash function suitable for general hash-based lookup. The name comes from two basic operations, multiply (MU) and rotate (R), used in its inner loop. It has an avalanche effect. The current version is MurmurHash3 which yields a 32-bit or 128-bit hash value.',0);
INSERT INTO "cards" VALUES (620,1,'How could you process calculations on elements of an array in parallel?','Using recursion, divide and conquer, breaking down the array into smaller segments, then merging the values as the recursion unwinds. Non-mutation of the array means locking is not required.',0);
INSERT INTO "cards" VALUES (621,1,'What factor should you keep in mind when doing parallel computation on different parts of a large data structure?','The memory bandwidth of your RAM. It can become a bottleneck.',0);
INSERT INTO "cards" VALUES (622,1,'What will be the computation time when processing multiple tasks?','The length of time the longest subcomputation takes.',0);
INSERT INTO "cards" VALUES (623,1,'Why should you avoid starting and joining a task or thread on the same line or proximity?','Execution on the current thread will block until it completes, thereby obviating the concurrent call.',0);
INSERT INTO "cards" VALUES (624,1,'What factors affect performance?','- processor speed 
- number of processors
- memory access latency and throughput
- cache behavior
- runtime behavior (garbage collection, JIT compilation, thread scheduling)',0);
INSERT INTO "cards" VALUES (625,1,'What is Amdahl''s Law?','It gives the theoretical speedup in latency of the execution of a task at fixed workload that can be expected of a system whose resources are improved.',0);
INSERT INTO "cards" VALUES (626,1,'What aspects are important in measuring and benchmarking performance, parallel or otherwise?','- multiple repetitions
- statistical treatment - mean and variance
- eliminate statistical outliers
- ensuring steady-state (warm-up)
- preventing anomalies (garbage collection, JIT compilation, compiler optimizations in benchmark code that misrepresents real-world)',0);
INSERT INTO "cards" VALUES (627,1,'When associative operations are used, what does it mean?','Grouping doesn''t matter. It will evaluate to the same result.',0);
INSERT INTO "cards" VALUES (628,1,'What is a synonym of reduce()?','fold()',0);
INSERT INTO "cards" VALUES (629,1,'What is the commutative property?','The condition that a group of quantities connected by operators gives the same result whatever the order of the quantities involved. So order of operands doesn''t matter, but grouping may matter.',0);
INSERT INTO "cards" VALUES (630,1,'What is a bag?','A multiset.',0);
INSERT INTO "cards" VALUES (631,1,'What is a multiset?','A set in which elements do not have to be unique.',0);
INSERT INTO "cards" VALUES (632,1,'What are some examples of operations that are both associative and commutative?','- Addition and multiplication of integers
- Union, intersection, and  symmetric difference of sets
- Addition of vectors
- Addition of matrices of fixed dimension
- Addition and multiplication of polynomials',0);
INSERT INTO "cards" VALUES (633,1,'What are some examples of operations that are associative but not commutative?','- concatenation of lists
- concatenation of strings
- matrix multiplication',0);
INSERT INTO "cards" VALUES (634,1,'What should we worry about floating point addition and multiplication?','It is commutative but not associative.',0);
INSERT INTO "cards" VALUES (635,1,'What is the rule of thumb before optimizing or parallelizing?','Ensure the code works correctly first. Then, if you want to get fancy, you can begin to optimize your code for greater speed.',0);
INSERT INTO "cards" VALUES (636,1,'Does Python have an opcode cache?','In a way. It outputs a .pyc file, containing the bytecode. When a module is imported for the first time, or when the source is more recent than the current compiled file, a .pyc file containing the compiled code will usually be created in the same directory as the .py file. When you run the program next time, Python uses this file to skip the compilation step.',0);
INSERT INTO "cards" VALUES (637,1,'Design a URL shortening service.','ask:',0);
INSERT INTO "cards" VALUES (638,1,'How would you design the feature in LinkedIn where it computes how many hops there are between you and another person?','ask:',0);
INSERT INTO "cards" VALUES (639,1,'If you were to design a web platform for online chess games, how would you do that?','ask:
-',0);
INSERT INTO "cards" VALUES (640,1,'What are some key things to remember when scaling a large system?','1) Asynchronous is good  (use queues, topics/pub-sub)
2) Parallel is good  (multi-threading, load balancing etc.)
3) Avoid points of contention e.g. synchronization
4) Avoid writing to disk until you must - cache like crazy
5) Scale out not up
6) At web scale the speed of light is a problem
7) At web scale everything fails - networks, load balancers etc.',0);
INSERT INTO "cards" VALUES (641,1,'What is Thrift?','Apache Thrift is a framework for scalable cross-language services development. It combines a software stack with a code generation engine to build services that work efficiently and seamlessly between different languages. It handles serialization and has its own communication protocol.
IDL-based.',0);
INSERT INTO "cards" VALUES (642,1,'What is Memcache?','An in-memory distributed hash table. It supports only a few commands but it is extremely efficient.',0);
INSERT INTO "cards" VALUES (643,1,'How does/did Facebook use memcache and mySQL in 2009?','No joins in production. They have many logical databases for all of their types: people, events, place info, etc. They treat the web tier as a CPU, memcache as system memory, and the database as disk. Everything has an ID and you use the ID to query memcache using a multiget. Any misses are fetched from the database and cached in memcache.',0);
INSERT INTO "cards" VALUES (644,1,'What is an out-of-band cache?','A cache layer that does not synch with persistent storage. When changes are made to the database, there are no notifications to synchronize with the cache. The cache entry would need to be updated or evicted by other means.',0);
INSERT INTO "cards" VALUES (645,1,'What is a monad?','In functional programming, monads are a way to build computer programs by joining simple components in predictable and robust ways. A monad is a structure that represents computations defined as sequences of steps: a type with a monad structure defines what it means to chain operations together, or nest functions of that type. This allows the programmer to build pipelines that process data in a series of steps (i.e. a series of actions applied to the data), in which each action is decorated with additional processing rules provided by the monad. A monad is defined by a return operator that creates values, and a bind operator used to link the actions in the pipeline.',0);
INSERT INTO "cards" VALUES (646,1,'What is pyramidpypi?','A self-hosted mirror of pypi.',0);
INSERT INTO "cards" VALUES (647,1,'Big Omega represents what?','A lower bound on the growth of a function. f grows at least as fast as g.',0);
INSERT INTO "cards" VALUES (648,1,'Theta represents what?','A tight asymptotic bound on a function, in other words if both f and g have approximately the same rate of growth.',0);
INSERT INTO "cards" VALUES (649,1,'For graph problems, the complexity  Theta(N + M) is known as what?','linear in the graph size',0);
INSERT INTO "cards" VALUES (650,1,'What is a better way of saying "at least O(n^2)"?','big Omega(n^2)',0);
INSERT INTO "cards" VALUES (651,1,'What is data normalization?','Normalization is a systematic approach of decomposing tables to eliminate data redundancy and undesirable characteristics like insertion, update and deletion anomalies.

Normalization is used for mainly two purpose,
- eliminating redundant (useless) data
- ensuring data dependencies make sense',0);
INSERT INTO "cards" VALUES (652,1,'What are the requirements for first normal form?','- each cell has a single value
- all items in a column must be of the same type
- rows are uniquely identified by a unique ID or a composite key',0);
INSERT INTO "cards" VALUES (653,1,'What are the requirements for second normal form?','All attributes (non-key columns) are dependent on the key',0);
INSERT INTO "cards" VALUES (654,1,'What are the requirements for third normal form?','All fields can only be determined by the key in the table and no other column.',0);
INSERT INTO "cards" VALUES (655,1,'What are the requirements for fourth normal form?','No multi-valued dependencies, meaning records should not be duplicated in a table just because more than one item is associated. This creates records that are duplicates except for one field.',0);
INSERT INTO "cards" VALUES (656,1,'What are some use cases of Hadoop?','- reporting on user behavior over many events
- log processing of 100s of billions of rows',0);
INSERT INTO "cards" VALUES (657,1,'What are some solid principles to keep in mind for scaling?','- Keep it very simple
- Don’t re-invent the wheel
- Go with boring, proven and well-supported technologies when you can
- Build for what you will need over the next 12-18 months
- Make different things look the same
- Cache to protect the database
- Good enough is good enough',0);
INSERT INTO "cards" VALUES (658,1,'What is gunicorn?','A Python WSGI HTTP Server',0);
INSERT INTO "cards" VALUES (659,1,'What is WSGI?','WSGI is the Web Server Gateway Interface. It is a specification that describes how a web server communicates with web applications, and how web applications can be chained together to process one request. It was outlined in PEP 3333.

A WSGI server (meaning WSGI compliant) only receives the request from the client, pass it to the application and then send the response returned by the application to the client.',0);
INSERT INTO "cards" VALUES (660,1,'What is Fabric?','Fabric is a Python (2.5-2.7) library and command-line tool for streamlining the use of SSH for application deployment or systems administration tasks.',0);
INSERT INTO "cards" VALUES (661,1,'What is Apache Solr?','Solr is an open source enterprise search platform built on Apache Lucene.
Solr is highly reliable, scalable and fault tolerant, providing distributed indexing, replication and load-balanced querying, automated failover and recovery, centralized configuration and more.',0);
INSERT INTO "cards" VALUES (662,1,'What is munin?','Graph metrics and alerting.',0);
INSERT INTO "cards" VALUES (663,1,'What tends to become an issue as you add services in a datacenter and have to ping more caches and services to fulfill a request?','Fan-in, where you can overload routers due to increased internal network traffic.',0);
INSERT INTO "cards" VALUES (664,1,'What can Redis be used for?','- a noSQL key-value store
- caches
- queues',0);
INSERT INTO "cards" VALUES (665,1,'What is a benefit of sharding a database as it grows, and what determines the size?','Keeping the index in cache ensures a user lookup doesn''t have to hit the disk, lookups can be served from RAM. How much RAM you have will determine the index size which will hint at the underlying data size.',0);
INSERT INTO "cards" VALUES (666,1,'Why do most businesses end up sharding as they scale?','To support massive concurrent writes.',0);
INSERT INTO "cards" VALUES (667,1,'What is a message broker?','Message broker is an intermediary program module that translates a message from the formal messaging protocol of the sender to the formal messaging protocol of the receiver. Message brokers are elements in telecommunication networks where software applications communicate by exchanging formally-defined messages. Message brokers are a building block of Message oriented middleware.',0);
INSERT INTO "cards" VALUES (668,1,'What are some examples of message brokers?','Apache ActiveMQ
Apache Kafka
Apache Qpid
Celery
Gearman
HornetQ (Red Hat)
IBM Integration Bus
JBoss Messaging (JBoss)
JORAM
Microsoft BizTalk Server (Microsoft)
Microsoft Azure Service Bus (Microsoft)
NATS (MIT Open Source License, written in Go)
Open Message Queue
Oracle Message Broker (Oracle Corporation)
QDB (Apache License 2.0, supports message replay by timestamp)
RabbitMQ (Mozilla Public License, written in Erlang)
SAP PI (SAP AG)
Spread Toolkit
Tarantool, a NoSQL database, with a set of stored procedures for message queues
WSO2 Message Broker
Enduro/X Transactional Message Queue (TMQ)',0);
INSERT INTO "cards" VALUES (669,1,'What is Ehcache?','Ehcache is an open source, standards-based cache that boosts performance, offloads your database, and simplifies scalability. It''s the most widely-used Java-based cache.',0);
INSERT INTO "cards" VALUES (670,1,'Timing of a L1 cache reference?','0.5 nanoseconds (ns)',0);
INSERT INTO "cards" VALUES (671,1,'Timing of a branch misprediction?','5 nanoseconds (ns)',0);
INSERT INTO "cards" VALUES (672,1,'Timing of a L2 cache reference?','7 nanoseconds (ns)',0);
INSERT INTO "cards" VALUES (673,1,'Timing of a mutex lock/unlock?','25 nanoseconds (ns)',0);
INSERT INTO "cards" VALUES (674,1,'Timing of a main memory reference?','100 nanoseconds (ns)',0);
INSERT INTO "cards" VALUES (675,1,'Timing to compress 1KB?','3,000 nanoseconds (3 microseconds)',0);
INSERT INTO "cards" VALUES (676,1,'Time to send 2K bytes over 1 Gbps network?','10,000 nanoseconds (0.01 ms)',0);
INSERT INTO "cards" VALUES (677,1,'Time to read 4KB randomly from an SSD?','150,000 nanoseconds (0.15 ms)',0);
INSERT INTO "cards" VALUES (678,1,'Timing to read 1MB sequentially from memory?','250,000 nanoseconds (0.25 ms)',0);
INSERT INTO "cards" VALUES (679,1,'Timing of a disk seek?','10,000,000 nanoseconds (10 ms)',0);
INSERT INTO "cards" VALUES (680,1,'Time to read 1MB sequentially from an SSD?','1,000,000 nanoseconds (1 ms)
4x memory',0);
INSERT INTO "cards" VALUES (681,1,'Timing to read 1MB sequentially from disk?','20,000,000 nanoseconds (20 ms)
80x memory
20x SSD',0);
INSERT INTO "cards" VALUES (682,1,'Timing to send a packet CA -> Netherlands -> CA?','150,000,000 nanoseconds (150 ms)',0);
INSERT INTO "cards" VALUES (683,1,'Timing of a context switch between processes?','3000 nanoseconds',0);
INSERT INTO "cards" VALUES (684,1,'Timing of fork()?','Between 70,000 and 160,000 nanoseconds.',0);
INSERT INTO "cards" VALUES (685,1,'What is the timing overhead for a system call?','400 nanoseconds',0);
INSERT INTO "cards" VALUES (686,1,'What is Kafka?','Apache Kafka is pub-sub messaging rethought as a distributed commit log.
Kafka is a distributed, partitioned, replicated commit log service. It provides the functionality of a messaging system, but with a unique design.
A single Kafka broker can handle hundreds of megabytes of reads and writes per second from thousands of clients.',0);
INSERT INTO "cards" VALUES (687,1,'What is GAE?','Google App Engine is a platform for building scalable web applications and mobile backends. App Engine provides you with built-in services and APIs such as NoSQL datastores, memcache, and a user authentication API, common to most applications.',0);
INSERT INTO "cards" VALUES (688,1,'What is GDS?','Google Cloud Datastore is a NoSQL document database built for automatic scaling, high performance, and ease of application development. Cloud Datastore features include:

Atomic transactions.
Massive scalability with high performance.
Flexible storage and querying of data.
Balance of strong and eventual consistency. 
Encryption at rest.
Fully managed with no planned downtime.',0);
INSERT INTO "cards" VALUES (689,1,'What is the problem that serialization introduces?','The overhead of serializing and deserializing. It''s all expensive, and for Python, it can be terribly slow.',0);
INSERT INTO "cards" VALUES (690,1,'What does the Python bisect module do?','The bisect module, part of the standard library, provides support for maintaining a list in sorted order without having to sort the list after each insertion. For long lists of items with expensive comparison operations, this can be an improvement over the more common approach.',0);
INSERT INTO "cards" VALUES (691,1,'What is PycURL?','PycURL is a Python interface to libcurl. PycURL can be used to fetch objects identified by a URL from a Python program, similar to the urllib Python module. PycURL is mature, very fast, and supports a lot of features.
PycURL is targeted at an advanced developer - if you need dozens of concurrent, fast and reliable connections or any of the sophisticated features listed above then PycURL is for you.
The main drawback of PycURL is that it is a relatively thin layer over libcurl without any of those nice Pythonic class hierarchies. This means it has a somewhat steep learning curve unless you are already familiar with libcurl''s C API.',0);
INSERT INTO "cards" VALUES (692,1,'How does PycURL compare to requests?','PycURL can handle a large number of multiple concurrent requests. When reusing connections, it can perform more than 2,000 requests per second.

pycurl takes about 73 CPU-microseconds to issue a request when reusing a connection
requests takes about 526 CPU-microseconds to issue a request when reusing a connection
pycurl takes about 165 CPU-microseconds to open a new connection and issue a request (no connection reuse), or ~92 microseconds to open
requests takes about 1078 CPU-microseconds to open a new connection and issue a request (no connection reuse), or ~552 microseconds to open',0);
INSERT INTO "cards" VALUES (693,1,'What is ZooKeeper?','Apache ZooKeeper is a centralized service for maintaining configuration information, naming, providing distributed synchronization, and providing group services. All of these kinds of services are used in some form or another by distributed applications. Each time they are implemented there is a lot of work that goes into fixing the bugs and race conditions that are inevitable. Because of the difficulty of implementing these kinds of services, applications initially usually skimp on them, which make them brittle in the presence of change and difficult to manage. Even when done correctly, different implementations of these services lead to management complexity when the applications are deployed.
Has Java and C interfaces.',0);
INSERT INTO "cards" VALUES (694,1,'What is orthogonality?','In mathematical terms, it means being perpendicular.

Orthogonality in programming language design is the ability to use various language features in arbitrary combinations with consistent results.

Orthogonality is a system design property which guarantees that modifying the technical effect produced by a component of a system neither creates nor propagates side effects to other components of the system. Typically this is achieved through the separation of concerns and encapsulation, and it is essential for feasible and compact designs of complex systems. The emergent behavior of a system consisting of components should be controlled strictly by formal definitions of its logic and not by side effects resulting from poor integration, i.e., non-orthogonal design of modules and interfaces. Orthogonality reduces testing and development time because it is easier to verify designs that neither cause side effects nor depend on them.',0);
INSERT INTO "cards" VALUES (695,1,'When dealing with scaling, how can you deal with rapidly increasing counters, like YouTube video views?','You can add randomness to a monotonic counter, because as long as people can see it is increasing somewhat monotonically, it doesn''t need to be 100% accurate. And avoids need to lock it in a transaction.',0);
INSERT INTO "cards" VALUES (696,1,'What is exponential backoff and when is it used?','Binary exponential backoff or truncated binary exponential backoff refers to an algorithm used to space out repeated retransmissions of network or other service requests, often as part of congestion avoidance.',0);
INSERT INTO "cards" VALUES (697,1,'What data structure could be used to efficiently manage a leaderboard?','A b-tree where each node manages a subset of the range of the worst to best scores.',0);
INSERT INTO "cards" VALUES (698,1,'What does adding jitter in system design help you avoid?','If your system doesn’t jitter then you get thundering herds. Distributed applications are really weather systems. Debugging them is as deterministic as predicting the weather. Jitter introduces more randomness because surprisingly, things tend to stack up.',0);
INSERT INTO "cards" VALUES (699,1,'What is an example of adding jitter to a caching system?','Cache expirations. For a popular video they cache things as best they can. The most popular video they might cache for 24 hours. If everything expires at one time then every machine will calculate the expiration at the same time. This creates a thundering herd.
By jittering you are saying randomly expire between 18-30 hours. That prevents things from stacking up. They use this all over the place. Systems have a tendency to self synchronize as operations line up and try to destroy themselves. Fascinating to watch. You get slow disk system on one machine and everybody is waiting on a request so all of a sudden all these other requests on all these other machines are completely synchronized. This happens when you have many machines and you have many events. Each one actually removes entropy from the system so you have to add some back in.',0);
INSERT INTO "cards" VALUES (700,1,'What value can you make cron or other system intervals so they don''t coincide?','Use distinct prime numbers for periodicities.',0);
INSERT INTO "cards" VALUES (701,1,'What Python package provides tools for adapting or extending functions and other callable objects, without completely rewriting them?','functools
offers:
Decorators
Comparison
Rich Comparison
Collation Order
Caching
Reducing a Data Set
Generic Functions',0);
INSERT INTO "cards" VALUES (702,1,'What is a proxy server?','A proxy server is an intermediate piece of hardware/software that receives requests from clients and relays them to the backend origin servers. Typically, proxies are used to filter requests, log requests, or sometimes transform requests (by adding/removing headers, encrypting/decrypting, or compression).',0);
INSERT INTO "cards" VALUES (703,1,'What is collapsed forwarding?','A proxy server can collapse the same (or similar) requests together into one request, and then return the single result to the requesting clients.

Another great way to use the proxy is to not just collapse requests for the same data, but also to collapse requests for data that is spatially close together in the origin store (consecutively on disk).',0);
INSERT INTO "cards" VALUES (704,1,'What should be handling requests first, a proxy server or a cache?','Generally it is best to put the cache in front of the proxy. This is because the cache is serving data from memory, it is very fast, and it doesn''t mind multiple requests for the same result. But if the cache was located on the other side of the proxy server, then there would be additional latency with every request before the cache, and this could hinder performance.',0);
INSERT INTO "cards" VALUES (705,1,'What are some popular proxies?','HAProxy
Squid
Varnish',0);
INSERT INTO "cards" VALUES (706,1,'Why do indexes tend to slow down writes?','Since you must both write the data and update the index.',0);
INSERT INTO "cards" VALUES (707,1,'What is the role of a load balancer?','The role is to distribute load across a set of nodes responsible for servicing requests. This allows multiple nodes to transparently service the same function in a system. Their main purpose is to handle a lot of simultaneous connections and route those connections to one of the request nodes, allowing the system to scale to service more requests by just adding nodes.',0);
INSERT INTO "cards" VALUES (708,1,'What is a drawback of advanced features in a load balancer?','Advanced features can make problem diagnosis cumbersome. For example, when it comes to high load situations, load balancers will remove nodes that may be slow or timing out (because of too many requests), but that only exacerbates the situation for the other nodes.',0);
INSERT INTO "cards" VALUES (709,1,'What is a benefit of adding asynchrony to a system?','It keeps clients from holding connections to servers when waiting for a response for a task that could simply be deferred. This reduces load on servers that are performing writes, for example, and lets them perform a task when ready, not on-demand.',0);
INSERT INTO "cards" VALUES (710,1,'What is the difference between a synchronous system and an asynchronous system?','In a synchronous system, there is no differentiation between request and reply, and they therefore cannot be managed separately. In an asynchronous system the client requests a task, the service responds with a message acknowledging the task was received, and then the client can periodically check the status of the task, only requesting the result once it has completed.

While the client is waiting for an asynchronous request to be completed it is free to perform other work, even making asynchronous requests of other services.',0);
INSERT INTO "cards" VALUES (711,1,'What are some examples of well-known queue (or can act as a queue) software?','BeanstalkD
RabbitMQ
ActiveMQ
BeanstalkD
Redis',0);
INSERT INTO "cards" VALUES (712,1,'Does asynchronous code tend to be CPU-bound or I/O bound?','Asynchronous code tends to be CPU bound, because anything that would block is simply deferred to later, until the blocking operation completes. This means that threads in asynchronous / non-blocking applications are much more likely to use their full time quantum before the kernel scheduler preempts them.',0);
INSERT INTO "cards" VALUES (713,1,'What is the optimal number of threads?','And if there''s the same number of runnable threads as there are hardware threads, the kernel is very likely to reschedule threads on the same core, which significantly helps performance.',0);
INSERT INTO "cards" VALUES (714,1,'What is the typical time slice for a process on a Linux box?','Linux kernels are often compiled with HZ=100, which entails that processes are given time slices of 10ms.',0);
INSERT INTO "cards" VALUES (715,1,'How does Linux handle CPU affinity?','Default Linux kernels don''t do a good job at keeping CPU affinity, even on idle machines. You must explore alternative schedulers or use taskset or cpuset to control affinity yourself.',0);
INSERT INTO "cards" VALUES (716,1,'What is futex?','A futex (short for "fast userspace mutex") is a Linux kernel system call that programmers can use to implement basic locking, or as a building block for higher-level locking abstractions such as semaphores and POSIX mutexes or condition variables.',0);
INSERT INTO "cards" VALUES (717,1,'How do context switches perform under virtualization?','On average, it''s 2.5x to 3x more expensive to do a context switch when using virtualization. My guess is that this is due to the fact that the guest OS can''t update the page table itself, so when it attempts to change it, the hypervisor intervenes, which causes an extra 2 context switches (one to get inside the hypervisor, one to get out, back to the guest OS).',0);
INSERT INTO "cards" VALUES (718,1,'What is a Frame Check Sequence?','The Frame Check Sequence (FCS) field is used to determine if errors occurred in the transmission and reception of the frame. Error detection is added at the Data Link layer because this is where data is transferred across the media.',0);
INSERT INTO "cards" VALUES (719,1,'How does Google handle a search request?','Scatter/gather
In this model, the dispatcher multicast the request to all workers of the pool. Each worker will compute a local result and send it back to the dispatcher, who will consolidate them into a single response and then send back to the client.',0);
INSERT INTO "cards" VALUES (720,1,'What is an example of bulk synchronous processing?','Parallel Graph Transformation

The main goal of Graph transformation is to modify the graph. This include modifying the properties of existing nodes and arcs, creating new arcs / nodes and removing existing arcs / nodes. The modification logic is provided by a user-defined function, which will be applied to all active nodes.',0);
INSERT INTO "cards" VALUES (721,1,'Execution Orchestrator','This model is based on an intelligent scheduler / orchestrator to schedule ready-to-run tasks (based on a dependency graph) across a clusters of dumb workers.

example: Microsoft Dryad',0);
INSERT INTO "cards" VALUES (722,1,'What are 2 reasons for using a load balancer?','horizontal scalability and redundancy',0);
INSERT INTO "cards" VALUES (723,1,'What are balancing methods used by load balancers?','assignment of a request: random, round-robin, random with weighting for machine capacity, etc
matched with current status (available for requests, not responding, elevated error rate, etc).',0);
INSERT INTO "cards" VALUES (724,1,'What are the 3 choices in load balancers? The 3 kinds, not balancing mechanisms.','- Smart client, a software based mechanism for determining the availability of a server.
- Hardware load balancer, such as Citrix NetScaler, are remarkably expensive, and they are also "non-trivial" to configure.
- Software load balancer: HAProxy',0);
INSERT INTO "cards" VALUES (725,1,'What are 2 examples of in-memory caches?','Memcached and Redis are both examples of in-memory caches',0);
INSERT INTO "cards" VALUES (726,1,'What is write-through cache?','Write-through cache directs write I/O onto cache and through to underlying permanent storage before confirming I/O completion to the host. This ensures data updates are safely stored on, for example, a shared storage array, but has the disadvantage that I/O still experiences latency based on writing to that storage. Write-through cache is good for applications that write and then re-read data frequently as data is stored in cache and results in low read latency.',0);
INSERT INTO "cards" VALUES (727,1,'What is write-back cache?','Write-back cache is where write I/O is directed to cache and completion is immediately confirmed to the host. This results in low latency and high throughput for write-intensive applications, but there is data availability exposure risk because the only copy of the written data is in cache. As we will discuss later, suppliers have added resiliency with products that duplicate writes. Users need to consider whether write-back cache solutions offer enough protection as data is exposed until it is staged to external storage. Write-back cache is the best performing solution for mixed workloads as both read and write I/O have similar response time levels.',0);
INSERT INTO "cards" VALUES (728,1,'What is read-through cache?','An item is accessed from cache, and if it''s a cache miss, the data will be read from persistent storage (perhaps with a callback) and then placed into cache. The response is then sent back to the host.',0);
INSERT INTO "cards" VALUES (729,1,'What is HDFS?','Hadoop File System (HDFS) is a Java-based file system that provides scalable and reliable data storage, and it was designed to span large clusters of commodity servers.',0);
INSERT INTO "cards" VALUES (730,1,'What is Hortonworks?','Hortonworks is a software company focused on the development and support of Apache Hadoop, a framework that allows for the distributed processing of large data sets across clusters of computers.',0);
INSERT INTO "cards" VALUES (731,1,'What is a platform layer?','Web applications to communicate with a platform layer which in turn communicates with your databases. 

First, separating the platform and web application allow you to scale the pieces independently. If you add a new API, you can add platform servers without adding unnecessary capacity for your web application tier. 

Second, adding a platform layer can be a way to reuse your infrastructure for multiple products or interfaces (a web application, an API, an iPhone app, etc) without writing too much redundant boilerplate code for dealing with caches, databases, etc.

Third, a sometimes underappreciated aspect of platform layers is that they make it easier to scale an organization. At their best, a platform exposes a crisp product-agnostic interface which masks implementation details. If done well, this allows multiple independent teams to develop utilizing the platform''s capabilities, as well as another team implementing/optimizing the platform itself.',0);
INSERT INTO "cards" VALUES (732,1,'What is multi-homing?','Running a service across multiple datacenters.',0);
INSERT INTO "cards" VALUES (733,1,'Where is weak consistency OK?','- caching
- VOIP
- real-time mutiplayer games',0);
INSERT INTO "cards" VALUES (734,1,'What is the Paxos algorithm?','Paxos is a family of protocols for solving consensus in a network of unreliable processors. Consensus is the process of agreeing on one result among a group of participants. This problem becomes difficult when the participants or their communication medium may experience failures.',0);
INSERT INTO "cards" VALUES (735,1,'What problem does consistent hashing help solve?','If you''re using a caching scheme like server = hash(i) mod m, and one server in the cluster drops out, consistent hashing is needed to avoid swamping your servers when all the caches need to rehash their entities.',0);
INSERT INTO "cards" VALUES (736,1,'What is the relationship between consistent hashing and memcache?','Consistent hashing can be used with memcache not even knowing about it.  It is interesting to note that it is only the client that needs to implement the consistent hashing algorithm - the memcached server is unchanged.',0);
INSERT INTO "cards" VALUES (737,1,'What are some examples of NoSQL solutions?','Google BigTable
HBase (based on Hadoop)
Hypertable
Amazon DynamoDB
Voldemort
Cassandra
Riak
Redis
CouchDB
MongoDB',0);
INSERT INTO "cards" VALUES (738,1,'What is Paxos an example of?','quorum-based 2PC (2 phase commit) protocol',0);
INSERT INTO "cards" VALUES (739,1,'What is MVCC?','Multiversion concurrency control (MCC or MVCC), is a concurrency control method commonly used by database management systems to provide concurrent access to the database and in programming languages to implement transactional memory.',0);
INSERT INTO "cards" VALUES (740,1,'What is the S in SOLID?','The single responsibility principle. There should never be more than one reason for a class to change. We can relate the “reason to change” to “the responsibility of the class”. So each responsibility would be an axis for change.',0);
INSERT INTO "cards" VALUES (741,1,'What does concurrent.futures do?','The concurrent.futures modules provides interfaces for running tasks using pools of thread or process workers. The APIs are the same, so applications can switch between threads and processes with minimal changes.',0);
INSERT INTO "cards" VALUES (742,1,'What is the O in SOLID?','The Open/Closed Principle (OCP) states that the design and writing of the code should be done in a way that new functionality should be added with minimum changes in the existing code. The design should be done in a way to allow the adding of new functionality as new classes, keeping as much as possible existing code unchanged.
"open for extension / closed for modifications"

--

During the 1990s, the open/closed principle became popularly redefined to refer to the use of abstracted interfaces, where the implementations can be changed and multiple implementations could be created and polymorphically substituted for each other.

In contrast to Meyer''s usage, this definition advocates inheritance from abstract base classes. Interface specifications can be reused through inheritance but implementation need not be.',0);
INSERT INTO "cards" VALUES (743,1,'What is RTTI?','run time type identification',0);
INSERT INTO "cards" VALUES (744,1,'Which SOLID principle is "Make all Member Variables Private." helping to enforce?','The open/closed principle (OCP)',0);
INSERT INTO "cards" VALUES (745,1,'What is the L in SOLID?','The Liskov substitution principle (LSP)
We must make sure that the new derived classes just extend without replacing the functionality of old classes. Otherwise the new classes can produce undesired effects when they are used in existing program modules.

Liskov''s Substitution Principle states that if a program module is using a Base class, then the reference to the Base class can be replaced with a Derived class without affecting the functionality of the program module.

This principle is just an extension of the Open Close Principle and it means that we must make sure that new derived classes are extending the base classes without changing their behavior.',0);
INSERT INTO "cards" VALUES (746,1,'What is the I in SOLID?','The Interface Segregation Principle (ISP) states that clients should not be forced to implement interfaces they don''t use. Instead of one fat interface many small interfaces are preferred based on groups of methods, each one serving one submodule.',0);
INSERT INTO "cards" VALUES (747,1,'What is the D in SOLID?','Dependency inversion principle (DIP)
High-level modules should not depend on low-level modules. Both should depend on abstractions.
Abstractions should not depend on details. Details should depend on abstractions.',0);
INSERT INTO "cards" VALUES (748,1,'What are 3 things CDNs use to ensure availability?','Local clustering can improve fault-tolerance and scalability. Mirroring (deploying clusters in a few locations) and multihoming (using multiple ISPs to connect to the Internet). 
Clustering, mirroring, and multihoming are common approaches for sites with stringent reliability and scalability needs.',0);
INSERT INTO "cards" VALUES (749,1,'What is hyper-threading?','Hyper-threading enables a single processor core to be used for two or more concurrent executions with just a little extra hardware.',0);
INSERT INTO "cards" VALUES (750,1,'What is DMA?','DMA (Direct Memory Access) allows devices, with the help of the Northbridge, to store and receive data in RAM directly without the intervention of the CPU.',0);
INSERT INTO "cards" VALUES (751,1,'What does NUMA stand for?','Non-Uniform Memory Architecture',0);
INSERT INTO "cards" VALUES (752,1,'Where are SRAM and DRAM used?','SRAMs are used in Caches because of higher speed and DRAMs are used for main memory in a PC because of higher densities.',0);
INSERT INTO "cards" VALUES (753,1,'What is the difference between SRAM and DRAM?','DRAM stands for Dynamic Random Access Memory. It is a type of semiconductor memory in which the memory is stored in the form of a charge. Each memory cell in a DRAM is made of a transistor and a capacitor. The data is stored in the capacitor. Capacitors loose charge due to leakage and hence DRAM''s are volatile devices. To keep the data in the memory, the device must be regularly refreshed whereas SRAM is static, so it will retain a value as long as power is supplied. SRAM is typically faster than DRAM since it doesn''t have refresh cycles. Since each SRAM memory cell is comprised of 6 Transistors unlike a DRAM memory cell, which is comprised of 1 Transistor and 1 Capacitor, the cost per memory cell is far greater in an SRAM compared to a DRAM.',0);
INSERT INTO "cards" VALUES (754,1,'What is the difference between a CPU core and a CPU thread?','The difference between a core and a thread is that separate cores have separate copies of (almost) all the hardware resources. The cores can run completely independently unless they are using the same resources–e.g., the connections to the outside - at the same time. Threads, on the other hand, share almost all of the processor’s resources.
Intel’s implementation of threads has only separate registers for the threads and even that is limited, some registers
are shared.',0);
INSERT INTO "cards" VALUES (755,1,'What is SMP?','symmetric multi-processor

In symmetric multi-processor (SMP) systems the caches of the CPUs cannot work independently from each other. All processors are supposed to see the same memory content at all times. The maintenance of this uniform view of memory is called “cache coherency”.',0);
INSERT INTO "cards" VALUES (756,1,'How does a multi-processor CPU maintain cache coherency?','- A dirty cache line is not present in any other processor’s cache.
- Clean copies of the same cache line can reside in arbitrarily many caches.',0);
INSERT INTO "cards" VALUES (757,1,'What is Colossus?','the successor to the Google File System',0);
INSERT INTO "cards" VALUES (758,1,'What is Spanner?','Spanner is a scalable, globally-distributed database designed, built, and deployed at Google. At the highest level of abstraction, it is a database that shards data across many sets of Paxos state machines in datacenters spread all over the world. Replication is used for global availability and geographic locality; clients automatically failover between replicas. Spanner automatically reshards data across machines as the amount of data or the number of servers changes, and it automatically migrates data across machines (even across datacenters) to balance load and in response to failures. Spanner is designed to scale up to millions of machines across hundreds of datacenters and trillions of database rows.',0);
INSERT INTO "cards" VALUES (759,1,'What is Marzullo''s algorithm?','Marzullo''s algorithm, is an agreement algorithm used to select sources for estimating accurate time from a number of noisy time sources. A refined version of it, renamed the "intersection algorithm", forms part of the modern Network Time Protocol.',0);
INSERT INTO "cards" VALUES (760,1,'What is Google File System?','A scalable distributed file system for large distributed data-intensive applications. It provides fault tolerance while running on inexpensive commodity hardware, and it delivers high aggregate performance to a large number of clients.
It deals with multi-GB and TB files by appending to files, as that is the predominant usage pattern of large data files.',0);
INSERT INTO "cards" VALUES (761,1,'What is BNF?','BNF (Backus Normal Form or Backus–Naur Form) is one of the two main notation techniques for context-free grammars, often used to describe the syntax of languages used in computing, such as computer programming languages, document formats, instruction sets and communication protocols; the other main technique for writing context-free grammars is the van Wijngaarden form.',0);
INSERT INTO "cards" VALUES (762,1,'What is MapReduce?','MapReduce, developed by Google in 2004, is a programming model and an associated implementation for processing and generating large data sets. Users specify a map function that processes a key/value pair to generate a set of intermediate key/value pairs, and a reduce function that merges all intermediate values associated with the same intermediate key.',0);
INSERT INTO "cards" VALUES (763,1,'What is a Zipf distribution?','The Zipf distribution, sometimes referred to as the zeta distribution, is a discrete distribution commonly used in linguistics, insurance, and the modeling of rare events.',0);
INSERT INTO "cards" VALUES (764,1,'The memory addresses returned by the malloc function are typically aligned to at least ___ bytes.','8',0);
INSERT INTO "cards" VALUES (765,1,'What is AddressSanitizer?','AddressSanitizer is a fast memory error detector. AddressSanitizer finds out-of-bounds (for heap, stack, and globals) accesses and use-after-free bugs at the cost of 73% slowdown on average and a 3.4x memory size; the tool has no false positives.
AddressSanitizer uses shadow memory to provide accurate and immediate bug detection. The conventional wisdom is that shadow memory either incurs high overhead through multi-level mapping schemes or imposes prohibitive address space requirements by occupying a large contiguous region. Our novel shadow state encoding reduces our shadow space footprint enough that we can use a simple mapping, which can be implemented with low overhead.
It has been included as a compilation option in LLVM since 3.1.',0);
INSERT INTO "cards" VALUES (766,1,'What is transitive closure?','transitive closure can be thought of as constructing a data structure that makes it possible to answer reachability questions. That is, can one get from node a to node d in one or more hops?',0);
INSERT INTO "cards" VALUES (767,1,'What is CUDA?','CUDA (Compute Unified Device Architecture) is a parallel computing platform and application programming interface (API) model created by NVIDIA.[1] It allows software developers and software engineers to use a CUDA-enabled graphics processing unit (GPU) for general purpose processing – an approach known as GPGPU. The CUDA platform is a software layer that gives direct access to the GPU''s virtual instruction set and parallel computational elements, for the execution of compute kernels.[2]',0);
INSERT INTO "cards" VALUES (768,1,'What is Borg?','The first unified container-management system developed at Google. It was built to manage both long-running services and batch jobs.',0);
INSERT INTO "cards" VALUES (769,1,'What is MPM?','Within Google, MPM (Midas Package Manager) is used to build and deploy container images. It corresponds to the Docker image registry for Docker containers.',0);
INSERT INTO "cards" VALUES (770,1,'What are 3 benefits of containers?','1. Containers encapsulate the application environment, abstracting away many details of machines and operating systems from the application developer and the deployment infrastructure.
2. Because well-designed containers and container images are scoped to a single application, managing containers means managing applications rather than machines. This shift of management APIs from machine-oriented to application oriented dramatically improves application deployment and introspection.
3. Decoupling of image and OS makes it possible to provide the same deployment environment in both development and production, which, in turn, improves deployment reliability and speeds up development by reducing inconsistencies and friction.',0);
INSERT INTO "cards" VALUES (771,1,'What is Chubby?','A distributed lock service (master election) built on Borg.',0);
INSERT INTO "cards" VALUES (772,1,'What does CSP stand for?','Communicating Sequential Processes',0);
INSERT INTO "cards" VALUES (773,1,'What is Protocol buffers?','Protocol buffers (aka protobuf) are Google''s language-neutral, platform-neutral, extensible mechanism for serializing structured data. IDL-based.

You define how you want your data to be structured once, then you can use special generated source code to easily write and read your structured data to and from a variety of data streams and using a variety of languages.',0);
INSERT INTO "cards" VALUES (774,1,'Why is using Protocol buffers better than pickling?','Python pickling doesn''t deal well with schema evolution, and also doesn''t work very well if you need to share data with applications written in C++ or Java.',0);
INSERT INTO "cards" VALUES (775,1,'What is gRPC?','It’s an open source framework for RPC by Google. gRPC uses HTTP/2 and Google’s own Protobuf to provide a scalable and low latency communication. With gRPC comes a new version of Protobuf (proto3) for high performance binary serialization which includes new features and is easier to use than its predecessors.',0);
INSERT INTO "cards" VALUES (776,1,'What is Redis?','Redis is an in-memory data structure store, used as database, cache and message broker. It supports data structures such as strings, hashes, lists, sets, sorted sets with range queries, bitmaps, hyperloglogs and geospatial indexes with radius queries. Redis has built-in replication, Lua scripting, LRU eviction, transactions and different levels of on-disk persistence, and provides high availability via Redis Sentinel and automatic partitioning with Redis Cluster.',0);
INSERT INTO "cards" VALUES (777,1,'What commands can be used to make a Redis queue somewhat reliable?','LPUSH
RPOPLPUSH - pop right, pushing onto another list for processing, atomically,
BRPOPLPUSH - same as above, but blocking
RPOP

Redis is more susceptible to data loss in the event of abrupt termination or power failures.',0);
INSERT INTO "cards" VALUES (778,1,'What is RabbitMQ?','RabbitMQ is a messaging broker - an intermediary for messaging.

Messages are routed through exchanges before arriving at queues. RabbitMQ features several built-in exchange types for typical routing logic. For more complex routing you can bind exchanges together or even write your own exchange type as a plugin.

It can be used as a durable queue, work queues, pub/sub, topic handler, and even for rpc.',0);
INSERT INTO "cards" VALUES (779,1,'What is pika?','Pika is a pure-Python implementation of the AMQP 0-9-1 protocol that tries to stay fairly independent of the underlying network support library. Can use with RabbitMQ.',0);
INSERT INTO "cards" VALUES (780,1,'What is Celery?','Celery is an asynchronous task queue/job queue based on distributed message passing. It is focused on real-time operation, but supports scheduling as well. You use it with a message broker, and it manages the task execution.

The execution units, called tasks, are executed concurrently on a single or more worker servers using multiprocessing, Eventlet, or gevent. Tasks can execute asynchronously (in the background) or synchronously (wait until ready).

The recommended message broker is RabbitMQ, but support for Redis, Beanstalk, MongoDB, CouchDB, and databases (using SQLAlchemy or the Django ORM) is also available.',0);
INSERT INTO "cards" VALUES (781,1,'What does amqp stand for?','Advanced Message Queuing Protocol',0);
INSERT INTO "cards" VALUES (782,1,'What is ZeroMQ?','A socket-based system, can be used as a queue, pub/sub, etc.

Carries messages across inproc, IPC, TCP, TIPC, multicast.
Smart patterns like pub-sub, push-pull (pipeline), and router-dealer.',0);
INSERT INTO "cards" VALUES (783,1,'What is ActiveMQ?','Apache ActiveMQ is an open source message broker written in Java.',0);
INSERT INTO "cards" VALUES (784,1,'What is IPC?','Inter-process communication or interprocess communication (IPC) refers specifically to the mechanisms an operating system provides to allow processes it manages to share data. Typically, applications can use IPC categorized as clients and servers, where the client requests data and the server responds to client requests.',0);
INSERT INTO "cards" VALUES (785,1,'What is Kafka?','Apache Kafka is a distributed, partitioned, replicated commit log service. It provides the functionality of a messaging system, but with a unique design.',0);
INSERT INTO "cards" VALUES (786,1,'What is MessagePack?','MessagePack is an efficient binary serialization format. It lets you exchange data among multiple languages like JSON. But it''s faster and smaller. Small integers are encoded into a single byte, and typical short strings require only one extra byte in addition to the strings themselves.

No IDL.',0);
INSERT INTO "cards" VALUES (787,1,'What is Avro?','Apache Avro is a data serialization system. IDL-based.
Rich data structures. 
A compact, fast, binary data format. 
A container file, to store persistent data. 
Remote procedure call (RPC).
Code generation is not required to read or write data files nor to use or implement RPC protocols. Code generation as an optional optimization, only worth implementing for statically typed languages.',0);
INSERT INTO "cards" VALUES (788,1,'What is a Bloom filter?','A Bloom filter is a data structure used to quickly test membership in a set where the number and size of possible elements would be very large. Too large to keep in memory.
A Bloom filter is a space-efficient probabilistic data structure, conceived by Burton Howard Bloom in 1970, that is used to test whether an element is a member of a set. False positive matches are possible, but false negatives are not, thus a Bloom filter has a 100% recall rate. In other words, a query returns either "possibly in set" or "definitely not in set". Elements can be added to the set, but not removed (though this can be addressed with a "counting" filter). The more elements that are added to the set, the larger the probability of false positives.',0);
INSERT INTO "cards" VALUES (789,1,'How can you easily generate multiple hashes for the same element?','Double hashing. This method gives you as many hashes as you need:
hash(x,m) = (hasha(x) + i * hashb(x)) mod m

In Python:
import mmh3
mmh3.hash64(''foo'') # two 64 bit signed ints, in a tuple
now you have 2 64-bit hashes. Substituting for i gives you multiple hashes for a Bloom filter.',0);
INSERT INTO "cards" VALUES (790,1,'What is DFT?','Discrete Fourier Transform - converts a finite sequence of equally-spaced samples of a function into an equivalent-length sequence of equally-spaced samples of the discrete-time Fourier transform (DTFT), which is a complex-valued function of frequency.',0);
INSERT INTO "cards" VALUES (791,1,'What is FFTW?','Developed at MIT, it''s the Fastest Fourier Transform in the West.',0);
INSERT INTO "cards" VALUES (792,1,'What data structure allows for insert and delete in constant time?','An array, indexed by the value stored. Technically a bit vector.',0);
INSERT INTO "cards" VALUES (793,1,'What is a cache-oblivious algorithm?','A cache-oblivious algorithm does not mean that the algorithm does not take advantage of the cache; to the contrary, it does so quite effectively. What it means is that the algorithm does not need to know the cache line size; it works effectively for all cache line sizes simultaneously, removing the need to tune or optimize for a given machine.

Optimal cache-oblivious algorithms are known for the Cooley–Tukey FFT algorithm, matrix multiplication, sorting, matrix transposition, and several other problems.',0);
INSERT INTO "cards" VALUES (794,1,'How can you augment a splay tree so you can find how many items are between x and y?','Store size of subtrees at each node. 
Find x, splay to root. Each splay, insert, and delete must maintain size in node.
Find y, and along the way add up the sizes in the left subtrees, and 1 for each visited left-hand node.
Splay y to root to ensure balance.',0);
INSERT INTO "cards" VALUES (795,1,'In a maximum flow problem, what is the minimum cut?','The min cut is the maximum flow through the graph.',0);
INSERT INTO "cards" VALUES (796,1,'What is the Ford-Fulkerson algorithm?','The Ford–Fulkerson method or Ford–Fulkerson algorithm (FFA) is a greedy algorithm that computes the maximum flow in a flow network. It is called a "method" instead of an "algorithm" as the approach to finding augmenting paths in a residual graph is not fully specified or it is specified in several implementations with different running times. The name "Ford–Fulkerson" is often also used for the Edmonds–Karp algorithm, which is a specialization of Ford–Fulkerson.',0);
INSERT INTO "cards" VALUES (797,1,'What is the running time for the disjoint set data structure?','Due to merging smaller disjoint sets into larger ones (called union by rank) (during union) and performing path compression (during find), the amortized time per operation is only O(alpha(n)), where alpha(n) is the inverse of the function and A is the extremely fast-growing Ackermann function. Since alpha(n) is the inverse of this function, alpha(n) is less than 5 for all remotely practical values of n. Thus, the amortized running time per operation is effectively a small constant.

The worst-case for find() is Theta(log u) where u is the number of unions, and no finds have been done to allow for path compression yet.',0);
INSERT INTO "cards" VALUES (798,1,'In testing, what is an oracle?','Software testers and software engineers can use an oracle as a mechanism for determining whether a test has passed or failed. The use of oracles involves comparing the output(s) of the system under test, for a given test-case input, to the output(s) that the oracle determines that product should have.',0);
INSERT INTO "cards" VALUES (799,1,'What do you test interfaces with a trust boundary?','With lots of different inputs, including random inputs to ensure that the system can handle or appropriately error out, not crash.',0);
INSERT INTO "cards" VALUES (800,1,'What Python flag turns on optimizations and removes assertions from code?','python -O',0);
INSERT INTO "cards" VALUES (801,1,'Why is doing work in a constructor a bad thing?','It can make your code harder to test.',0);
INSERT INTO "cards" VALUES (802,1,'What should be avoided to ensure testing is easier/possible?','- static methods and properties
- final keyword
- use of new in methods (use dependency injection)',0);
INSERT INTO "cards" VALUES (803,1,'What is another name for a setter?','A mutator',0);
INSERT INTO "cards" VALUES (804,1,'What is another name for a getter?','An accessor.',0);
INSERT INTO "cards" VALUES (805,1,'What are some guidelines to keep in mind to not violate the dependency inversion principle?','- No variable should have a concrete class type. An abstract type is better.
- No class should derive from a concrete class.
- No method should override an implemented method of any of its base classes.

These are guidelines and may not be feasible all the time.',0);
INSERT INTO "cards" VALUES (806,1,'What is another name for O(2^n)?','Exponential growth',0);
INSERT INTO "cards" VALUES (807,1,'What is another name for O(n^4)?','Quartic growth',0);
INSERT INTO "cards" VALUES (808,1,'What does big-O mean? (briefly)','It never gets as big as this.
Growth will never be slower as this.',0);
INSERT INTO "cards" VALUES (809,1,'What does big-Omega mean? (briefly)','It''s at least as big as this.
Growth will never be slower as this.',0);
INSERT INTO "cards" VALUES (810,1,'What is a trap/exception?','A special instruction that a program performs to interrupt the process and give control to the kernel.',0);
INSERT INTO "cards" VALUES (811,1,'What does the scheduler do?','Schedulers are special system software which handles process scheduling in various ways. Their main task is to select the jobs to be submitted into the system and to decide which process to run.',0);
INSERT INTO "cards" VALUES (812,1,'What are the 2 hardware modes?','kernel mode and user mode',0);
INSERT INTO "cards" VALUES (813,1,'What is a PCB and what does it have?','Process control block - It holds a complete snapshot of the state of the process.',0);
INSERT INTO "cards" VALUES (814,1,'What is stored in a TCB?','registers
program counter
stack counter',0);
INSERT INTO "cards" VALUES (815,1,'What is separate chaining?','In hash table conflict resolution, each bucket is independent and has some sort of linked list of entries with the same index. The time for hash table operations is the time to find the bucket (which is constant) plus the time for the list operation.

In a good hash table, each bucket has zero or one entries, and sometimes two or three, but rarely more than that. Therefore, structures that are efficient in time and space for these cases are preferred. Structures that are efficient for a fairly large number of entries per bucket are not needed or desirable. If these cases happen often, the hashing function needs to be fixed.',0);
INSERT INTO "cards" VALUES (816,1,'What is open addressing?','In hash table conflict resolution, all entry records are stored in the bucket array itself. When a new entry has to be inserted, the buckets are examined, starting with the hashed-to slot and proceeding in some probe sequence, until an unoccupied slot is found. When searching for an entry, the buckets are scanned in the same sequence, until either the target record is found, or an unused array slot is found, which indicates that there is no such key in the table. The name "open addressing" refers to the fact that the location ("address") of the item is not determined by its hash value. (This method is also called closed hashing; it should not be confused with "open hashing" or "closed addressing" that usually mean separate chaining.)',0);
INSERT INTO "cards" VALUES (817,1,'What is the length of the longest chain in a hash table using separate chaining?','O(1 + alpha) where alpha is the load factor, n/m.',0);
INSERT INTO "cards" VALUES (818,1,'Since uniform hashing is difficult to achieve in practice, what is a great alternative?','double hashing',0);
INSERT INTO "cards" VALUES (819,1,'How can you test if a number is odd in bitwise operations?','return (x & 1)',0);
INSERT INTO "cards" VALUES (820,1,'How can you test if a number is even in bitwise operations?','return (x & 1) == 0',0);
INSERT INTO "cards" VALUES (821,1,'What order of node and its children are involved in a preorder traversal?','node
leftChild
rightChild',0);
INSERT INTO "cards" VALUES (822,1,'What order of node and its children are involved in a postorder traversal?','leftChild
rightChild
node',0);
INSERT INTO "cards" VALUES (823,1,'What order of node and its children are involved in an inorder traversal?','leftChild
node
rightChild',0);
INSERT INTO "cards" VALUES (824,1,'What is another name for a breadth-first search traversal?','Level-order traversal.',0);
INSERT INTO "cards" VALUES (825,1,'Code: Compute the power set of a set of integers S.','How?',0);
INSERT INTO "cards" VALUES (826,1,'What is the proper name for Endianness?','octet order',0);
INSERT INTO "cards" VALUES (827,1,'Where can octet order (Endianness) problems crop up in files?','In binary files, if you aren''t consistent with choosing an order. Files encoded in utf8 or ASCII don''t have this issue.',0);
INSERT INTO "cards" VALUES (828,1,'What defines a complete binary tree, and give an example?','The same number of nodes at all levels of the tree, except at leaf level where it fills in left to right. A heap stored as an array is an example.',0);
INSERT INTO "cards" VALUES (829,1,'In a heap, with a 0-based array, what is parent of i?','floor((i-1)/2)',0);
INSERT INTO "cards" VALUES (830,1,'In a heap, with a 0-based array, what is left child of i?','2i + 1',0);
INSERT INTO "cards" VALUES (831,1,'In a heap, with a 0-based array, what is right child of i?','2i + 2',0);
INSERT INTO "cards" VALUES (832,1,'In a heap, with a 1-based array, what is right child of i?','2i + 1',0);
INSERT INTO "cards" VALUES (833,1,'In a heap, with a 1-based array, what is left child of i?','2i',0);
INSERT INTO "cards" VALUES (834,1,'In a heap, with a 0-based array, what is parent of i?','floor(i/2)',0);
INSERT INTO "cards" VALUES (835,1,'What is the height of a m-ary heap?','log base m of n',0);
INSERT INTO "cards" VALUES (836,1,'What is a 2-3-4 tree?','2–3–4 tree (also called a 2–4 tree) is a self-balancing data structure that is commonly used to implement dictionaries. The numbers mean a tree where every node with children (internal node) has either two, three, or four child nodes:

- 2-node has one data element, and if internal has two child nodes;
- 3-node has two data elements, and if internal has three child nodes;
- 4-node has three data elements, and if internal has four child nodes.',0);
INSERT INTO "cards" VALUES (837,1,'What is the complexity of all operations on a splay tree?','O(log n) on average.
A single operation Theta(n) in the worst case.',0);
INSERT INTO "cards" VALUES (838,1,'What is the maximum height of a red-black tree?','2 log n',0);
INSERT INTO "cards" VALUES (839,1,'In a b-tree, how many children are there per node?','root: 1 to 2t-1 keys
non-root: t-1 to 2t-1 keys
t could be up to 100, or more.
There are n keys and n+1 children.
Leaves are all the same level.',0);
INSERT INTO "cards" VALUES (840,1,'What does the max degree of a b-tree depend on?','The number of items being stored, and page size based on disk characteristics.',0);
INSERT INTO "cards" VALUES (841,1,'A b-tree''s data is organized to correspond with what?','Pages on disk.',0);
INSERT INTO "cards" VALUES (842,1,'Give an example of how a b-tree might be organized.','1024 children per node.
Store root in memory.
3 nodes accessed gets us 1024^3 disk pages.
4 nodes accessed gets us 1024^4 disk pages.',0);
INSERT INTO "cards" VALUES (843,1,'On descending a b-tree, what''s the rule?','Never step into a minimal node.',0);
INSERT INTO "cards" VALUES (844,1,'On insertion in a b-tree, what''s the rule?','Never step into a full node.',0);
INSERT INTO "cards" VALUES (845,1,'How many nodes of k leaves are in a compressed trie (big-O)?','O(k) nodes with k leaves due to compression.',0);
INSERT INTO "cards" VALUES (846,1,'What is a suffix tree?','A suffix tree is a compressed trie containing all the suffixes of the given text as their keys and positions in the text as their values. Suffix trees allow particularly fast implementations of many important string operations.

The construction of such a tree for the string S takes time and space linear in the length of S. Once constructed, several operations can be performed quickly, for instance locating a substring in S, locating a substring if a certain number of mistakes are allowed, locating matches for a regular expression pattern etc. Suffix trees also provide one of the first linear-time solutions for the longest common substring problem. These speedups come at a cost: storing a string''s suffix tree typically requires significantly more space than storing the string itself.',0);
INSERT INTO "cards" VALUES (847,1,'In brief, how does selection sort work?','Find the minimum item on each pass, past the previous minimum, and swap it into the leftmost position after the previous minimum.',0);
INSERT INTO "cards" VALUES (848,1,'When can insertion sort run in n log n time?','Load into a binary search tree. Then inorder traversal.',0);
INSERT INTO "cards" VALUES (849,1,'How can you speed up selection sort with a heap?','Replace the unsorted portion with a min-heap. Gives O(log n) removal. Makes n log n overall.',0);
INSERT INTO "cards" VALUES (850,1,'What data structure is well suited for a heap sort and which is bad?','Array - good
Linked list - clumsy',0);
INSERT INTO "cards" VALUES (851,1,'What data structure is well suited for a merge sort and which is just okay?','Linked list - a natural
Array does not allow for in-place',0);
INSERT INTO "cards" VALUES (852,1,'How can you optimize finding a pivot when the segment to pivot is large (not random choice)?','Choose a median of three.',0);
INSERT INTO "cards" VALUES (853,1,'What is counting sort?','Counting sort is an algorithm for sorting a collection of objects according to keys that are small integers; that is, it is an integer sorting algorithm. It operates by counting the number of objects that have each distinct key value, and using arithmetic on those counts to determine the positions of each key value in the output sequence. Its running time is linear in the number of items and the difference between the maximum and minimum key values, so it is only suitable for direct use in situations where the variation in keys is not significantly greater than the number of items. However, it is often used as a subroutine in another sorting algorithm, radix sort, that can handle larger keys more efficiently.',0);
INSERT INTO "cards" VALUES (854,1,'What is radix sort?','Radix sort is a non-comparative integer sorting algorithm that sorts data with integer keys by grouping keys by the individual digits which share the same significant position and value. 
Two classifications of radix sorts are least significant digit (LSD) radix sorts and most significant digit (MSD) radix sorts. LSD radix sorts process the integer representations starting from the least digit and move towards the most significant digit. MSD radix sorts work the other way around.',0);
INSERT INTO "cards" VALUES (855,1,'What is the counting sort running time?','O(q + n) where q is the number of unique items. If q is in O(n), then linear time.',0);
INSERT INTO "cards" VALUES (856,1,'What radix is most natural to use?','A power of 2 radix.',0);
INSERT INTO "cards" VALUES (857,1,'How would radix sort work for IEEE floating point numbers?','Flip all bits for negative numbers, do sort, then flip back.',0);
INSERT INTO "cards" VALUES (858,1,'How to choose q for radix sort?','Choose q within a power of 2 of n. Ensures the number of passes is small. Best rule is n rounded down to the next power of 2.
To save memory, round sqrt(n) down to the next power of 2. Twice as many passes.',0);
INSERT INTO "cards" VALUES (859,1,'What operations are a treap optimized for?','- union
- intersection
- difference',0);
INSERT INTO "cards" VALUES (860,1,'What is the Day–Stout–Warren (DSW) algorithm?','The Day–Stout–Warren (DSW) algorithm is a method for efficiently balancing binary search trees — that is, decreasing their height to O(log n) nodes, where n is the total number of nodes. Unlike a self-balancing binary search tree, it does not do this incrementally during each operation, but periodically, so that its cost can be amortized over many operations.',0);
INSERT INTO "cards" VALUES (862,1,'Is radix sort stable?','Yes.',0);
INSERT INTO "cards" VALUES (863,1,'What is the algorithmic time complexity of radix sort?','O(digits)',0);
INSERT INTO "cards" VALUES (865,1,'All comparison-based sorting is bounded by what complexity?','Omega(n log n)',0);
INSERT INTO "cards" VALUES (866,1,'What do you call a linear ordering of a directed graph of its vertices such that for every directed edge uv from vertex u to vertex v, u comes before v in the ordering?','Topological sort',0);
INSERT INTO "cards" VALUES (867,1,'What is a good method for performing a topological sort?','1. Calculate in-degree for each node. O(v + e)
2. Go through 0s, add to queue.
3. For each item in queue, look at each connection, and decrement in-degree of each, if they got to 0, add to queue, repeat.',0);
INSERT INTO "cards" VALUES (868,1,'How many possible trees are there that span all nodes in a graph?','4^n',0);
INSERT INTO "cards" VALUES (870,1,'What is the time complexity of Prim''s algorithm on an adjacency matrix?','O(v^2)',0);
INSERT INTO "cards" VALUES (871,1,'What is the time complexity of Prim''s algorithm on an adjacency list and a binary heap?','O(e log v)
derived from:
O((e + v) log v)',0);
INSERT INTO "cards" VALUES (872,1,'What is the time complexity of Prim''s algorithm on an adjacency list and a Fibonacci heap?','O(e + v log v)',0);
INSERT INTO "cards" VALUES (874,1,'What is the time complexity of Kruskal''s algorithm?','O(E log V)
or
O(e log e + e α(v) + v)',0);
INSERT INTO "cards" VALUES (875,1,'What is Kruskal''s algorithm?','Kruskal''s algorithm is a minimum-spanning-tree algorithm which finds an edge of the least possible weight that connects any two trees in the forest. It is a greedy algorithm in graph theory as it finds a minimum spanning tree for a connected weighted graph adding increasing cost arcs at each step. This means it finds a subset of the edges that forms a tree that includes every vertex, where the total weight of all the edges in the tree is minimized. If the graph is not connected, then it finds a minimum spanning forest (a minimum spanning tree for each connected component).',0);
INSERT INTO "cards" VALUES (876,1,'How can you find the number of connected components?','For each node:
  if node not yet visited, increment component count and do DFS.',0);
INSERT INTO "cards" VALUES (877,1,'How can you get a topological sort with DFS?','Do a DFS, and when each node is being marked as complete, add node to a list.
Reverse the list.',0);
INSERT INTO "cards" VALUES (878,1,'How can you check for a cycle with DFS?','for each neighbor node:
if not marked as visited (and is not parent) then DFS
else it''s a cycle',0);
INSERT INTO "cards" VALUES (879,1,'How can you get the strongly connected components of a graph?','1. DFS - calculate the finish times for each node
2. Reverse the edges in the graph
3. Call DFS on nodes in reverse graph in reverse order of finishing times.',0);
INSERT INTO "cards" VALUES (880,1,'How do you reverse the edges in a directed graph represented as an adjacency matrix?','Transpose the matrix, so [i, j] becomes [j, i]',0);
INSERT INTO "cards" VALUES (881,1,'How can you find the shortest path on a DAG?','1. Topological sort
2. follow the topological sort, relaxing edges',0);
INSERT INTO "cards" VALUES (882,1,'How to find the longest path on a weighted DAG?','1. Set all edges to their negative weight.
2. Topological sort 
3. follow the topological sort, relaxing edges',0);
INSERT INTO "cards" VALUES (883,1,'What is the diameter of a graph?','The shortest path of the farthest nodes. That is, it is the greatest distance between any pair of vertices. To find the diameter of a graph, first find the shortest path between each pair of vertices. The greatest length of any of these paths is the diameter of the graph.',0);
INSERT INTO "cards" VALUES (884,1,'Under what condition can you not use Djikstra''s algorithm?','When the graph contains a negative edge. Can cause a cycle that will be traversed infinitely.',0);
INSERT INTO "cards" VALUES (885,1,'In plain words, how does Kruskal''s algorithm work?','1. Create a set T and list for result
2. Make a list of all edges in G
3. Sort edges by weight, from least to greatest.
4. Iterate edges in sorted order.
5. For each edge, if u and v are not in T, add u and v to T, and add edge to result list.',0);
INSERT INTO "cards" VALUES (886,1,'What can most dynamic programming problems be expressed as?','Finding the shortest path in a DAG. Formulating it this way ensures you can solve it in linear or linearithmic time.',0);
INSERT INTO "cards" VALUES (887,1,'What metric can you use to measure the badness of a line in a text justification problem?','(page width - text width)^3
Minimize the sum of the badness of the lines.',0);
INSERT INTO "cards" VALUES (888,1,'How can you tell if a graph is 2-colorable?','If it''s bipartite. All trees are bipartite.',0);
INSERT INTO "cards" VALUES (889,1,'What is it called when you have too many base cases in your recursion?','arm''s length recursion',0);
INSERT INTO "cards" VALUES (890,1,'What is the base case of a recursion?','The code required to give the solution to the smallest subproblem.',0);
INSERT INTO "cards" VALUES (891,1,'What is the formula for n choose k?','n! / k!(n - k)!',0);
INSERT INTO "cards" VALUES (893,1,'What kinds of problems is dynamic programming best suited for?','- optimizing left to right sequences (strings, tree nodes as array, permutations)
- search all possibilities while storing results to avoid recomputing',0);
INSERT INTO "cards" VALUES (894,1,'What is n choose n?','1',0);
INSERT INTO "cards" VALUES (895,1,'What is n choose 1?','n',0);
INSERT INTO "cards" VALUES (896,1,'What is n choose 0?','1',0);
INSERT INTO "cards" VALUES (897,1,'What is the Floyd-Warshall algorithm?','The Floyd–Warshall algorithm is a dynamic programming algorithm for finding shortest paths in a weighted graph with positive or negative edge weights (but with no negative cycles).',0);
INSERT INTO "cards" VALUES (898,1,'What is the Bayes'' rule (formula)?','P(A|B) = (P(B|A) * P(A)) / P(B)',0);
INSERT INTO "cards" VALUES (899,1,'How would you calculate P(A|B)?','P(A and B) / P(B)',0);
INSERT INTO "cards" VALUES (900,1,'How would you calculate P(A and B)?','P(A) * P(B)',0);
INSERT INTO "cards" VALUES (901,1,'How would you calculate P(A or B)?','P(A) + P(B) - P(AB)',0);
INSERT INTO "cards" VALUES (902,1,'What''s another way to write P(A and B)?','P(AB)',0);
INSERT INTO "cards" VALUES (903,1,'What is a Markov chain?','A Markov chain consists of states linked by transitions labeled with probabilities. The states do not have to be words. They could represent any state.',0);
INSERT INTO "cards" VALUES (904,1,'Write a function that computes the sqrt(n) using binary search.','How?',0);
INSERT INTO "cards" VALUES (905,1,'What is P(A|A)?','1',0);
INSERT INTO "cards" VALUES (906,1,'At how many items should you expect a collision when hashing among n buckets?','At sqrt(n) the probability is 1/2',0);
INSERT INTO "cards" VALUES (907,1,'What is n/n^2?','1/n',0);
INSERT INTO "cards" VALUES (908,1,'What is the P( ! B ) ?','1 - P(B)',0);
INSERT INTO "cards" VALUES (909,1,'What is the probability of at least 1 H in 3 flips?','1 - P(TTT) = 1 - 1/8 = 7/8',0);
INSERT INTO "cards" VALUES (910,1,'With a fair coin, what is the probability of getting exactly 1 H in 4 flips?','P(HTTT) + P(THTT) + P(TTHT) + P(TTTH) = 1/16 + 1/16 + 1/16 + 1/16 = 4/16 = 1/4',0);
INSERT INTO "cards" VALUES (911,1,'With a fair coin, what is the probability of getting exactly k H in n flips?','(n choose k)/2^n',0);
INSERT INTO "cards" VALUES (912,1,'In what domain are most decision problems (P, Exp, R, outside R)?','Outside R - they are uncomputable',0);
INSERT INTO "cards" VALUES (913,1,'What does it mean when a problem is NP-Hard?','It is as hard as any other problem in NP. A problem X is NP-Hard if every problem Y in NP-Hard reduces to X.',0);
INSERT INTO "cards" VALUES (914,1,'What does it mean to reduce a problem A to a problem B?','Converting the input to algorithm A into input into algorithm B, providing an answer for A.',0);
INSERT INTO "cards" VALUES (915,1,'Is "3-D matching" NP-Complete?','Yes',0);
INSERT INTO "cards" VALUES (916,1,'Is "triple coloring a graph" NP-Complete?','Yes',0);
INSERT INTO "cards" VALUES (917,1,'Is "two coloring a graph" NP-Complete?','No',0);
INSERT INTO "cards" VALUES (918,1,'Is "subset sum" NP-Complete?','Yes',0);
INSERT INTO "cards" VALUES (919,1,'Is "bin packing" NP-Complete?','Yes',0);
INSERT INTO "cards" VALUES (920,1,'Is "vertex cover" NP-Complete?','Yes',0);
INSERT INTO "cards" VALUES (921,1,'Is "set cover" NP-Complete?','Yes',0);
INSERT INTO "cards" VALUES (922,1,'Name some NP-Complete problems.','- tsp
- knapsack problem (decision problem)
- satisfiability
- 3D matching
- tricoloring
- subset sum
- rectangle packing
- bin packing
- vertex cover
- set cover',0);
INSERT INTO "cards" VALUES (923,1,'What is one way of doing approximate traveling salesman?','Select a vertex as root.
Build a MST.
Do a preorder traversal, store nodes in H.
Return H (a Hamiltonian cycle)',0);
INSERT INTO "cards" VALUES (924,1,'What suffers from GC pauses?','- long-running processes like servers
- real-time applications like video processing',0);
INSERT INTO "cards" VALUES (925,1,'How can an LRU cache be implemented with a linked list?','When an item is accessed, it moves to the head of the list.
The trailing items can be overwritten with new items, or removed.',0);
INSERT INTO "cards" VALUES (926,1,'How often are DRAM cells data rewritten?','Every 10ms.',0);
INSERT INTO "cards" VALUES (927,1,'What does Skylake architecture look like?','Skylake: 

L1 Data cache = 32 KB, 64 B/line, 8-WAY. 64 cache lines per cache way
L1 Instruction cache = 32 KB, 64 B/line, 8-WAY. 64 cache lines per cache way
L2 cache = 256 KB, 64 B/line, 4-WAY
L3 cache = 8 MB, 64 B/line, 16-WAY',0);
INSERT INTO "cards" VALUES (928,1,'What is a TLB?','A translation lookaside buffer (TLB) is a cache that memory management hardware uses to improve virtual address translation speed. The majority of desktop, laptop, and server processors includes one or more TLBs in the memory management hardware, and it is nearly always present in any hardware that utilizes paged or segmented virtual memory.',0);
INSERT INTO "cards" VALUES (929,1,'In a direct mapped or set associative cache, what is special about the cache size?','Main memory is divided into pages, and a memory page maps directly to the cache way size. So an item in a cache page can be mapped to any one of 8 cache ways in an 8-way associative cache. A direct mapped cache simply has one cache way, but it works the same way.',0);
INSERT INTO "cards" VALUES (930,1,'How many bits does a SHA1 produce?','160',0);
INSERT INTO "cards" VALUES (931,1,'How many bits does a SHA2 and SHA3 produce?','224 to 512',0);
INSERT INTO "cards" VALUES (932,1,'Is it always letters we are looking for in compression?','No. Hardly.
We are looking to compress discrete symbols, not letters. If we have a few words, they could be symbols.
We try to balance longest chains of symbols and the lowest entropy.',0);
INSERT INTO "cards" VALUES (933,1,'What is Zopfli?','Zopfli is data compression software that encodes data into DEFLATE, gzip and zlib formats. It achieves higher compression than other DEFLATE/zlib implementations, but takes much longer to perform the compression. It was first released in February 2013 by Google.',0);
INSERT INTO "cards" VALUES (934,1,'What is the Chinese remainder theorem?','If one knows the remainders of the division of an integer n by several integers, then one can determine uniquely the remainder of the division of n by the product of these integers, under the condition that the divisors are pairwise coprime.',0);
INSERT INTO "cards" VALUES (935,1,'How do you change a 2s complement positive integer into a negative one?','Flip all bits and + 1',0);
INSERT INTO "cards" VALUES (936,1,'How do you change a 2s complement negative integer into a positive one?','Flip all bits and + 1 (same as going the other way)',0);
INSERT INTO "cards" VALUES (937,1,'Which way does the stack grow?','Down to lower memory addresses.',0);
INSERT INTO "cards" VALUES (938,1,'What is polymorphism in OO?','A property of OO in which an abstraction operation may be performed in different ways in different classes, but share an interface.
Also can mean multiple methods of the same name but different signature.',0);
INSERT INTO "cards" VALUES (939,1,'What are the 4 main tenets of OO?','Abstraction
Polymorphism
Inheritance 
Encapsulation

a pie (acronym)',0);
INSERT INTO "cards" VALUES (940,1,'What is dynamic binding?','Dynamic binding, also called dynamic dispatch, is the process of linking procedure call to a specific sequence of code (method) at run-time. Dynamic binding is also known as late binding or run-time binding. Dynamic binding is an object oriented programming concept and it is related with polymorphism and inheritance.',0);
INSERT INTO "cards" VALUES (941,1,'What is a package?','A group of classes bundled together.',0);
INSERT INTO "cards" VALUES (942,1,'What is an interface in OO?','Similar to an abstract data type, but simply defines the expected behaviors of a class, but does not suggest an implementation.',0);
INSERT INTO "cards" VALUES (943,1,'What is a framework?','A reusable piece of software that implements a generic solution to a generalized problem. It saves time by being a close model of the problem domain and can reach 100% with details coded by the implementer.',0);
INSERT INTO "cards" VALUES (944,1,'What are hooks?','The portions of a framework that are called, but do nothing and require implementation when needed.',0);
INSERT INTO "cards" VALUES (945,1,'What is a server?','A program that provides a service for other programs to connect to it.',0);
INSERT INTO "cards" VALUES (946,1,'What is an OCL?','Object constraint language. A specification language designed to formally specify constraints in software modules. An OCL expression specifies a logical fact about the system that must remain true.',0);
INSERT INTO "cards" VALUES (947,1,'What is the Chain of Responsibility pattern?','Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it.',0);
INSERT INTO "cards" VALUES (948,1,'What is the Command pattern?','Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations.',0);
INSERT INTO "cards" VALUES (949,1,'What design pattern avoids coupling the sender of a request to its receiver by giving more than one object a chance to handle the request?','Chain of Responsibility',0);
INSERT INTO "cards" VALUES (950,1,'What design pattern encapsulates a request as an object, thereby letting you parameterize clients with different requests?','Command pattern',0);
INSERT INTO "cards" VALUES (951,1,'What is the Interpreter pattern?','Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.',0);
INSERT INTO "cards" VALUES (952,1,'What design pattern, given a language, defines a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language?','Interpreter pattern',0);
INSERT INTO "cards" VALUES (953,1,'What is the Iterator pattern?','Provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation.',0);
INSERT INTO "cards" VALUES (954,1,'What design pattern provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation?','Iterator pattern',0);
INSERT INTO "cards" VALUES (955,1,'What is the Mediator pattern?','Defines an object that encapsulates how a set of objects interact. Promotes loose coupling by keeping objects from referring to each other explicitly and it lets you vary their interactions independently.',0);
INSERT INTO "cards" VALUES (956,1,'What design pattern defines an object that encapsulates how a set of objects interact?','Mediator pattern',0);
INSERT INTO "cards" VALUES (957,1,'What is the Memento pattern?','Without violating encapsulation, capture and externalize an object''s internal state so that the object can be restore to this state later.',0);
INSERT INTO "cards" VALUES (958,1,'What design pattern captures and externalize an object''s internal state so that the object can be restore to this state later?','Memento pattern',0);
INSERT INTO "cards" VALUES (959,1,'What is the Observer pattern?','Defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.',0);
INSERT INTO "cards" VALUES (960,1,'What design pattern defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically?','Observer pattern',0);
INSERT INTO "cards" VALUES (961,1,'What is the State pattern?','Allows an object to alter its behavior when its internal state changes. The object will appear to change its class.',0);
INSERT INTO "cards" VALUES (962,1,'What design pattern allows an object to alter its behavior when its internal state changes?','State pattern',0);
INSERT INTO "cards" VALUES (963,1,'What is the Strategy pattern?','Defines a family of algorithms, encapsulates each one, and makes them interchangeable. Lets the algorithm vary independently from clients that use it.',0);
INSERT INTO "cards" VALUES (964,1,'What design pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable, and lets the algorithm vary independently from clients that use it?','Strategy pattern',0);
INSERT INTO "cards" VALUES (965,1,'What is the Template Method pattern?','Defines the skeleton of an algorithm in an operation, deferring some steps to subclasses. Lets subclasses redefine certain steps of an algorithm without changing the algorithm''s structure.',0);
INSERT INTO "cards" VALUES (966,1,'What design pattern defines the skeleton of an algorithm in an operation, deferring some steps to subclasses?','Template Method pattern',0);
INSERT INTO "cards" VALUES (967,1,'What is the Visitor pattern?','Represents an operation to be performed on the elements of an object structure. Lets you define a new operation without changing the classes of the elements on which it operates.',0);
INSERT INTO "cards" VALUES (968,1,'What design pattern represents an operation to be performed on the elements of an object structure and lets you define a new operation without changing the classes of the elements on which it operates?','Visitor pattern',0);
INSERT INTO "cards" VALUES (969,1,'What is the Adapter pattern?','Converts the interface of a class into another interface clients expect. Lets classes work together that couldn''t otherwise because of incompatible interfaces.',0);
INSERT INTO "cards" VALUES (970,1,'What design pattern converts the interface of a class into another interface clients expect?','Adapter pattern',0);
INSERT INTO "cards" VALUES (971,1,'What is the Bridge pattern?','Decouples an abstraction from its implementation so that the two can vary independently.',0);
INSERT INTO "cards" VALUES (972,1,'What design pattern decouples an abstraction from its implementation so that the two can vary independently?','Bridge pattern',0);
INSERT INTO "cards" VALUES (973,1,'What is the Composite pattern?','Compose objects into tree structures to represent part-whole hierarchies. Lets clients treat individual objects and compositions of objects uniformly.',0);
INSERT INTO "cards" VALUES (974,1,'What design pattern composes objects into tree structures to represent part-whole hierarchies?','Composite pattern',0);
INSERT INTO "cards" VALUES (975,1,'What is the Decorator pattern?','Attaches additional responsibilities to an object dynamically. Provides a flexible alternative to sub-classing for extending functionality.',0);
INSERT INTO "cards" VALUES (976,1,'What design pattern attaches additional responsibilities to an object dynamically and provides a flexible alternative to sub-classing for extending functionality?','Decorator pattern',0);
INSERT INTO "cards" VALUES (977,1,'What is the Facade pattern?','Provides a unified interface to a set of interfaces in a subsystem. Defines a high-level interface that makes the subsystem easier to use.',0);
INSERT INTO "cards" VALUES (978,1,'What design pattern provides a unified interface to a set of interfaces in a subsystem and defines a high-level interface that makes the subsystem easier to use.','Facade pattern',0);
INSERT INTO "cards" VALUES (979,1,'What is the Flyweight pattern?','Uses sharing to support large numbers of fine-grained objects efficiently.',0);
INSERT INTO "cards" VALUES (980,1,'What design pattern uses sharing to support large numbers of fine-grained objects efficiently?','Flyweight pattern',0);
INSERT INTO "cards" VALUES (981,1,'What is the Proxy pattern?','Provides a surrogate or placeholder for another object to control access to it.',0);
INSERT INTO "cards" VALUES (982,1,'What design pattern provides a surrogate or placeholder for another object to control access to it?','Proxy pattern',0);
INSERT INTO "cards" VALUES (983,1,'What is the Abstract Factory pattern?','Provides an interface for creating families of related or dependent objects without specifying their concrete class.',0);
INSERT INTO "cards" VALUES (984,1,'What design pattern provides an interface for creating families of related or dependent objects without specifying their concrete class?','Abstract Factory pattern',0);
INSERT INTO "cards" VALUES (985,1,'What is the Builder pattern?','Separates the construction of a complex object from its representation, so the same construction process can create different representations.',0);
INSERT INTO "cards" VALUES (986,1,'What design pattern separates the construction of a complex object from its representation, so the same construction process can create different representations?','Builder pattern.',0);
INSERT INTO "cards" VALUES (987,1,'What is the Factory Method pattern?','(Technically it''s an idiom)
Defines an interface for creating an object, but lets subclasses decide which class to instantiate. Lets a class defer instantiation to subclasses.',0);
INSERT INTO "cards" VALUES (988,1,'What design pattern defines an interface for creating an object, but lets subclasses decide which class to instantiate?','Factory method (technically an idiom, not a design pattern)',0);
INSERT INTO "cards" VALUES (989,1,'What is the Prototype pattern?','Specifies the kinds of objects to create using a prototypical instance, and creates new objects by copying this prototype.',0);
INSERT INTO "cards" VALUES (990,1,'What design pattern specifies the kinds of objects to create using a prototypical instance, and creates new objects by copying this prototype?','Prototype pattern',0);
INSERT INTO "cards" VALUES (991,1,'What is the Singleton pattern?','Ensures a class only has one instance and provides a global point of access to it.',0);
INSERT INTO "cards" VALUES (992,1,'What design pattern ensures a class only has one instance and provides a global point of access to it?','Singleton pattern',0);
INSERT INTO "cards" VALUES (993,1,'What are design patterns?','Recurring, reusable solutions to common class and class relationship problems.',0);
INSERT INTO "cards" VALUES (994,1,'What is the Law of Demeter?','Each unit should have only limited knowledge about other units - only units "closely" related to the current unit. Each unit should only talk to friends, not strangers. Only talk to immediate friends.',0);
INSERT INTO "cards" VALUES (995,1,'If a cache line size is 64B, and the memory bus is 64 bits wide, how many transfers per cache line?','8',0);
INSERT INTO "cards" VALUES (996,1,'What does an exclusive cache style?','An eviction from L1D pushes the cache line down into L2, which has the same cache line size. Each eviction is progressively more expensive.',0);
INSERT INTO "cards" VALUES (997,1,'What manufacturer uses an exclusive cache style?','AMD',0);
INSERT INTO "cards" VALUES (998,1,'How does an inclusive cache style work?','Each cache line in L1D is also in L2. This makes L1D eviction faster.',0);
INSERT INTO "cards" VALUES (999,1,'What manufacturer uses an inclusive cache style?','Intel',0);
INSERT INTO "cards" VALUES (1000,1,'What is the Fast Fourier Transform?','A fast Fourier transform (FFT) algorithm computes the discrete Fourier transform (DFT) of a sequence, or its inverse. Fourier analysis converts a signal from its original domain (often time or space) to a representation in the frequency domain and vice versa. An FFT rapidly computes such transformations by factorizing the DFT matrix into a product of sparse (mostly zero) factors.',0);
INSERT INTO "cards" VALUES (1001,1,'What is a skip list?','A data structure that allows fast search within an ordered sequence of elements. Fast search is made possible by maintaining a linked hierarchy of subsequences, with each successive subsequence skipping over fewer elements than the previous one. Searching starts in the sparsest subsequence until two consecutive elements have been found, one smaller and one larger than or equal to the element searched for.

A skip list is built in layers. The bottom layer is an ordinary ordered linked list. Each higher layer acts as an "express lane" for the lists below, where an element in layer i appears in layer i+1 with some fixed probability p (two commonly used values for p are 1/2 or 1/4).',0);
INSERT INTO "cards" VALUES (1002,1,'What operations does a skip list support and what is their avg and worst case times?','search: O(log n) O(n)
insert: O(log n) O(n)
delete: O(log n) O(n)',0);
INSERT INTO "cards" VALUES (1003,1,'What operations does a van Emde Boas tree support and what are the time complexities?','All are O(log log M), where M is the total number of items that can be stored = 2^m
Or O(log m) where m is the actual number of items stored
Space: O(M)

Search
Insert
Delete
Predecessor
Successor',0);
INSERT INTO "cards" VALUES (1004,1,'What are the complexities for treap operations?','For all the basic maintenance operations, they are O(log n) average case and O(n) worst case.
- Search
- Insert
- Delete

For these operations, O(m log n/m) for treaps of sizes m and n, with m ≤ n. 
- union
- intersection
- difference',0);
INSERT INTO "cards" VALUES (1005,1,'What are Catalan numbers?','Catalan numbers form a sequence of natural numbers that occur in various counting problems, often involving recursively-defined objects. They can be thought of as the set of balanced parentheses.',0);
INSERT INTO "cards" VALUES (1006,1,'What is Karatsuba multiplication?','It reduces the multiplication of two n-digit numbers to at most n^1.585 single-digit multiplications in general (and exactly n^log(base2)3 when n is a power of 2). The Karatsuba algorithm was the first multiplication algorithm asymptotically faster than the quadratic "grade school" algorithm.',0);
INSERT INTO "cards" VALUES (1007,1,'What is the time complexity of Ford-Fulkerson?','O(E max|f|)',0);
INSERT INTO "cards" VALUES (1008,1,'16^0 ?','1',0);
INSERT INTO "cards" VALUES (1009,1,'16^1 ?','16',0);
INSERT INTO "cards" VALUES (1010,1,'16^2 ?','256',0);
INSERT INTO "cards" VALUES (1011,1,'16^3 ?','4096',0);
INSERT INTO "cards" VALUES (1012,1,'16^4 ?','65,536',0);
INSERT INTO "cards" VALUES (1013,1,'16^5 ?','1,048,576',0);
INSERT INTO "cards" VALUES (1014,1,'16^6 ?','16 million',0);
INSERT INTO "cards" VALUES (1015,1,'16^7','268 million',0);
INSERT INTO "cards" VALUES (1016,1,'16^8 ?','4.294 billion, same as 2^32',0);
INSERT INTO "cards" VALUES (1017,1,'What is 0xB in decimal?','11',0);
INSERT INTO "cards" VALUES (1018,1,'What is 0xC in decimal?','12',0);
INSERT INTO "cards" VALUES (1019,1,'What is 0xD in decimal?','13',0);
INSERT INTO "cards" VALUES (1020,1,'What is 0xE in decimal?','14',0);
INSERT INTO "cards" VALUES (1021,1,'What is 0xF in decimal?','15',0);
INSERT INTO "cards" VALUES (1022,1,'What is 0xA in decimal?','10',0);
INSERT INTO "cards" VALUES (1023,1,'What is 0xA in binary?','1010',0);
INSERT INTO "cards" VALUES (1024,1,'What is 0xB in binary?','1011',0);
INSERT INTO "cards" VALUES (1025,1,'What is 0xC in binary?','1100',0);
INSERT INTO "cards" VALUES (1026,1,'What is 0xD in binary?','1101',0);
INSERT INTO "cards" VALUES (1027,1,'What is 0xE in binary?','1110',0);
INSERT INTO "cards" VALUES (1028,1,'What is 0xF in binary?','1111',0);
INSERT INTO "cards" VALUES (1029,1,'How are the priorities of a treap assigned?','Randomly generated upon insertion. That randomness is used to keep the tree balanced.',0);
INSERT INTO "cards" VALUES (1030,1,'Give an example of a proposition in conjunctive normal form.','(A + ~B)(A + B)',0);
INSERT INTO "cards" VALUES (1031,1,'How does a half-adder handle an addition?','XOR for the sum and AND for the carry',0);
INSERT INTO "cards" VALUES (1032,1,'Is a geometric Steiner tree NP-Complete?','Yes',0);
INSERT INTO "cards" VALUES (1033,1,'What are the 2 algorithms for convex hull?','- Graham scan
- Jarvis march (gift-wrapping method)',0);
INSERT INTO "cards" VALUES (1034,1,'How does a Graham scan work in finding convex hull?','At O(n log n), uses a sort and then a simple single pass of all the points, and making only left turns as it goes around the perimeter counter-clockwise. When the next point is a right turn, it backtracks past all points (using a stack and popping points off) until that turn turns into a left turn.',0);
INSERT INTO "cards" VALUES (1035,1,'How does the Jarvis march work in finding convex hull?','Starting with the leftmost point p: 
Go through each point to the right of that point, and using p as a pivot, find which point is the most clockwise. O(n)
Get the most clockwise point as the new p - O(1)
Loop again with new p

This continues until the starting point is reached O(h) - where h is the number of hull points',0);
INSERT INTO "cards" VALUES (1036,1,'What is the worst case time complexity of a Jarvis march?','O(n^2)
Occurs when most points are part of the hull, and few points contained in the hull.',0);
INSERT INTO "cards" VALUES (1037,1,'What is the average complexity of a Jarvis march?','O(n * h) where h is the number of points that compose the hull.',0);
INSERT INTO "cards" VALUES (1038,1,'What is white-box testing?','The tester is using knowledge of the program''s internals.',0);
INSERT INTO "cards" VALUES (1039,1,'What is black-box testing?','The tester is testing without knowledge of the internals.',0);
INSERT INTO "cards" VALUES (1040,1,'What is unit testing?','Testing a single module in isolation.',0);
INSERT INTO "cards" VALUES (1041,1,'What can affect testing, apart from API inputs?','- timing of inputs
- disk full
- network latency
- network failures',0);
INSERT INTO "cards" VALUES (1042,1,'What are 3 situations where timing of inputs is important in testing?','- when SUT interacts directly with hardware devices
- when SUT interfaces with other machines on the network
- SUT is multithreaded',0);
INSERT INTO "cards" VALUES (1043,1,'What is a mock object?','An object used to replicate the interfaces and interactions of a larger system that can be bolted on to the SUT.',0);
INSERT INTO "cards" VALUES (1044,1,'What is integration testing?','Testing units together to ensure the integrated behavior performs as expected.',0);
INSERT INTO "cards" VALUES (1045,1,'What is system testing?','- not concerned with internals
- does system as a while perform acceptably for the important use cases',0);
INSERT INTO "cards" VALUES (1046,1,'What is differential testing?','Running test inputs into 2 different implementations and then testing for equality. This is useful for testing multiple versions of the software.',0);
INSERT INTO "cards" VALUES (1047,1,'What is stress testing?','Testing code or a system beyond its normal usage.
Testing large inputs.
Testing many requests.',0);
INSERT INTO "cards" VALUES (1048,1,'How can you tell you''re testing enough?','Code coverage metrics (of which there are a few)',0);
INSERT INTO "cards" VALUES (1049,1,'What does code coverage not tell you?','- missing errors of omission
- code that misses a specification item
- does not tell us that code looped the correct number of times',0);
INSERT INTO "cards" VALUES (1050,1,'What should you do when you discover that not all code is covered?','Don''t blindly write tests to cover all cases.
Rethink the tests. Perhaps they are interpreting the functionality incorrectly.',0);
INSERT INTO "cards" VALUES (1051,1,'What are some coverage metrics?','- line coverage
- statement coverage (multiple statements on a line)
- branch coverage
- mc/dc coverage
- loop coverage',0);
INSERT INTO "cards" VALUES (1052,1,'What is mc/dc coverage?','modified condition / decision

- Required for certain types of avionics software
- Tests every possible branch and condition',0);
INSERT INTO "cards" VALUES (1053,1,'What is path coverage?','Coverage that is concerned with the paths taken to arrive at a place in the code.',0);
INSERT INTO "cards" VALUES (1054,1,'What is infeasible code?','Code that can never be true.
Infeasible code is code that is either not forward- or not backward-reachable. Infeasible code is not necessarily an error but it is a good indicator that something is wrong with the code and, e.g., in avionics, infeasible code is forbidden by current standards.',0);
INSERT INTO "cards" VALUES (1055,1,'Should you include integration tests in code coverage metrics?','No',0);
INSERT INTO "cards" VALUES (1056,1,'What should you do before fixing a reported bug?','Write a test. Avoiding this practice allows bugs to re-appear.',0);
INSERT INTO "cards" VALUES (1057,1,'Why should tests be idempotent and isolated?','It allows tests to be run in any order, re-run, and parallelized.',0);
INSERT INTO "cards" VALUES (1058,1,'delete (unordered singly linked list)','O(n)',0);
INSERT INTO "cards" VALUES (1059,1,'find (unordered singly linked list)','O(n)',0);
INSERT INTO "cards" VALUES (1060,1,'delete (ordered singly linked list)','O(n)',0);
INSERT INTO "cards" VALUES (1061,1,'find (Binary Search Tree)','O(h)',0);
INSERT INTO "cards" VALUES (1062,1,'add (Binary Search Tree)','O(h)',0);
INSERT INTO "cards" VALUES (1063,1,'Add element to the top of the stack - push','O(1)',0);
INSERT INTO "cards" VALUES (1064,1,'Remove the top element of the stack - pop','O(1)',0);
INSERT INTO "cards" VALUES (1065,1,'Return the value of the top element of the stack without removing it.','O(1)',0);
INSERT INTO "cards" VALUES (1066,1,'Add an element to a queue.','O(1)',0);
INSERT INTO "cards" VALUES (1067,1,'Remove an element from the front of the queue. dequeue','O(1)',0);
INSERT INTO "cards" VALUES (1068,1,'Return the element from the front of the queue without removing it. - front','O(1)',0);
INSERT INTO "cards" VALUES (1069,1,'find (unordered array)','O(n)',0);
INSERT INTO "cards" VALUES (1070,1,'add (unordered array)','O(1)',0);
INSERT INTO "cards" VALUES (1071,1,'delete (unordered array)','O(N)',0);
INSERT INTO "cards" VALUES (1072,1,'find (sorted array)','O(log n)
binary search',0);
INSERT INTO "cards" VALUES (1073,1,'add (sorted array)','O(n)',0);
INSERT INTO "cards" VALUES (1074,1,'delete an element from a sorted array','O(N)',0);
INSERT INTO "cards" VALUES (1075,1,'find (unordered singly linked list)','O(N)',0);
INSERT INTO "cards" VALUES (1076,1,'add (unordered singly linked list)','O(1)',0);
INSERT INTO "cards" VALUES (1077,1,'delete (unordered singly linked list)','O(N)',0);
INSERT INTO "cards" VALUES (1078,1,'find (ordered singly linked list)','O(N)',0);
INSERT INTO "cards" VALUES (1079,1,'add (ordered singly linked list)','O(N)',0);
INSERT INTO "cards" VALUES (1080,1,'delete (ordered singly linked list)','O(N)',0);
INSERT INTO "cards" VALUES (1081,1,'find (Binary Search Tree)','O(h)',0);
INSERT INTO "cards" VALUES (1082,1,'add (Binary Search Tree)','O(h)',0);
INSERT INTO "cards" VALUES (1083,1,'delete (Binary Search Tree)','O(h)',0);
INSERT INTO "cards" VALUES (1084,1,'find (Balanced Binary Search Tree)','O(log N)',0);
INSERT INTO "cards" VALUES (1085,1,'add (Balanced Binary Search Tree)','O(log N)',0);
INSERT INTO "cards" VALUES (1086,1,'delete (Balanced Binary Search Tree)','O(log N)',0);
INSERT INTO "cards" VALUES (1087,1,'find (Balanced Binary Search Tree)','O(log N)',0);
INSERT INTO "cards" VALUES (1088,1,'add (Balanced Binary Search Tree)','O(log N)',0);
INSERT INTO "cards" VALUES (1089,1,'delete (Balanced Binary Search Tree)','O(log N)',0);
INSERT INTO "cards" VALUES (1090,1,'What is a skip list?','A data structure for storing a sorted list of items using a hierarchy of linked lists that connect increasingly sparse subsequences of the items.
O(log N) expected time for all operations, O(N) worst case.',0);
INSERT INTO "cards" VALUES (1091,1,'What is a treap?','Tree + heap
A random priority is assigned to every key and must maintain two properties:
- They are in order with respect to their keys, as in a typical binary search tree
- They are in heap order with respect to their priorities, that is, no key has a key of lower priority as an ancestor
O(log N) expected time for all operations, O(N) worst case.',0);
INSERT INTO "cards" VALUES (1092,1,'What is a max-heap?','A queue in which each element has a "priority" assigned to it. Elements with higher priorities are served before lower priorities.',0);
INSERT INTO "cards" VALUES (1093,1,'min (unordered sequence)','O(N)',0);
INSERT INTO "cards" VALUES (1094,1,'insert (unordered sequence)','O(1)',0);
INSERT INTO "cards" VALUES (1095,1,'removeMin (unordered sequence)','O(N)',0);
INSERT INTO "cards" VALUES (1096,1,'min (ordered sequence)','O(1)',0);
INSERT INTO "cards" VALUES (1097,1,'insert (ordered sequence)','O(N)',0);
INSERT INTO "cards" VALUES (1098,1,'removeMin (ordered sequence)','O(1)',0);
INSERT INTO "cards" VALUES (1099,1,'build (ordered sequence)','O(N log N)',0);
INSERT INTO "cards" VALUES (1100,1,'min (binary heap)','O(1)',0);
INSERT INTO "cards" VALUES (1101,1,'insert (binary heap)','O(log N)',0);
INSERT INTO "cards" VALUES (1102,1,'removeMin (binary heap)','O(log N)',0);
INSERT INTO "cards" VALUES (1103,1,'build (binary heap)','O(N)',0);
INSERT INTO "cards" VALUES (1104,1,'What is a binary heap?','A collection of keys arranged in a complete heap-ordered binary tree, represented in level order in an array (not using the first entry). The parent of the node in position k is in position [k/2] and the two children of the node in position k are in position 2k and 2k+1.',0);
INSERT INTO "cards" VALUES (1105,1,'What is a Adaptable Priority Queue?','A priority queue that allows you to change the priority of objects already in the queue.',0);
INSERT INTO "cards" VALUES (1106,1,'What is the time complexity of quicksort?','O(N^2 worst)
O(N log N) - best & expected',0);
INSERT INTO "cards" VALUES (1107,1,'Lower Bound for Comparison Based Sorting','No comparison based sorting algorithm can be faster than O(N log N)',0);
INSERT INTO "cards" VALUES (1108,1,'k-th smallest (full heap)','Put all values in, do k removeMin operations: O(N + k log N)',0);
INSERT INTO "cards" VALUES (1109,1,'What is a connected graph?','There exists a path from every vertex to every other vertex in the graph.',0);
INSERT INTO "cards" VALUES (1110,1,'What is a tree?','An acyclic connected graph.',0);
INSERT INTO "cards" VALUES (1111,1,'What is a cycle?','Path with at least one edge whose first and last vertices are the same.',0);
INSERT INTO "cards" VALUES (1112,1,'What is a spanning tree?','A subgraph that contains all of that graph''s vertices and a single tree.',0);
INSERT INTO "cards" VALUES (1113,1,'Space required for an adjacency list','O(E + V)',0);
INSERT INTO "cards" VALUES (1114,1,'is_adjacent (u,v) (adjacency matrix)','O(degree(u))',0);
INSERT INTO "cards" VALUES (1115,1,'What is the complexity of an adjacency list DFS?','O(E)',0);
INSERT INTO "cards" VALUES (1116,1,'What is another name for a Min-Cost Spanning Tree?','minimum spanning tree',0);
INSERT INTO "cards" VALUES (1117,1,'Bitwise: Isolate the lowest bit that is 1 in x','x & ~(x - 1)',0);
INSERT INTO "cards" VALUES (1118,1,'Bitwise: Replace the lowest bit that is 1 with 0','x & (x - 1)',0);
INSERT INTO "cards" VALUES (1119,1,'Bitwise: Right propagate the rightmost set bit in x','x | (x & ~(x - 1) - 1)',0);
INSERT INTO "cards" VALUES (1120,1,'What are heuristics?','Any approach to problem solving, learning, or discovery that employs a practical method not guaranteed to be optimal or perfect, but sufficient for the immediate goals. Where finding an optimal solution is impossible or impractical, heuristic methods can be used to speed up the process of finding a satisfactory solution. Heuristics can be mental shortcuts that ease the cognitive load of making a decision. Examples of this method include using a rule of thumb, an educated guess, an intuitive judgment, stereotyping, profiling, or common sense',0);
INSERT INTO "cards" VALUES (1121,1,'What is stable sorting?','Items with the same key are sorted based on their relative position in the original permutation',0);
INSERT INTO "cards" VALUES (1122,1,'What is another name for a trie?','Prefix tree or a radix tree.',0);
INSERT INTO "cards" VALUES (1123,1,'What is internal sorting?','An internal sort is any data sorting process that takes place entirely within the main memory of a computer. This is possible whenever the data to be sorted is small enough to all be held in the main memory. For sorting larger datasets, it may be necessary to hold only a chunk of data in memory at a time, since it won''t all fit. The rest of the data is normally held on some larger, but slower medium, like a hard-disk. Any reading or writing of data to and from this slower media can slow the sortation process considerably.',0);
INSERT INTO "cards" VALUES (1124,1,'What is external sorting?','External sorting is a term for a class of sorting algorithms that can handle massive amounts of data. External sorting is required when the data being sorted do not fit into the main memory of a computing device (usually RAM) and instead they must reside in the slower external memory (usually a hard drive). External sorting typically uses a hybrid sort-merge strategy. In the sorting phase, chunks of data small enough to fit in main memory are read, sorted, and written out to a temporary file. In the merge phase, the sorted subfiles are combined into a single larger file.

Mergesort is typically preferred.',0);
INSERT INTO "cards" VALUES (1125,1,'What are 2 advantages of merge sort?','- suitable for a linked list
- suitable for external sort',0);
INSERT INTO "cards" VALUES (1126,1,'What is disadvantages of merge sort?','Need an extra buffer to hold the merged data',0);
INSERT INTO "cards" VALUES (1127,1,'What are 3 advantages of heap sort?','- don''t need recursion
- suitable for large data
- locality of data',0);
INSERT INTO "cards" VALUES (1128,1,'What is a disadvantage of heap sort?','Usually slower than merge sort and quick sort.',0);
INSERT INTO "cards" VALUES (1129,1,'What is a articulation vertex?','The weakest point in a graph.',0);
INSERT INTO "cards" VALUES (1130,1,'What is the chromatic number?','The smallest number of colors needed for an edge coloring of a graph.',0);
INSERT INTO "cards" VALUES (1131,1,'What are long-term issues involved in machine learning?','- technical debt
- lack of clear abstraction barriers 
- changing anything changes everything
- feedback loop - usage based on your model changes the model
- attractive nuisance (using a successful model in one domain where it doesn''t fit in another)
- non-stationarity - stick with current data, or get new, and how much of old data to reuse
- tracking data dependencies - where did the data come from, how to get new data',0);
INSERT INTO "cards" VALUES (1132,1,'How many rows are in a 12 x 16 matrix?','12',0);
INSERT INTO "cards" VALUES (1133,1,'How many columns are in a 12 x 16 matrix?','16',0);
INSERT INTO "cards" VALUES (1134,1,'In linear algebra a vector of 12 elements has how many rows?','12',0);
INSERT INTO "cards" VALUES (1135,1,'In linear algebra a vector of 12 elements has how many columns?','1',0);
INSERT INTO "cards" VALUES (1136,1,'In linear algebra a 12-dimensional vector has how many rows?','12',0);
INSERT INTO "cards" VALUES (1137,1,'In linear algebra a vector of 12-dimensional vector has how many columns?','1',0);
INSERT INTO "cards" VALUES (1138,1,'When multiplying a 4x3 matrix and a 3x6 matrix, what are the dimensions of the final matrix?','4x6',0);
INSERT INTO "cards" VALUES (1139,1,'Can you multiply a 3x2 and a 2x3 matrix?','Yes',0);
INSERT INTO "cards" VALUES (1140,1,'Can you multiply a 3x2 and a 3x2 matrix?','No',0);
INSERT INTO "cards" VALUES (1141,1,'Can you multiply a 3x2 and a 2x6 matrix?','Yes',0);
INSERT INTO "cards" VALUES (1142,1,'When multiplying a 5x2 matrix and a 2x5 matrix, what are the dimensions of the final matrix?','5x5',0);
INSERT INTO "cards" VALUES (1143,1,'Is matrix multiplication commutative? Does AxB = BxA?','No.',0);
INSERT INTO "cards" VALUES (1144,1,'Is matrix multiplication associative? Does (AxB)xC = Ax(BxC)?','Yes',0);
INSERT INTO "cards" VALUES (1145,1,'What would the identity matrix look like to multiply with an MxN matrix to get itself?','An NxN matrix that is all zeroes except it has 1s on a top-left to bottom-right diagonal.',0);
INSERT INTO "cards" VALUES (1146,1,'What must at least be true about a matrix for it to have an inverse?','It must be square.',0);
INSERT INTO "cards" VALUES (1147,1,'What does it mean to invert a matrix?','Multiplying it by a specific matrix so that the product is the identity matrix.',0);
INSERT INTO "cards" VALUES (1148,1,'What Python library computes the inverse of a matrix?','numpy.linalg.inv
or
numpy.linalg.pinv which can solve when the matrix is non-invertible',0);
INSERT INTO "cards" VALUES (1149,1,'What are 2 words for matrices that are invertible?','- singular
- degenerate',0);
INSERT INTO "cards" VALUES (1150,1,'If A is a matrix and Aij is the ith row, jth column, what is the traspose B?','Bji',0);
INSERT INTO "cards" VALUES (1151,1,'What is another name for quadratic?','2nd-order polynomial',0);
INSERT INTO "cards" VALUES (1152,1,'What is supervised learning?','Supervised learning is the machine learning task of inferring a function from labeled training data. The training data consist of a set of training examples. In supervised learning, each example is a pair consisting of an input object (typically a vector) and a desired output value (also called the supervisory signal).',0);
INSERT INTO "cards" VALUES (1153,1,'What is a regression problem?','One that predicts a continuously valued output. May refer specifically to the estimation of continuous response variables, as opposed to the discrete response variables used in classification.',0);
INSERT INTO "cards" VALUES (1154,1,'What is a classification problem?','The problem of identifying to which of a set of categories (sub-populations) a new observation belongs, on the basis of a training set of data containing observations (or instances) whose category membership is known.',0);
INSERT INTO "cards" VALUES (1155,1,'What is unsupervised learning?','Unsupervised learning is the machine learning task of inferring a function to describe hidden structure from unlabeled data. Since the examples given to the learner are unlabeled, there is no error or reward signal to evaluate a potential solution. This distinguishes unsupervised learning from supervised learning and reinforcement learning.',0);
INSERT INTO "cards" VALUES (1156,1,'What are the 2 types of problems that utilize supervised learning?','Regression and classification',0);
INSERT INTO "cards" VALUES (1157,1,'In machine learning, what is the symbol m used for?','the number of training examples.',0);
INSERT INTO "cards" VALUES (1158,1,'What is another term for linear regression with one variable?','Univariate linear regression',0);
INSERT INTO "cards" VALUES (1159,1,'What is gradient descent?','Gradient descent is a first-order iterative optimization algorithm. To find a local minimum of a cost function using gradient descent, one takes steps proportional to the negative of the gradient (partial derivative or tangent) of the function at the current point.',0);
INSERT INTO "cards" VALUES (1160,1,'What is it called when all training examples are used to calculate gradient descent?','batch gradient descent',0);
INSERT INTO "cards" VALUES (1161,1,'What is another term for linear regression with multiple variables?','Multivariate linear regression',0);
INSERT INTO "cards" VALUES (1162,1,'Why is feature scaling important?','Without feature scaling, it can take gradient descent much longer to find the local minimum. The function may oscillate in small movements for much longer.',0);
INSERT INTO "cards" VALUES (1163,1,'What is is good range to scale features down to?','-1 to +1, or Ng''s range: -3 to +3',0);
INSERT INTO "cards" VALUES (1164,1,'What is mean normalization?','A method of scaling a feature''s values so that they all fall within a range relative to each other.',0);
INSERT INTO "cards" VALUES (1165,1,'What is a good range for mean normalization?','-0.5 to +0.5',0);
INSERT INTO "cards" VALUES (1166,1,'How can you calculate mean normalization over a set of features?','for each x: xi = (xi - avg(x)) / (max_x - min_x)

(max_x - min_x) can be replaced with the standard deviation',0);
INSERT INTO "cards" VALUES (1167,1,'Given a sufficiently small alpha, what can you expect from gradient descent?','That it will eventually converge.',0);
INSERT INTO "cards" VALUES (1168,1,'What does Andrew Ng use to find an appropriate alpha for gradient descent?','0.001
0.003
0.01
0.03
0.1
0.3
1',0);
INSERT INTO "cards" VALUES (1169,1,'How can you get your data to fit better using higher order terms in linear regression?','You can take the data and square it, cube it, etc. 

x1 = (somevalue)^2
x7 = (somevalue)^4

This is applied to data, not the function. The function still is theta1*x1 + theta2*x2, etc',0);
INSERT INTO "cards" VALUES (1170,1,'What can affect invertibility in a matrix?','- 2 more more features are linearly dependent or redundant (size in meters and size in ft) - remove redundant features
- too few training examples (m) to features (n): m <= n  (remove some features or use regularization)',0);
INSERT INTO "cards" VALUES (1171,1,'When can we use the normal equation instead of gradient descent to minimize J(theta)?','- when we have fewer than 10,000 features
- have to ensure invertibility',0);
INSERT INTO "cards" VALUES (1172,1,'What does numpy.allclose() do?','Returns True if two arrays are element-wise equal within a tolerance.',0);
INSERT INTO "cards" VALUES (1173,1,'Is feature scaling needed when using the normal equation?','No',0);
INSERT INTO "cards" VALUES (1174,1,'What is the normal equation?','An equation that can minimize J(theta), solving for theta, instead of using gradient descent.

Also called ordinary least squares (OLS) or linear least squares, it''s a method for estimating the unknown parameters in a linear regression model, with the goal of minimizing the sum of the squares of the differences between the observed responses in the given dataset and those predicted by a linear function of a set of explanatory variables.',0);
INSERT INTO "cards" VALUES (1175,1,'What Python determines the pseudo-inverse of a matrix?','numpy.linalg.pinv',0);
INSERT INTO "cards" VALUES (1176,1,'What is treated as false in Python?','• False
• None
• [] (an empty list)
• {} (an empty dict)
• ""
• set()
• 0
• 0.0',0);
INSERT INTO "cards" VALUES (1177,1,'What is a dot product?','The dot product of two vectors is the sum of their componentwise products.
v_1 * w_1 + ... + v_n * w_n',0);
INSERT INTO "cards" VALUES (1178,1,'What is the quantile?','The number at a given percentile of the data.',0);
INSERT INTO "cards" VALUES (1179,1,'What is the mode?','Most-common value(s) in a set of data. Could have more than one if there are 2 subsets with the same number of values.',0);
INSERT INTO "cards" VALUES (1180,1,'What is dispersion?','Dispersion refers to measures of how spread out our data is. Typically they’re statistics for which values near zero signify not spread out at all and for which large values (whatever that means) signify very spread out.',0);
INSERT INTO "cards" VALUES (1181,1,'What is covariance?','The mean value of the product of the deviations of two variates from their respective means.',0);
INSERT INTO "cards" VALUES (1182,1,'What is a random variable?','A random variable is a variable whose possible values have an associated probability distribution.

A very simple random variable equals 1 if a coin flip turns up heads and 0 if the flip turns up tails. A more complicated one might measure the number of heads observed when flipping a coin 10 times or a value picked from range(10) where each number is equally likely.',0);
INSERT INTO "cards" VALUES (1183,1,'What is PCA and what is it used for?','Principal component analysis. We use it to extract one or more dimensions that capture as much of the variation in the data as possible.',0);
INSERT INTO "cards" VALUES (1184,1,'What is a model?','A specification of a mathematical (or probabilistic) relationship that exists between different variables.',0);
INSERT INTO "cards" VALUES (1185,1,'What is machine learning?','Creating and using models that are learned from data.',0);
INSERT INTO "cards" VALUES (1186,1,'What is the degree of a vertex?','The number of edges incident of the vertex, with loops counted twice.',0);
INSERT INTO "cards" VALUES (1187,1,'What is quick select?','A selection algorithm to find the kth smallest element in an unordered list. Quickselect uses the same overall approach as quicksort, choosing one element as a pivot and partitioning the data in two based on the pivot, accordingly as less than or greater than the pivot. However, instead of recursing into both sides, as in quicksort, quickselect only recurses into one side - the side with the element it is searching for. This reduces the average complexity from O(n log n) to O(n).',0);
INSERT INTO "cards" VALUES (1188,1,'What is preemption?','Preemption is the act of temporarily interrupting a task being carried out by a computer system, without requiring its cooperation, and with the intention of resuming the task at a later time. Such a change is known as a context switch.',0);
INSERT INTO "cards" VALUES (1189,1,'What is an inverted index?','An index data structure storing a mapping from content, such as words or numbers, to its locations in a database file, or in a document or a set of documents (named in contrast to a Forward Index, which maps from documents to content). The purpose of an inverted index is to allow fast full text searches, at a cost of increased processing when a document is added to the database.',0);
INSERT INTO "cards" VALUES (1190,1,'What is set partition?','A partitioning of elements of some universal set into a collection of disjointed subsets. Thus, each element must be in exactly one subset.',0);
INSERT INTO "cards" VALUES (1191,1,'What is a maximum spanning tree?','A spanning tree of a weighted graph having maximum weight. It can be computed by negating the edges and running either Prim''s or Kruskal''s algorithms.',0);
INSERT INTO "cards" VALUES (1192,1,'What is a minimum product spanning tree and when would you use it?','The cost of a tree is the product of all the edge weights in the tree, instead of the sum of the weights. Since log(a*b) = log(a) + log(b), the minimum spanning tree on a graph whose edge weights are replaced with their logarithms gives the minimum product spanning tree on the original graph.
You would use it to minimize the product.',0);
INSERT INTO "cards" VALUES (1193,1,'What is a rolling hash?','A rolling hash (also known as a rolling checksum) is a hash function where the input is hashed in a window that moves through the input.

One of the main applications is the Rabin-Karp string search algorithm, which uses the rolling hash.',0);
INSERT INTO "cards" VALUES (1195,1,'What is the Rabin-Karp algorithm?','Compute hash codes of each substring whose length is the length of s, such as a function with the property that the hash code of a string is an additive function of each individual character. Get the hash code of a sliding window of characters and compare if the hash matches.',0);
INSERT INTO "cards" VALUES (1196,1,'What is sharding?','Sharding is a type of database partitioning that separates very large databases the into smaller, faster, more easily managed parts called data shards.',0);
INSERT INTO "cards" VALUES (1197,1,'What is von Neumann Architecture?','A model for modern computer organization created by John von Neumann, that had two main features:
1) Both data & instructions are stored in the same place
2) Units that store information are different from units that process information',0);
INSERT INTO "cards" VALUES (1198,1,'What is the fetch-execute cycle?','A 4 part system that describes how actions are performed in the CPU. There are 4 parts to this cycle:
1) Fetch instructions
2) Decode instructions
3) Get data if needed
4) Execute the instructions',0);
INSERT INTO "cards" VALUES (1199,1,'What does a Control Unit (CU) do?','Controls, organizes and deals with all the process and instruction the CPU receives. It is also in charge of the Fetch-Execute Cycle. Has two special purpose registers: the Instruction Register and the Program Counter.',0);
INSERT INTO "cards" VALUES (1200,1,'What is the time complexity of breadth-first search?','O(m + n) 
uses queue',0);
INSERT INTO "cards" VALUES (1201,1,'What is the time complexity of breadth-first search?','O(m + n) 
uses stack',0);
INSERT INTO "cards" VALUES (1202,1,'What is the time and space complexity of minimum edit distance using dynamic programming?','Time O(mn)
Space O(mn)',0);
INSERT INTO "cards" VALUES (1203,1,'What is the time complexity of Floyd-Warshall?','Theta(n^3)',0);
INSERT INTO "cards" VALUES (1204,1,'What is the log of n! ?','n log n',0);
INSERT INTO "cards" VALUES (1205,1,'What is the time and space complexity of Bellman-Ford?','Time : O (|V| |E|) or Theta(n^3) 
Space: O (|V|)',0);
INSERT INTO "cards" VALUES (1206,1,'What is the Bellman–Ford algorithm?','An algorithm that computes shortest paths from a single source vertex to all of the other vertices in a weighted digraph. It is slower than Dijkstra''s algorithm for the same problem, but more versatile, as it is capable of handling graphs in which some of the edge weights are negative numbers.',0);
INSERT INTO "cards" VALUES (1207,1,'What is a Hamiltonian cycle?','Given an undirected graph G = (V, E), does there exist a simple
cycle Γ that contains every node in V ?
Certificate is a permutation of the n nodes, contain each node in v exactly once, there is an edge btw each pair of adj nodes in the permutation.',0);
INSERT INTO "cards" VALUES (1208,1,'What is the set cover problem?','Given a set U of elements, a collection S1, S2, ..., Sm of subsets of
U, and an integer k, does there exist a collection of ≤ k of these sets whose union is equal to U ?',0);
INSERT INTO "cards" VALUES (1209,1,'What is the time and space complexity of heapsort?','O(n lg n) time
O(1) space',0);
INSERT INTO "cards" VALUES (1210,1,'What is the time and space complexity of merge sort?','O(n lg n) time
O(n) space',0);
INSERT INTO "cards" VALUES (1211,1,'How would you divide up a data set for training and testing?','Split your data set, so that two-thirds of it is used to train the model, after which we test/measure the model’s performance on the remaining third.',0);
INSERT INTO "cards" VALUES (1212,1,'How would you split up a data set in order to choose from multiple models?','In such a situation, you should split the data into three parts: a training set for building models, a validation set for choosing among trained models (called the cross-validation set), and a test set for judging the final model.',0);
INSERT INTO "cards" VALUES (1213,1,'What is a Type 1 error?','A false positive',0);
INSERT INTO "cards" VALUES (1214,1,'What is a Type 2 error?','A false negative',0);
INSERT INTO "cards" VALUES (1215,1,'In statistics, how would you calculate precision?','true_pos / (true_pos + false_pos)',0);
INSERT INTO "cards" VALUES (1216,1,'In statistics, how would you calculate recall?','true_pos / (true_pos + false_neg)',0);
INSERT INTO "cards" VALUES (1217,1,'In statistics, what does precision measure?','Precision measures how accurate our positive predictions are.',0);
INSERT INTO "cards" VALUES (1218,1,'In statistics, what does recall measure?','Recall measures what fraction of the positives our model identified.',0);
INSERT INTO "cards" VALUES (1219,1,'How would you calculate the F1 score?','2 * precision * recall / (precision + recall)',0);
INSERT INTO "cards" VALUES (1220,1,'What is another name for the F1 score?','the harmonic mean of precision and recall',0);
INSERT INTO "cards" VALUES (1221,1,'What is the trade-off between precision and recall?','A model that predicts “yes” when it’s even a little bit confident will probably have a high recall but a low precision; a model that predicts “yes” only when it’s extremely confident is likely to have a low recall and a high precision.

Alternatively, you can think of this as a trade-off between false positives and false negatives. Saying “yes” too often (high recall) will give you lots of false positives; saying “no” too often will give you lots of false negatives (high precision).',0);
INSERT INTO "cards" VALUES (1222,1,'High bias and low variance typically correspond to _______.','underfitting',0);
INSERT INTO "cards" VALUES (1223,1,'Low bias but very high variance typically correspond to _______.','overfitting',0);
INSERT INTO "cards" VALUES (1224,1,'What can you do when your model has high bias (which means it performs poorly even on your training data)?','One thing to try is adding more features.',0);
INSERT INTO "cards" VALUES (1225,1,'What can you do if your model suffers from overfitting due to high variance?','You can remove features. Another solution is to obtain more training examples (if you can).
Or use regularization.',0);
INSERT INTO "cards" VALUES (1226,1,'What does BFGS stand for?','Broyden–Fletcher–Goldfarb–Shanno algorithm',0);
INSERT INTO "cards" VALUES (1227,1,'What is L-BFGS?','Limited-memory BFGS (L-BFGS or LM-BFGS) is an optimization algorithm in the family of quasi-Newton methods that approximates the Broyden–Fletcher–Goldfarb–Shanno (BFGS) algorithm using a limited amount of computer memory. It is a popular algorithm for parameter estimation in machine learning.',0);
INSERT INTO "cards" VALUES (1228,1,'What are some alternative algorithms that can optimize for a logistic regression problem?','- conjugate gradient
- BGFS
- L-BGFS',0);
INSERT INTO "cards" VALUES (1229,1,'What makes neural networks superior over regression or classification?','Each hidden layer learns its own features instead of being given features.',0);
INSERT INTO "cards" VALUES (1230,1,'How should you initialize Theta for a neural network?','Initialize as a matrix of random reals between 0 and 1. Constrain within a range of +/- epsilon using Theta * 2*epsilon - epsilon.',0);
INSERT INTO "cards" VALUES (1231,1,'What are the number of neurons (units) at the input layer of a neural network?','The number of features.',0);
INSERT INTO "cards" VALUES (1232,1,'What are the number of neurons (units) at the output layer of a neural network performing classification?','The number of classes you are classifying.',0);
INSERT INTO "cards" VALUES (1233,1,'How many hidden layers should there be in a neural network?','Start with 1 as a default, and if more than one, have the same number of units at each layer. The more the better. The number of units in each hidden layer should be more than, or a multiple of, the input units.',0);
INSERT INTO "cards" VALUES (1234,1,'Machine learning: What tends to happen with the training error in a linear model as the degree of polynomial increases?','The error decreases, but too high a degree of polynomial will cause overfitting.',0);
INSERT INTO "cards" VALUES (1235,1,'Machine learning: What tends to happen with the cross-validation error in a linear model as the degree of polynomial increases?','It starts high (high bias) and decreases, reaching a minimum, and then increases (high variance).',0);
INSERT INTO "cards" VALUES (1236,1,'What command on the terminal will execute the previously run command?','!!',0);
INSERT INTO "cards" VALUES (1237,1,'What alias for ls -alF is included in Ubuntu''s .bashrc?','ll',0);
INSERT INTO "cards" VALUES (1238,1,'How can you view your command line history?','history',0);
INSERT INTO "cards" VALUES (1239,1,'What command line tool allows you to search running processes by name?','pgrep',0);
INSERT INTO "cards" VALUES (1240,1,'What command line tool allows you to find and kill running processes by name?','pkill
killall',0);
INSERT INTO "cards" VALUES (1241,1,'What command line tool allows you to get the IP address from a domain name?','dig',0);
INSERT INTO "cards" VALUES (1242,1,'What command line tool allows you to see the internet connections between you and a given server IP or domain name?','traceroute',0);
INSERT INTO "cards" VALUES (1243,1,'What command line command allows you to display bandwidth usage on an interface by host?','iftop -p -n',0);
INSERT INTO "cards" VALUES (1244,1,'On the command line, how can you list all files beginning with a or f?','ls [af]*',0);
INSERT INTO "cards" VALUES (1245,1,'How can you tell what a given command line command is an alias for?','type [command]',0);
INSERT INTO "cards" VALUES (1246,1,'How can you create an alias for a command or set of commands?','alias wowza=''command 1; command 2; command 3''

To preserve it, add it to ~/.bashrc',0);
INSERT INTO "cards" VALUES (1247,1,'How can you redirect errors form a command to a file?','somecommand 2> errorfile.txt',0);
INSERT INTO "cards" VALUES (1248,1,'How can you redirect stdout and errors from a command to a file?','somecommand > somefile.txt 2>&1

OR:

somecommand &> somefile.txt',0);
INSERT INTO "cards" VALUES (1249,1,'How can you throw away errors from a command?','somecommand 2> /dev/null',0);
INSERT INTO "cards" VALUES (1250,1,'What command can you use with pipes to save to a file but continue piping to the next command?','somecommand | tee file.txt | morecommand',0);
INSERT INTO "cards" VALUES (1251,1,'How can you make multiple directories at once from the command line?','mkdir {2009..2016}',0);
INSERT INTO "cards" VALUES (1252,1,'How can you get a list of environment variables from the command line?','printenv',0);
INSERT INTO "cards" VALUES (1253,1,'What command can you use when your terminal is messed up by binary output?','reset',0);
INSERT INTO "cards" VALUES (1254,1,'How can you find out your computer''s IP address from the command line?','curl ifconfig.me',0);
INSERT INTO "cards" VALUES (1255,1,'How can you get quick access to an ASCII table from the command line?','man ascii',0);
INSERT INTO "cards" VALUES (1256,1,'How do you show only repeated lines using uniq?','uniq -d',0);
INSERT INTO "cards" VALUES (1257,1,'What does sed stand for and what does it do?','Stream editor. It does many things but is mainly used for search and replace.',0);
INSERT INTO "cards" VALUES (1258,1,'Is there much difference between grep, egrep, and grep -P?','Yes, grep doesn''t support fancy regex.
egrep does extended
grep -P does perl-style but that''s pretty close to egrep - can''t see a difference',0);
INSERT INTO "cards" VALUES (1259,1,'What can you use as a delimiter in sed?','/, :, |, _ are all ok',0);
INSERT INTO "cards" VALUES (1260,1,'What flag do you use with sed to turn on extended regular expressions?','sed -r',0);
INSERT INTO "cards" VALUES (1261,1,'What are the 4 parts of compiling a C program?','- preprocessor
- compiler - outputs assembly
- assembler - outputs machine/object code
- linked - links in dependent object files',0);
INSERT INTO "cards" VALUES (1262,1,'What is the grep flag for line numbers?','-n',0);
INSERT INTO "cards" VALUES (1263,1,'What is the grep flag for showing matched portion only?','-o',0);
INSERT INTO "cards" VALUES (1264,1,'What command can you use to format in tab-stopped columns?','column -t',0);
INSERT INTO "cards" VALUES (1265,1,'How can you print the 1st, 2nd, and 4th columns in the /etc/passwd file that contain the word home?','awk -F: ''/home/ {print $1, $2, $4}'' /etc/passwd',0);
INSERT INTO "cards" VALUES (1266,1,'How can you print the 1st and 2nd column of a file only when the second column contains the word foo?','awk ''{ if($2 ~ /foo/) print $1,$2}'' somefile',0);
INSERT INTO "cards" VALUES (1267,1,'What is strace?','strace is a diagnostic, debugging and instructional userspace utility for Linux. It is used to monitor interactions between processes and the Linux kernel, which include system calls, signal deliveries, and changes of process state. The operation of strace is made possible by the kernel feature known as ptrace.',0);
INSERT INTO "cards" VALUES (1268,1,'What is tcpdump?','tcpdump is the premier network analysis tool for information security professionals. Having a solid grasp of this über-powerful application is mandatory for anyone desiring a thorough understanding of TCP/IP.',0);
INSERT INTO "cards" VALUES (1269,1,'What Linux command randomizes the lines of its input?','shuf',0);
INSERT INTO "cards" VALUES (1270,1,'In Linux, how can you search a set of files of phone numbers, which are badly formatted, and output the numbers, using regular phone number formatting and no blank lines?','cat numbers-* | sed ''s/[() -]//g'' | grep -P ''^\d{10}$'' | sed -r ''s/([0-9]{3})([0-9]{3})(.*)/(\1) \2-\3/''',0);
INSERT INTO "cards" VALUES (1271,1,'How can we avoid deadlock?','We can prevent deadlock by assigning an order to locks and require that the locks be acquired in that order. However, this approach is not often used in practice.',0);
INSERT INTO "cards" VALUES (1275,1,'How can you tell if 2 rectangles do not overlap?','The intersection of R1 and R2 will be a rectangle R3 whose bottom-left corner is at (max(x1, x3), max(y1, y3)) and top-right corner at (min(x2, x4), min(y2, y4)). If max(x1, x3) > min(x2, x4) or max(y1, y3) > min(y2, y4) then R3 does not exist, ie R1 and R2 do not intersect.',0);
INSERT INTO "cards" VALUES (1278,1,'What happens to a class when you add __slots__?','Space is saved because __dict__ is not created for each instance. __slots__ reserves space for the declared variables and prevents the automatic creation of __dict__ and __weakref__ for each instance.
If weak reference support is needed, then add ''__weakref__'' to the sequence of strings in the __slots__ declaration.',0);
INSERT INTO "cards" VALUES (1279,1,'What happens when inheriting from a class without __slots__?','When inheriting from a class without __slots__, the __dict__ attribute of that class will always be accessible, so a __slots__ definition in the subclass is meaningless.',0);
INSERT INTO "cards" VALUES (1280,1,'If you use __slots__ on a class, what happens in subclasses?','The action of a __slots__ declaration is limited to the class where it is defined. As a result, subclasses will have a __dict__ unless they also define __slots__ (which must only contain names of any additional slots).',0);
INSERT INTO "cards" VALUES (1281,1,'How can you make a weak reference in Python?','from weakref import ref

r = ref(some_instance)',0);
INSERT INTO "cards" VALUES (1282,1,'What 4 things should you check when given a debugging problem?','- is the input valid and correct?
- check that each line is correct and in the right order
- check that the output is correct
- check for common errors, and special cases for and algorithm or data structure',0);
INSERT INTO "cards" VALUES (1285,1,'What determines the height of a tree?','The height of a tree equals the height of its tallest subtree plus one.
Use 1 + max(subtree1, subtree2)',0);
INSERT INTO "cards" VALUES (1287,1,'What is Timsort?','A hybrid stable sorting algorithm, derived from merge sort and insertion sort, designed to perform well on many kinds of real-world data.
The algorithm finds subsequences of the data that are already ordered, and uses that knowledge to sort the remainder more efficiently. This is done by merging an identified subsequence, called a run, with existing runs until certain criteria are fulfilled. Timsort has been Python''s standard sorting algorithm since version 2.3.',0);
INSERT INTO "cards" VALUES (1288,1,'What is concurrency?','Running tasks at almost the same time in an unspecified order. This is achieved through context switches by the operating system.',0);
INSERT INTO "cards" VALUES (1289,1,'What is a mutex?','A mutually exclusive access to a resource. It''s a special case of a semaphore with a maximum concurrency of 1.',0);
INSERT INTO "cards" VALUES (1290,1,'What is busy waiting?','Busy-waiting, busy-looping or spinning is a technique in which a process repeatedly checks to see if a condition is true, such as whether keyboard input or a lock is available.',0);
INSERT INTO "cards" VALUES (1291,1,'How can you avoid busy waiting?','Use Semaphore (Python, Java)
Use Event (Python) or CountDownLatch (Java)
sleep(0)',0);
INSERT INTO "cards" VALUES (1292,1,'How can you reverse the words in a string with Python? Treat punctuation as part of the words.','my_string.split()[::-1]',0);
INSERT INTO "cards" VALUES (1295,1,'How can you convert a list to a string in Python?','''''.join(thelist)',0);
INSERT INTO "cards" VALUES (1301,1,'Best case time complexity for selection sort?','O(n^2)',0);
INSERT INTO "cards" VALUES (1302,1,'Average case time complexity for selection sort?','O(n^2)',0);
INSERT INTO "cards" VALUES (1303,1,'Worst case time complexity for selection sort?','O(n^2)',0);
INSERT INTO "cards" VALUES (1304,1,'Best case time complexity for insertion sort?','O(n) when data is already sorted or almost sorted.',0);
INSERT INTO "cards" VALUES (1305,1,'Average case time complexity for insertion sort?','O(n^2)',0);
INSERT INTO "cards" VALUES (1306,1,'Worst case time complexity for insertion sort?','O(n^2)',0);
INSERT INTO "cards" VALUES (1307,1,'Worst case time complexity for quicksort?','O(n^2) due to pathological pivot selection.',0);
INSERT INTO "cards" VALUES (1308,1,'Average case time complexity for quicksort?','O(n log n)',0);
INSERT INTO "cards" VALUES (1309,1,'Best case time complexity for quicksort?','O(n log n)',0);
INSERT INTO "cards" VALUES (1310,1,'Best case time complexity for merge sort?','O(n log n)',0);
INSERT INTO "cards" VALUES (1311,1,'Worst case time complexity for quicksort?','O(n log n)',0);
INSERT INTO "cards" VALUES (1312,1,'Average case time complexity for quicksort?','O(n log n)',0);
INSERT INTO "cards" VALUES (1313,1,'What should you do when you have one or more lists that are sorted and you need to combine them into a sorted list?','Merge step of merge sort.',0);
INSERT INTO "cards" VALUES (1314,1,'What sort can you use when you have data you want to sort and the comparisons of keys are cheap but moving the data is expensive?','Selection sort guarantees no more than n - 1 swaps.',0);
INSERT INTO "cards" VALUES (1315,1,'What kind of sort can you use when the data is guaranteed to have no duplicates and needs to be done in-place?','An unstable, in-place sort like quicksort.',0);
INSERT INTO "cards" VALUES (1316,1,'What can you use to merge an unsorted list into an already sorted list?','If the new list is short, insertion sort would be O(n).
If both lists are long, sort the short list and then do a merge.',0);
INSERT INTO "cards" VALUES (1317,1,'How can you sort a list of Employee objects by surname then given_name, case-sensitive?','sorted_firstnames = sorted(directory, key=lambda emp: emp.given_name.lower())
pprint(sorted(sorted_firstnames, key=lambda emp: emp.surname.lower()))',0);
INSERT INTO "cards" VALUES (1318,1,'How can you sort a list of Employee objects by surname then given_name, but case-insensitive?','import operator

pprint(sorted(directory, key=operator.attrgetter(''surname'', ''given_name'')))',0);
INSERT INTO "cards" VALUES (1319,1,'What should you know about the cmp argument in sort/sorted?','In general, the key and reverse conversion processes are much faster than specifying an equivalent cmp function. This is because cmp is called multiple times for each list element while key and reverse touch each element only once. 

The cmp argument was removed in 3.0.

Use functools.cmp_to_key() to convert an old-style cmp function to a key function.',0);
INSERT INTO "cards" VALUES (1320,1,'How can you get a stable sort using an unstable sorting algorithm?','Add a sequence number to the data elements, like adding a new sequence property to the objects to be sorted.

In your comparator, if the compared keys are equal (difference is 0), break ties by returning e1.sequence - e2.sequence',0);
INSERT INTO "cards" VALUES (1322,1,'What is a shortcut for calculating the Hamming distance?','The Hamming distance of two words A and B can be calculated as the Hamming weight of A xor B.',0);
INSERT INTO "cards" VALUES (1323,1,'What are green threads?','- implemented by a virtual machine
- faster but cannot take advantage of multiple cores
- going away due to prevalence of multicore machines',0);
INSERT INTO "cards" VALUES (1324,1,'What is preemptive threading?','The OS swaps threads based on timing or other interrupts.',0);
INSERT INTO "cards" VALUES (1325,1,'What is the thread cooperative model?','Requires a thread to take some action (sleep, yield) and let other threads run.',0);
INSERT INTO "cards" VALUES (1326,1,'How can an event-driven handler manage a long-running process, like waiting for a network response?','Spawn a thread to call the network resource. Then queue the result once complete so the parent process (or main event thread) can respond and access the data without polling.',0);
INSERT INTO "cards" VALUES (1327,1,'What is a monitor?','A monitor is a synchronization construct that allows threads to have both mutual exclusion and the ability to wait (block) for a certain condition to become true. Monitors also have a mechanism for signalling other threads that their condition has been met. A monitor consists of a mutex (lock) object and condition variables. Monitors provide a mechanism for threads to temporarily give up exclusive access in order to wait for some condition to be met, before regaining exclusive access and resuming their task.',0);
INSERT INTO "cards" VALUES (1328,1,'What is a spinlock?','A form of busy waiting, that waits in a loop and repeatedly checks if a lock is available.',0);
INSERT INTO "cards" VALUES (1329,1,'How do you solve the Dining Philosophers problem?','- critical section is picking up one fork, second fork, and then eating then putting down forks.
- one philosopher should pick up fork 2 then fork 1. if (i == 0) swap fork 1 and 2
- one will get to eat more, the one to left of 0
- to even it out, just change order in which each picks up: if (i % 2 == 0) swap fork 1 and 2',0);
INSERT INTO "cards" VALUES (1332,1,'How are interfaces handled in Python?','There are none.
Just use duck typing.
Use multiple inheritance: make an ABC and inherit',0);
INSERT INTO "cards" VALUES (1333,1,'What should you do to make a Singleton thread-safe?','It''s best to make getInstance() thread-safe, or make generating the instance thread-safe so getInstance does not suffer from thread-safety overhead each time it''s called.',0);
INSERT INTO "cards" VALUES (1334,1,'What does ACID stand for?','Atomicity
Consistency
Isolation
Durability',0);
INSERT INTO "cards" VALUES (1335,1,'What are some differences between C++ and Java?','C++:
- programmer control with low-level access
- backwards compatibility with C
- multiple inheritance
- pass by value

Java:
- security
- portability
- runs in a VM, compiles to bytecode
- JIT speeds it up considerably
- garbage collection
- single inheritance (multiple inheritance simulated by using interfaces)
- pass by reference',0);
INSERT INTO "cards" VALUES (1336,1,'What is the difference between a pointer and a reference?','- must dereference a pointer: foo->prop
- pointer can be null, a reference cannot
- deal with reference as if it was declared in the same scope: foo.prop',0);
INSERT INTO "cards" VALUES (1337,1,'Difference between inline functions and macros?','Each reduces overhead of function calls at the expense of program size

Macro:
- text replacement by preprocessor
- single line only
- unexpected side effects if not careful

Inline:
- replaces the call to an inline function with that function''s body
- ok for multiple lines
- increases size, cuts down on overhead of repetitive function calls',0);
INSERT INTO "cards" VALUES (1338,1,'What are the pros and cons of garbage collection?','Good:
- no dangling pointers
- no double allocation
- no memory leaks

Bad:
- can over-allocate memory
- stop and copy can cause pauses at inopportune times
- slower performance
- rapid development
- circular references',0);
INSERT INTO "cards" VALUES (1339,1,'What is a tracing garbage collector?','Mark and sweep: pauses execution in order to mark all objects referenced by any thread of the program.',0);
INSERT INTO "cards" VALUES (1340,1,'What is tri-color marking?','Because of these performance problems, most modern tracing (mark and sweep) garbage collectors implement some variant of the tri-color marking abstraction. This avoids the execution pause common to mark and sweep.

Three sets are created – white, black and gray:

- The white set, or condemned set, is the set of objects that are candidates for having their memory recycled.
- The black set is the set of objects that can be shown to have no outgoing references to objects in the white set, and to be reachable from the roots. Objects in the black set are not candidates for collection.
- The gray set contains all objects reachable from the roots but yet to be scanned for references to "white" objects. Since they are known to be reachable from the roots, they cannot be garbage-collected and will end up in the black set after being scanned.',0);
INSERT INTO "cards" VALUES (1341,1,'What are the difference between 32-bit and 64-bit applications?','32-bit:
- 32-bit memory addresses and registers

64-bit:
- 64-bit memory addressed and registers
- requires 64-bit processor, 64-bit OS
- can run 32-bit programs in compatibility mode
- pointers require 64 bits so they take more space
- fewer items fit in cache
- x86-64 in 64-bit has an additional 8 additional general purpose registers',0);
INSERT INTO "cards" VALUES (1342,1,'How can you transpose a matrix in a matrix?','Label each row and column with row and column number. Sort by column, then by row.',0);
INSERT INTO "cards" VALUES (1343,1,'How can you rotate an array of size n by k positions?','Reverse 0 to k - 1, reverse k to end. Then reverse it all.',0);
INSERT INTO "cards" VALUES (1344,1,'What is memory-mapping?','Memory-mapping a file uses the operating system virtual memory system to access the data on the file system directly, instead of using normal I/O functions. Memory-mapping typically improves I/O performance because it does not involve a separate system call for each access and it does not require copying data between buffers – the memory is accessed directly by both the kernel and the user application.',0);
INSERT INTO "cards" VALUES (1345,1,'What can you use to compute all-pairs shortest-paths?','scipy.sparse.csgraph.floyd_warshall',0);
INSERT INTO "cards" VALUES (1346,1,'How do you represent infinity in Python?','float(''Inf'')',0);
INSERT INTO "cards" VALUES (1347,1,'How do you represent negative infinity in Python?','-float(''Inf'')',0);
INSERT INTO "cards" VALUES (1348,1,'What is bcrypt?','bcrypt is a password hashing function based on the Blowfish cipher. Besides incorporating a salt to protect against rainbow table attacks, bcrypt is an adaptive function: over time, the iteration count can be increased to make it slower, so it remains resistant to brute-force search attacks even with increasing computation power.',0);
INSERT INTO "cards" VALUES (1349,1,'What is the relationship to false positives/negatives with a Bloom filter?','False negatives are not possible.
False positives are possible.',0);
INSERT INTO "cards" VALUES (1350,1,'What algorithm is used for locality-sensitive hashing?','simhash',0);
INSERT INTO "cards" VALUES (1351,1,'What are 2 examples of probabilistic data structures?','Bloom filter
HyperLogLog',0);
INSERT INTO "cards" VALUES (1352,1,'What can you use to solve linear programming problems in Python?','numpy.linalg.solve()',0);
INSERT INTO "cards" VALUES (1353,1,'What are 3 properties of good hashing functions?','- minimize collisions
- produces a good distribution
- hashes consistently',0);
INSERT INTO "cards" VALUES (1354,1,'What are 3 good uses of hash tables?','- quick lookups, inserts, and deletes
- removing duplicates
- caching',0);
INSERT INTO "cards" VALUES (1355,1,'If this exists, you can''t use Dijkstra.','A negative-weight edge.',0);
INSERT INTO "cards" VALUES (1356,1,'How can you solve a set cover problem?','- pick largest set that covers most of the uncovered spots
- add it to covering set
- then next largest, even if overlap

O(n^2)
greedy but it works',0);
INSERT INTO "cards" VALUES (1357,1,'When using k-nearest neighbors, what k should be used for size of points n?','sqrt(n)',0);
INSERT INTO "cards" VALUES (1358,1,'What is a suffix array?','A suffix array is a sorted array of all suffixes of a string.

The suffix array of a string can be used as an index to quickly locate every occurrence of a substring pattern P within the string S. Finding every occurrence of the pattern is equivalent to finding every suffix that begins with the substring. Thanks to the lexicographical ordering, these suffixes will be grouped together in the suffix array and can be found efficiently with two binary searches. The first search locates the starting position of the interval, and the second one determines the end position.',0);
INSERT INTO "cards" VALUES (1359,1,'Is knapsack problem NP-complete?','The decision problem form of the knapsack problem (Can a value of at least V be achieved without exceeding the weight W?) is NP-complete, thus there is no known algorithm both correct and fast (polynomial-time) on all cases.

There is a pseudo-polynomial time algorithm using dynamic programming.',0);
INSERT INTO "cards" VALUES (1360,1,'What is a hard problem that is not in NP?','Two-player games such as chess provide examples of problems that are not in NP. 
The only way to check if a move would eventually win the game is to construct the full tree of all your possible moves with his irrefutable replies and demonstrate that you, in fact, cannot win from the current position. This full tree will have a number of nodes exponential in its height, which is the number of moves before you lose playing your most spirited possible defense.

This tree cannot be constructed and analyzed in polynomial time, so the problem is not in NP.',0);
INSERT INTO "cards" VALUES (1361,1,'Maintaining a sorted array is good for what type of operations?','A sorted array will be appropriate if and only if there are not many insertions or deletions.',0);
INSERT INTO "cards" VALUES (1362,1,'Why are Fibonacci heaps special?','Fibonacci heaps support insert and decrease-key operations in constant amortized time, with O(lg n) amortized time extract-min and delete operations.',0);
INSERT INTO "cards" VALUES (1363,1,'What makes van Emde Boas trees special?','Van Emde Boas priority queues support O(lg lg n) insertion, deletion, search, max, and min operations where each key is an element from 1 to n.',0);
INSERT INTO "cards" VALUES (1364,1,'Why is an adjacency list for the best choice for a planar graph?','Planar graphs are always sparse, since any n-vertex planar graph can have at most 3n − 6 edges. Thus they should be represented using adjacency lists.',0);
INSERT INTO "cards" VALUES (1365,1,'What can you do to save space in an adjacency  matrix?','Pack all of the ones and zeros into a series of bit vectors.',0);
INSERT INTO "cards" VALUES (1366,1,'Can you use when your graph is extremely large?','If your graph is extremely large, it may become necessary to switch to a hierarcchical representation, where the vertices are clustered into subgraphs that are compressed into single vertices. Two approaches exist to construct such a hierar-chical decomposition. The first breaks the graph into components in a natural or application-specific way. For example, a graph of roads and cities suggests a natural decomposition—partition the map into districts, towns, counties, and states.',0);
INSERT INTO "cards" VALUES (1367,1,'Is bandwidth minimization NP-Complete?','Yes. It stays NP-complete even if the input graph is a tree whose maximum vertex degree is 3, which is about as strong a condition as I have seen on any problem. Thus our only options are a brute-force search and heuristics.',0);
INSERT INTO "cards" VALUES (1368,1,'Using an adjacency matrix how can you see how many paths exist between two points of length K?','Matrix multiplication has a particularly interesting interpretation. Now consider the square of this matrix, A^2 = A × A. If A^2[i, j] ≥ 1. This means that there must be a vertex k such that A[i, k] = A[k, j] = 1, so i to k to j is a path of length 2 in G. More generally, A^k[i, j] counts the number of paths of length exactly k between i and j. This count includes nonsimple paths, where vertices are repeated, such as i to k to i to j.',0);
INSERT INTO "cards" VALUES (1369,1,'What does it mean if the determinant of a matrix is zero?','It is not invertible.',0);
INSERT INTO "cards" VALUES (1370,1,'What does #P-complete mean?','#P is the class of problems solvable on a “counting” machine in polynomial time. A counting machine returns the number of distinct solutions to a problem. Counting the number of Hamiltonian cycles in a graph is a #P-complete problem that is trivially NP-hard (and presumably harder), since any count greater than zero proves that the graph is Hamiltonian. Counting problems can be #P-complete even if the corresponding decision problem can be solved in polynomial time, as shown by the permanent and perfect matchings.',0);
INSERT INTO "cards" VALUES (1371,1,'What can be said of integer programming in and NP-completeness?','NP-complete to solve integer or mixed programs to optimality. However, there are integer programming techniques that work reasonably well in practice.',0);
INSERT INTO "cards" VALUES (1372,1,'How can you convert a linear programming maximization problem into a minimization problem?','To convert a maximization problem to a minimization one, simply multiply each coefficient of the objective function by −1. The remaining problems can be solved by adding slack variables to the model. See any textbook on linear programming for details',0);
INSERT INTO "cards" VALUES (1373,1,'What is NC?','NC (Nick''s class) can be thought of as the problems that can be efficiently solved on a parallel computer. NC is a subset of P because polylogarithmic parallel computations can be simulated by polynomial-time sequential ones.',0);
INSERT INTO "cards" VALUES (1374,1,'What is P-Complete?','A decision problem is P-complete (complete for the complexity class P) if it is in P and every problem in P can be reduced to it by an appropriate reduction.',0);
INSERT INTO "cards" VALUES (1375,1,'What is the Mersenne twister?','Mersenne twister is a fast random number generator of period 2^19937 − 1.',0);
INSERT INTO "cards" VALUES (1376,1,'Why is periodicity important in random rumber generation?','The period defines how long a random number generator will generate numbers before it repeats the sequence. 
The period of a PRNG is defined thus: the maximum, over all starting states, of the length of the repetition-free prefix of the sequence. The period is bounded by the number of the states, usually measured in bits. However, since the length of the period potentially doubles with each bit of "state" added, it is easy to build PRNGs with periods long enough for many practical applications.',0);
INSERT INTO "cards" VALUES (1377,1,'What are Carmichael numbers?','Carmichael numbers are composite integers that always satisfy Fermat''s little theorem. They are pseudo-primes.',0);
INSERT INTO "cards" VALUES (1378,1,'What is a convolution?','A convolution is a mathematical operation on two functions (f and g); it produces a third function, that is typically viewed as a modified version of one of the original functions.',0);
INSERT INTO "cards" VALUES (1379,1,'What is in mathematical application of FFT?','FFT-based algorithm that multiplies two n-bit numbers in O(n lg n lg lg n) time is due to Schonhagen and Strassen.',0);
INSERT INTO "cards" VALUES (1380,1,'How can you sort extremely large amount of data on disk with limited memory?','The simplest approach to external sorting loads the data into a B-tree and then does an in-order traversal of the tree to read the keys off in sorted order. Real high-performance sorting algorithms are based on multiway-mergesort. Files containing portions of the data are sorted into runs using a fast internal sort, and then files with these sorted runs are merged in stages using 2- or k-way merging. Complicated merging patterns and buffer management based on the properties of the external storage device can be used to optimize performance.',0);
INSERT INTO "cards" VALUES (1381,1,'How can you optimize quicksort?','• Use randomization – randomly permute the keys before sorting.
• Median of three – For your pivot element, use the median of the first, last, and middle elements of the array. 
• Leave small subarrays for insertion sort – Terminating the quicksort recursion and switching to insertion sort makes sense when the subarrays get small, say fewer than 20 elements.
• Do the smaller partition first – Assuming that your compiler is smart enough to remove tail recursion.',0);
INSERT INTO "cards" VALUES (1382,1,'What is a radix?','The base, or radix, is the value that we raise to successive powers for each digit to the left of the radix point (note that the term decimal point only applies to decimal numbers).',0);
INSERT INTO "cards" VALUES (1383,1,'16 * 2?','32',0);
INSERT INTO "cards" VALUES (1384,1,'16 * 3?','48',0);
INSERT INTO "cards" VALUES (1385,1,'16 * 4?','64',0);
INSERT INTO "cards" VALUES (1386,1,'16 * 5?','80',0);
INSERT INTO "cards" VALUES (1387,1,'16 * 6?','96',0);
INSERT INTO "cards" VALUES (1388,1,'16 * 7?','112',0);
INSERT INTO "cards" VALUES (1389,1,'16 * 8?','128',0);
INSERT INTO "cards" VALUES (1390,1,'16 * 9?','144',0);
INSERT INTO "cards" VALUES (1391,1,'16 * 10?','160',0);
INSERT INTO "cards" VALUES (1392,1,'16 * 16?','256',0);
INSERT INTO "cards" VALUES (1393,1,'16 * 11?','176',0);
INSERT INTO "cards" VALUES (1394,1,'16 * 12?','192',0);
INSERT INTO "cards" VALUES (1395,1,'16 * 13?','208',0);
INSERT INTO "cards" VALUES (1396,1,'16 * 14?','224',0);
INSERT INTO "cards" VALUES (1397,1,'16 * 15?','240',0);
INSERT INTO "cards" VALUES (1398,1,'What is the standard Intel 80x86 word size?','16 bits',0);
INSERT INTO "cards" VALUES (1399,1,'What is a weakly connected graph?','A directed graph is weakly connected if it would be connected by ignoring the direction of edges. Thus, a weakly connected graph consists of a single piece. A directed graph is strongly connected if there is a directed path between every pair of vertices. This distinction is best made clear by considering the network of one- and two-way streets in any city. The network is strongly connected if it is possible to drive legally between every two positions. The network is weakly connected when it is possible to drive legally or illegally between every two positions. The network is disconnected if there is no possible way to drive from a to b.',0);
INSERT INTO "cards" VALUES (1400,1,'How can you tell if a graph is a tree?','Depth-first search can be used to test whether it is connected. If the graph is connected and has n − 1 edges for n vertices, it is a tree.',0);
INSERT INTO "cards" VALUES (1401,1,'What kind of graph do you have to have in order to perform a topological sort?','Only DAGs can be topologically sorted, since any directed cycle provides an inherent contradiction to a linear order of tasks.',0);
INSERT INTO "cards" VALUES (1402,1,'What is important about every DAG?','Every DAG can be topologically sorted, so there must always be at least one schedule for any reasonable precedence constraints among jobs.',0);
INSERT INTO "cards" VALUES (1403,1,'How can you topologically sort a DAG?','Ordering the vertices in terms of decreasing DFS finishing time.',0);
INSERT INTO "cards" VALUES (1404,1,'What can you say about the number of possible topological sorts on a graph?','The problem of counting the number of linear extensions (the number of ways to order a topological sort) is NP-hard.',0);
INSERT INTO "cards" VALUES (1405,1,'In removing edges in order to make a graph acyclic, is this a hard problem?','Removing the minimum number of edges in order to make a graph acyclic so that you can topological sort is NP complete.',0);
INSERT INTO "cards" VALUES (1406,1,'Which is better: Prim''s algorithm or Kruskal''s algorithm?','Prim''s algorithm runs in O(n^2), while Kruskal''s algorithm takes O(m log m) time. Thus Prim''s algorithm is faster on dense graphs, while Kruskal''s is faster on sparse graphs.',0);
INSERT INTO "cards" VALUES (1407,1,'How can you find shortest path in an undirected graph?','If your graph is unweighted, a simple breadth-first search starting from the source vertex will find the shortest path to all other vertices in linear time.',0);
INSERT INTO "cards" VALUES (1408,1,'How can you find shortest paths on a DAG?','Shortest paths in directed acyclic graphs can be found in linear time. Perform a topological sort to order the vertices such that all edges go from left to right starting from source s.',0);
INSERT INTO "cards" VALUES (1409,1,'How can you find the shortest simple cycle?','To find the shortest simple cycle, the easiest approach is to compute the lengths of the shortest paths from i to all other vertices, and then explicitly check whether there is an acceptable edge from each vertex back to i.',0);
INSERT INTO "cards" VALUES (1410,1,'How can you find the longest cycle in a graph?','Finding the longest cycle in a graph includes Hamiltonian cycle as a special case, so it is NP-complete.',0);
INSERT INTO "cards" VALUES (1411,1,'How does preprocessing affect A* times?','Goldberg, Kaplan, and Werneck describe an implementation of A∗ capable of answering point-to-point queries in one millisecond on national-scale road networks after two hours of preprocessing.',0);
INSERT INTO "cards" VALUES (1412,1,'What is transitive closure and how is it recorded?','Transitive closure can be thought of as establishing a data structure that makes it possible to solve reachability questions (can I get to x from y?) efficiently. After constructing the transitive closure, all reachability queries can be answered in constant time by simply reporting the appropriate matrix entry.',0);
INSERT INTO "cards" VALUES (1413,1,'What is transitive reduction?','Transitive reduction (also known as minimum equivalent digraph) is the inverse operation of transitive closure, namely reducing the number of edges while maintaining identical reachability properties. The transitive closure of G is identical to the transitive closure of the transitive reduction of G.',0);
INSERT INTO "cards" VALUES (1414,1,'How can you tell if an undirected graph contains a Eulerian cycle?','An undirected graph contains an Eulerian cycle iff 
(1) it is connected, and 
(2) each vertex is of even degree.',0);
INSERT INTO "cards" VALUES (1415,1,'How can you tell if an undirected graph contains an Eulerian path?','An undirected graph contains an Eulerian path iff 
(1) it is connected, and 
(2) all but two vertices are of even degree. These two vertices will be the start and end points of any path.',0);
INSERT INTO "cards" VALUES (1416,1,'How can you determine if a directed graph contains an Eulerian cycle?','A directed graph contains an Eulerian cycle iff (1) it is strongly-connected, and (2) each vertex has the same in-degree as out-degree.',0);
INSERT INTO "cards" VALUES (1417,1,'How can you tell if a directed graph contains a Eulerian path?','A directed graph contains an Eulerian path from x to y iff 
(1) it is connected, and 
(2) all other vertices have the same in-degree as out-degree, with x and y being vertices with in-degree one less and one more than their out-degrees, respectively.',0);
INSERT INTO "cards" VALUES (1418,1,'What is the importance of minimum vertex degree?','The minimum vertex degree is an upper bound for both edge and vertex connectivity, since deleting all its neighbors (or cutting the edges to all its neighbors) disconnects the graph into one big and one single-vertex component.',0);
INSERT INTO "cards" VALUES (1419,1,'What does a biconnected graph mean?','We say that G is biconnected if no single vertex deletion is sufficient to disconnect G. Any vertex that is such a weak point is called an articulation vertex. A bridge is the analogous concept for edges, meaning a single edge whose deletion disconnects the graph.',0);
INSERT INTO "cards" VALUES (1420,1,'What is the relation of maximum flow and minimum cut?','The maximum flow between vi, vj in G is exactly the weight of the smallest set of edges to disconnect vi from vj.',0);
INSERT INTO "cards" VALUES (1421,1,'What is one heuristic to draw "nice" graphs for a given graph?','As a first quick and dirty drawing, I recommend simply spacing the vertices evenly on a circle, and then drawing the edges as straight lines between vertices. Such drawings are easy to program and fast to construct. They have the substantial advantage that no two edges will obscure each other, since no three vertices will be collinear. Such artifacts can be hard to avoid as soon as you allow internal vertices into your drawing. An unexpected pleasure with circular drawings is the symmetry sometimes revealed because vertices appear in the order they were inserted into the graph. Simulated annealing can be used to permute the circular vertex order to minimize crossings or edge length, and thus significantly improve the drawing. A good, general purpose graph-drawing heuristic models the graph as a system of springs and then uses energy minimization to space the vertices. Let adjacent vertices attract each other with a force proportional to (say) the logarithm of their separation, while all nonadjacent vertices repel each other with a force proportional to their separation distance. These weights provide incentive for all edges to be as short as possible, while spreading the vertices apart. The behavior of such a system can be approximated by determining the force acting on each vertex at a particular time and then moving each vertex a small amount in the appropriate direction. After several such iterations, the system should stabilize on a reasonable drawing.',0);
INSERT INTO "cards" VALUES (1422,1,'Is finding a maximum clique NP-Complete?','Yes.',0);
INSERT INTO "cards" VALUES (1423,1,'What is the max clique size for a planar graph?','Planar graphs cannot have cliques of a size larger than four, or else they cease to be planar.',0);
INSERT INTO "cards" VALUES (1424,1,'What is branch and bound?','It usually of the form of a decision tree where each decision is represented by an edge. The leaves of this tree is the set of all possible solutions. To find the most optimized solution(i.e. one of the leaves) the following is the basis of evaluation.
The intuition is that you start from the root and calculate an upper bound if the problem asks the function to be maximized (or lower bound for function minimization in case of TSP where distance is to be minimized) for a function you want to optimize.',0);
INSERT INTO "cards" VALUES (1425,1,'What is a heuristic for solving max independent set?','The simplest reasonable heuristic is to find the lowest-degree vertex, add it to the independent set, and then delete it and all vertices adjacent to it. Repeating this process until the graph is empty gives a maximal independent set, in that it can''t be made larger by just adding vertices.',0);
INSERT INTO "cards" VALUES (1426,1,'What is a simple heuristic for vertex cover?','The simplest heuristic for vertex cover selects the vertex with highest degree, adds it to the cover, deletes all adjacent edges, and then repeats until the graph is empty. With the right data structures, this can be done in linear time, and should “usually” produce a “pretty good” cover. However, this cover might be lg n times worse than the optimal cover for certain input graphs.',0);
INSERT INTO "cards" VALUES (1427,1,'What is a heuristic for vertex cover?','A maximal matching can be constructed incrementally, by picking an arbitrary edge e in the graph, deleting any edge sharing a vertex with e, and repeating until the graph is out of edges. Taking both of the vertices for each edge in a maximal matching gives us a vertex cover.',0);
INSERT INTO "cards" VALUES (1428,1,'What is a special case of TSP on an unweighted graph?','If the graph is unweighted, or all the edges have one of two possible cost values, the problem reduces to finding a Hamiltonian cycle.',0);
INSERT INTO "cards" VALUES (1429,1,'What is a heuristic for TSP?','The heuristic starts by finding the minimum spanning tree (MST) of the sites, and then does a depth-first search of the resulting tree. In the course of DFS, we walk over each of the n − 1 edges exactly twice: once going down to discover a new vertex, and once going up when we backtrack. Now define a tour by ordering the vertices by when they were discovered. If the graph obeys the triangle inequality, the resulting tour is at most twice the length of the optimal TSP tour. In practice, it is usually better, typically 15% to 20% over optimal. Furthermore, the running time is bounded by that of computing the MST, which is only O(n lg n) in the case of points in the plane.',0);
INSERT INTO "cards" VALUES (1430,1,'What is HyperLogLog?','HyperLogLog is an algorithm for the count-distinct problem, approximating the number of distinct elements in a multiset.

The basis of the HyperLogLog algorithm is the observation that the cardinality of a multiset of uniformly distributed random numbers can be estimated by calculating the maximum number of leading zeros in the binary representation of each number in the set. If the maximum number of leading zeros observed is n, an estimate for the number of distinct elements in the set is 2^n.

In the HyperLogLog algorithm, a hash function is applied to each element in the original multiset, to obtain a multiset of uniformly distributed random numbers with the same cardinality as the original multiset. The cardinality of this randomly distributed set can then be estimated using the algorithm above.',0);
INSERT INTO "cards" VALUES (1431,1,'What is graph partitioning?','Partition the vertices into m roughly equal-sized subsets such that the total edge cost spanning the subsets is at most k.',0);
INSERT INTO "cards" VALUES (1432,1,'Is graph partition NP-complete?','A better partition criterion seeks a small cut that partitions the vertices into roughly equal-sized pieces. Unfortunately, this problem is NP-complete. Fortunately, the heuristics discussed below work well in practice.',0);
INSERT INTO "cards" VALUES (1433,1,'What is the difficulty difference between 3-coloring and 4-coloring a graph?','The famous four-color theorem states that every planar graph can be vertex colored using at most four distinct colors. Efficient algorithms for finding a four-coloring on planar graphs are known, although it is NP-complete to decide whether a given planar graph is three-colorable.',0);
INSERT INTO "cards" VALUES (1434,1,'Is determining the chromatic number of a graph NP-Complete?','Computing the chromatic number of a graph is NP-complete, so if you need an exact solution you must resort to backtracking, which can be surprisingly effective in coloring certain random graphs.',0);
INSERT INTO "cards" VALUES (1435,1,'What is Brook''s theorem?','Brook''s theorem states that the chromatic number χ(G) ≤ Δ(G) + 1, where Δ(G) is the maximum degree of a vertex of G. Equality holds only for odd-length cycles (which have chromatic number 3) and complete graphs.',0);
INSERT INTO "cards" VALUES (1436,1,'What is the edge-chromatic number?','The minimum number of colors needed to edge color a graph is called its edge-chromatic number by some and its chromatic index by others. Note that an even-length cycle can be edge-colored with 2 colors, while odd-length cycles have an edge-chromatic number of 3.',0);
INSERT INTO "cards" VALUES (1437,1,'What is Vizing''s theorem?','Vizing''s theorem states that any graph with a maximum vertex degree of Δ can be edge colored using at most Δ + 1 colors.',0);
INSERT INTO "cards" VALUES (1438,1,'What can you say about the difficulty/complexity of graph isomorphism?','No polynomial-time algorithm is known for graph isomorphism, but neither is it known to be NP-complete. Along with integer factorization, it is one of the few important algorithmic problems whose rough computational complexity is still not known. The conventional wisdom is that isomorphism is a problem that lies between P and NP-complete if P <> NP.',0);
INSERT INTO "cards" VALUES (1439,1,'How can adjacency matrices be used to compute paths?','Taking the adjacency matrix of G and raising it to the kth power gives a matrix where Gk[i, j] counts the number of (non-simple) paths from i to j.',0);
INSERT INTO "cards" VALUES (1440,1,'What does it mean to be isomorphism-complete?','A problem is said to be isomorphism-complete if it is provably as hard as isomorphism.',0);
INSERT INTO "cards" VALUES (1441,1,'What is the difficulty of minimum Steiner tree?','The general minimum Steiner tree problem is NP-hard, and remains so under a broad range of restrictions.',0);
INSERT INTO "cards" VALUES (1442,1,'What is a heuristic for finding Steiner trees?','Construct a graph modeling your input, setting the weight of edge (i, j) equal to the distance from point i to point j. Find an MST of this graph. You are guaranteed a provably good approximation for both Euclidean and rectilinear Steiner trees.',0);
INSERT INTO "cards" VALUES (1443,1,'Is Euclidean Steiner tree in NP?','Euclidean Steiner tree is not known to be in NP, because of numerical issues in representing distances.',0);
INSERT INTO "cards" VALUES (1444,1,'How can I find a good feedback edge set?','An effective linear-time heuristic constructs a vertex ordering (topological sort) and then deletes any arc going in the wrong direction. At least half the arcs must go either left-to-right or right-to-left for any vertex order, so take the smaller partition as your feedback set.',0);
INSERT INTO "cards" VALUES (1445,1,'What can be said of the relationship between convex hull and graph diameter?','The diameter of a set of points is the pair of points that lie a maximum distance apart. 
The diameter must be between two points on the convex hull.',0);
INSERT INTO "cards" VALUES (1446,1,'Triangulation - how can you partition the interior of the point set or polyhedron into triangles?','A triangulation in the plane is constructed by adding nonintersecting chords between the vertices until no more such chords can be added. The simplest such O(n lg n) algorithm first sorts the points by x-coordinate. It then inserts them from left to right as per the convex-hull algorithm, building the triangulation by adding a chord to each point newly cut off from the hull.',0);
INSERT INTO "cards" VALUES (1447,1,'What is a Voronoi diagram?','Voronoi diagrams represent the region of influence around each of a given set of sites. If these sites represent the locations of McDonald''s restaurants, the Voronoi diagram partitions space into cells around each restaurant. For each person living in a particular cell, the defining McDonald''s represents the closest place to get a Big Mac.',0);
INSERT INTO "cards" VALUES (1448,1,'How can you find the nearest neighbor of query point q from among a fixed set of points?','Finding the nearest neighbor of query point q from among a fixed set of points S is simply a matter of determining the cell in the Voronoi diagram of S that contains q.
Or use a kd-tree to divide and conquer the points.',0);
INSERT INTO "cards" VALUES (1449,1,'Suppose McDonald''s wants to open another restaurant. To minimize interference with existing McDonald''s, it should be located as far away from the closest restaurant as possible.  How can you find it?','This location is always at a vertex of the Voronoi diagram, and can be found in a linear-time search through all the Voronoi vertices.',0);
INSERT INTO "cards" VALUES (1450,1,'What is a Voronoi vertex?','A Voronoi vertex defines the center of the largest empty circle among the points.',0);
INSERT INTO "cards" VALUES (1451,1,'What is a Delaunay triangulation?','The Delaunay triangulation maximizes the minimum angle over all triangulations (avoids skinny triangles). Furthermore, it is easily constructed as the dual of the Voronoi diagram.',0);
INSERT INTO "cards" VALUES (1452,1,'What code can you use for 2D Voronoi diagrams and Delaunay triangulations?','Fortune''s Sweep2 is a widely used 2D code for Voronoi diagrams and Delaunay triangulations, written in C. This code is simple to work with if all you need is the Voronoi diagram.',0);
INSERT INTO "cards" VALUES (1453,1,'What is a popular library for convex hull as well as other 2D geometric algorithms?','Qhull is a popular low-dimensional convex-hull code, useful for from two to about eight dimensions. It is written in C and can also construct Delaunay triangulations, Voronoi vertices, furthest-site Voronoi vertices, and half-space intersections.',0);
INSERT INTO "cards" VALUES (1454,1,'What is the problem in using a high-dimension kd-tree for finding nearest neighbors?','Searches in high-dimensional spaces become hard because a sphere of radius r, representing all the points with distance ≤ r from the center, progressively fills up less volume relative to a cube as the dimensionality increases. Thus, any data structure based on partitioning points into enclosing volumes will become progressively less effective.',0);
INSERT INTO "cards" VALUES (1455,1,'What is a library for approximate nearest neighbor searching in arbitrarily high dimensions?','ANN is a C++ library for both exact and approximate nearest neighbor searching in arbitrarily high dimensions. It performs well for searches over hundreds of thousands of points in up to about 20 dimensions. It supports all lp distance norms, including Euclidean and Manhattan distance.',0);
INSERT INTO "cards" VALUES (1456,1,'What is a tool for visualizing and experimenting with nearest-neighbor and orthogonal-range queries in high-dimensional data sets?','Ranger is a tool for visualizing and experimenting with nearest-neighbor and orthogonal-range queries in high-dimensional data sets, using multidimensional search trees. Four different search data structures are supported by Ranger: naive kd-trees, median kd-trees, nonorthogonal kd-trees, and the vantage point tree.',0);
INSERT INTO "cards" VALUES (1457,1,'What turns out to be the only viable solution for high-dimensional range search?','kd-trees are likely to work just fine in the plane. In higher dimensions, they provide the only viable solution to the problem.',0);
INSERT INTO "cards" VALUES (1458,1,'Is bin-packing NP-Complete?','Even the most elementary-sounding bin-packing problems are NP-complete.',0);
INSERT INTO "cards" VALUES (1459,1,'What is the best heuristic for bin packing?','Analytical and empirical results suggest that first-fit decreasing is the best heuristic. Sort the objects in decreasing order of size, so that the biggest object is first and the smallest last. Insert each object one by one into the first bin that has room for it. If no bin has room, we must start another bin. In the case of one-dimensional bin packing, this can never require more than 22% more bins than necessary and usually does much better. First-fit decreasing has an intuitive appeal to it, for we pack the bulky objects first and hope that little objects can fill up the cracks.
First-fit decreasing is easily implemented in O(n lg n + bn) time, where b ≤ min(n, m) is the number of bins actually used. Simply do a linear sweep through the bins on each insertion. A faster O(n lg n) implementation is possible by using a binary tree to keep track of the space remaining in each bin.',0);
INSERT INTO "cards" VALUES (1460,1,'What is medial-axis transformation?','The medial-axis transformation is useful in thinning a polygon, or as is sometimes said, finding its skeleton. The goal is to extract a simple, robust representation of the shape of the polygon.

The medial-axis transform of a polygon P is simply the portion of the line-segment Voronoi diagram that lies within P. Any line-segment Voronoi diagram code thus suffices to do polygon thinning.',0);
INSERT INTO "cards" VALUES (1461,1,'What is triangulation?','Triangulation is the mother of all polygon partitioning problems, where we partition the interior of the polygon completely into triangles. Triangles are convex and have only three sides, making them the most elementary possible polygon.',0);
INSERT INTO "cards" VALUES (1462,1,'How many triangles can be made from triangulations of an n-vertex polygon?','All triangulations of an n-vertex polygon contain exactly n − 2 triangles.',0);
INSERT INTO "cards" VALUES (1463,1,'What is the Hertel-Mehlhorn heuristic for convex decomposition?','The Hertel-Mehlhorn heuristic for convex decomposition using diagonals is simple and efficient. It starts with an arbitrary triangulation of the polygon and then deletes any chord that leaves only convex pieces. A chord deletion creates a non-convex piece only if it creates an internal angle that is greater than 180 degrees.',0);
INSERT INTO "cards" VALUES (1464,1,'What is a heuristic for shape similarity of graphs?','A more powerful approach to shape similarity uses thinning to extract a tree-like skeleton for each object. This skeleton captures many aspects of the original shape. The problem now reduces to comparing the shape of two such skeletons, using such features as the topology of the tree and the lengths/slopes of the edges. This comparison can be modeled as a form of subgraph isomorphism, with edges allowed to match whenever their lengths and slopes are sufficiently similar.',0);
INSERT INTO "cards" VALUES (1465,1,'What is a Minkowski sum and what is it used for?','Minkowski sums are useful geometric operations that can fatten objects in appropriate ways. For example, a popular approach to motion planning for polygonal robots in a room with polygonal obstacles fattens each of the obstacles by taking the Minkowski sum of them with the shape of the robot. This reduces the problem to the (more easily solved) case of point robots.',0);
INSERT INTO "cards" VALUES (1466,1,'What is the difficulty of vertex cover and what is the limit of current approximation algorithms?','Set cover must be at least as hard as vertex cover, so it is also NP-complete. In fact, it is somewhat harder. Approximation algorithms do no worse than twice optimal for vertex cover, but the best approximation algorithm for set cover is Θ(lg n) times optimal.',0);
INSERT INTO "cards" VALUES (1467,1,'What is an effective heuristic of set cover?','Greedy is the most natural and effective heuristic for set cover. Begin by selecting the largest subset for the cover, and then delete all its elements from the universal set. We add the subset containing the largest number of remaining un-covered elements repeatedly until all are covered.',0);
INSERT INTO "cards" VALUES (1468,1,'What is a heuristic of set packing?','The right heuristics for set packing are greedy, and similar to those of set cover. If we seek a packing with many (few) sets, then we repeatedly select the smallest (largest) subset, delete all subsets from S that clash with it, and repeat. As usual, augmenting this approach with some exhaustive search or randomization (in the form of simulated annealing) is likely to yield better packings at the cost of additional computation.',0);
INSERT INTO "cards" VALUES (1469,1,'What does the Boyer-Moore algorithm do that saves time?','The Boyer-Moore algorithm matches the pattern against the text from right to left, and can avoid looking at large chunks of text on a mismatch. Suppose the pattern is abracadabra, and the eleventh character of the text is x. This pattern cannot match in any of the first eleven starting positions of the text, and so the next necessary position to test is the 22nd character. If we get very lucky, only n/m characters need ever be tested. The Boyer-Moore algorithm involves two sets of jump tables in the case of a mismatch: one based on pattern matched so far, the other on the text character seen in the mismatch.',0);
INSERT INTO "cards" VALUES (1470,1,'What is the performance and caveats of Boyer-Moore?','It is worth it in practice for patterns of length m > 5, unless the pattern is expected to occur many times in the text. Its worst-case performance is O(n + rm), where r is the number of occurrences of p in t.',0);
INSERT INTO "cards" VALUES (1471,1,'What is an efficient use of suffix trees/arrays?','Suppose you are building a program to repeatedly search a particular text database, such as the Bible. Since the text remains fixed, it pays to build a data structure to speed up search queries. The suffix tree and suffix array data structures are the right tools for the job.',0);
INSERT INTO "cards" VALUES (1472,1,'What is a better method for searching many texts using the same patterns?','Suppose you are building a program to screen out dirty words from a text stream. Here, the set of patterns remains stable, while the search texts are free to change. In such applications, we may need to find all occurrences of any of k different patterns where k can be quite large.

Performing a linear-time scan for each pattern yields an O(k(m + n)) algorithm. If k is large, a better solution builds a single finite automaton that recognizes all of these patterns and returns to the appropriate start state on any character mismatch. The Aho-Corasick algorithm builds such an automaton in linear time. Space savings can be achieved by optimizing the pattern recognition automaton. This approach was used in the original version of fgrep.',0);
INSERT INTO "cards" VALUES (1473,1,'What can you say about the performance of Rabin-Karp?','The Rabin-Karp algorithm uses a hash function to perform string matching in linear expected time. Its worst-case time remains quadratic, and its performance in practice appears somewhat worse than other character comparison methods.',0);
INSERT INTO "cards" VALUES (1474,1,'What can you use to take advantage of large word sizes (in registers) to do string matching?','A recent approach to string-matching exploits the fact that modern computers can do operations on (say) 64-bit words in a single gulp. This is long enough to hold eight 8-bit ASCII characters, providing motivation to design bit-parallel algorithms, which do more than one comparison with each operation.

The basic idea is quite clever. Construct a bit-mask Bα for each letter α of the alphabet, such that ith-bit Bα[i] = 1 iff the ith character of the pattern is α. Now suppose you have a match bit-vector Mj for position j in the text string, such that Mj[i] = 1 iff the first i bits of the pattern exactly match the (j − i + 1)st through jth character of the text. We can find all the bits of Mj+1 using just two operations by (1) shifting Mj one bit to the right, and then (2) doing a bitwise AND with Bα, where α is the character in position.',0);
INSERT INTO "cards" VALUES (1475,1,'How does the Burrows-Wheeler transform work and what is its performance?','A particularly interesting simplification results from applying the Burrows-Wheeler transform to the input string. This transform sorts all n cyclic shifts of the n character input, and then reports the last character of each shift. As an example, the cyclic shifts of ABAB are ABAB, BABA, ABAB, and BABA. After sorting, these become ABAB, ABAB, BABA, and BABA. Reading the last character of each of these strings yields the transform result: BBAA.

Provided the last character of the input string is unique (e.g., end-of-string), this transform is perfectly reversible to the original input! The Burrows-Wheeler string is typically 10-15% more compressible than the original text, because repeated words turn into blocks of repeated characters. Further, this transform can be computed in linear time.',0);
INSERT INTO "cards" VALUES (1476,1,'What are Huffman codes?','Huffman codes replace each alphabet symbol by a variable-length code string. Using eight bits-per-symbol to encode English text is wasteful, since certain characters (such as “e”) occur far more frequently than others (such as “q”). Huffman codes assign “e” a short code word, and “q” a longer one to compress text.',0);
INSERT INTO "cards" VALUES (1477,1,'How do Lempel-Ziv algorithms work?','Lempel-Ziv algorithms (including the popular LZW variant) compress text by building a coding table on the fly as we read the document. The coding table changes at every position in the text. A clever protocol ensures that the encoder and decoder are both always working with the exact same code table, so no information is lost.',0);
INSERT INTO "cards" VALUES (1478,1,'What can you say about the tradeoffs in compression algorithms?','There is a natural tradeoff between compression ratio and compression time. Another choice is bzip2, which uses the Burrows-Wheeler transform. It produces tighter encodings than gzip at somewhat greater cost in running time. Going to the extreme, other compression algorithms devote enormous run times to squeeze every bit out of a file.',0);
INSERT INTO "cards" VALUES (1479,1,'How can finite automata be represented in a directed graph?','Finite state machines are defined by directed graphs. Each vertex represents a state, and each character-labeled edge defines a transition from one state to another on receipt of the given alphabet symbol. Such automata can be represented using any graph data structure.',0);
INSERT INTO "cards" VALUES (1480,1,'What is a caveat and hardness of converting non-deterministic to deterministic finite automata?','Converting an NFA to a DFA might cause an exponential blowup in the number of states, which perversely might then be eliminated when minimizing the DFA. This exponential blowup makes most NFA minimization problems PSPACE-hard, which is even worse than NP-complete.',0);
INSERT INTO "cards" VALUES (1481,1,'How can you compute the longest common substring of a set of strings in linear time?','The longest common substring of a set of strings can be identified in linear time using suffix trees. The trick is to build a suffix tree containing all the strings, label each leaf with the input string it represents, and then do a depth-first traversal to identify the deepest node with descendants from each input string.',0);
INSERT INTO "cards" VALUES (1482,1,'How can you convert edit distance into common scattered subsequence?','This algorithm is a special case of the dynamic program edit-distance computation.

Let M[i, j] denote the number of characters in the longest common substring of S[1], . . . , S[i] and T [1], . . . , T [j]. When S[i] <> T[j], there is no way the last pair of characters could match, so M[i, j] = max(M[i, j − 1], M[i − 1, j]). But if S[i] = T[j], we have the option to select this character for our substring, so M[i, j] = max(M[i − 1, j − 1] + 1, M[i − 1, j], M[i, j − 1]).

This recurrence computes the length of the longest common subsequence in O(nm) time. We can reconstruct the actual common substring by walking backward from M[n, m] and establishing which characters were matched along the way.',0);
INSERT INTO "cards" VALUES (1483,1,'What is the difficulty of shortest common superstring?','Shortest common superstring is NP-complete for all reasonable classes of strings.',0);
INSERT INTO "cards" VALUES (1484,1,'What is the standard approach to approximating shortest common superstring?','The greedy heuristic provides the standard approach to approximating shortest common superstring. Identify which pair of strings have the maximum overlap. Replace them by the merged string, and repeat until only one string remains. This heuristic can actually be implemented in linear time. The seemingly most time-consuming part is in building the overlap graph. The brute-force approach to finding the maximum overlap of two length-L strings takes O(L2) for each of O(n^2) string pairs. However, faster times are possible by using suffix trees. Build a tree containing all suffixes of all strings of S. String Si overlaps with Sj iff a suffix of Si matches the prefix of Sj — an event defined by a vertex of the suffix tree. Traversing these vertices in order of distance from the root defines the appropriate merging order.',0);
INSERT INTO "cards" VALUES (1485,1,'What is the smallest addressable data item on many CPUs?','A byte is eight bits and it is the smallest addressable data item on many CPUs. That is, the CPU can efficiently retrieve data on an 8-bit boundary from memory.',0);
INSERT INTO "cards" VALUES (1486,1,'What is the range representable by n bits?','range −2^(n−1) to +2^(n−1)−1',0);
INSERT INTO "cards" VALUES (1487,1,'What happens when you negate the smallest negative value in the two''s complement numbering system?','It becomes itself.
In general, you cannot negate the smallest negative value in the two''s complement numbering system.',0);
INSERT INTO "cards" VALUES (1488,1,'What does it mean if the LO n bits of a binary number all contain zero?','If the LO n bits of a binary number all contain zero, then the number is evenly divisible by 2n.',0);
INSERT INTO "cards" VALUES (1489,1,'Why should you be careful about mixing variables of different sizes within the same arithmetic expression or assignment statement?','The important thing to realize about sign and zero extension is that they aren''t always free. Assigning a smaller integer to a larger integer may require more machine instructions (taking longer to execute) than moving data between two like-sized integer variables.',0);
INSERT INTO "cards" VALUES (1490,1,'What conditions do you have to have in order to sign contract a numeric value?','First, the HO bytes must all contain either zero or 0xFF. If you encounter any other values, you cannot sign contract the value. Second, the HO bit of your resulting value must match every bit you''ve removed from the number.',0);
INSERT INTO "cards" VALUES (1491,1,'What is saturation?','Saturation is another way to reduce the size of an integer value. Saturation is useful when you want to convert a larger object to a smaller object and you''re willing to live with possible loss of precision.',0);
INSERT INTO "cards" VALUES (1492,1,'On the Intel 80x86 processor family, what do the MMX instruction extensions provide?','The MMX instruction extensions provide saturation capabilities. Most CPUs'' standard instruction sets, as well as most high-level languages, do not provide direct support for saturation, but saturation is not difficult.',0);
INSERT INTO "cards" VALUES (1493,1,'What is BCD?','The binary-coded decimal (BCD) format, as its name suggests, encodes decimal values (0-9) using a binary representation.',0);
INSERT INTO "cards" VALUES (1494,1,'What are BCD values?','BCD values consist of a sequence of nibbles, with each nibble representing a value in the range 0..9.',0);
INSERT INTO "cards" VALUES (1495,1,'What is possible with 16-bit integer, 16-bit fractional format?','Certain 3D gaming applications may produce faster computations using a 16:16 (16-bit integer, 16-bit fractional) format rather than a 32-bit floating-point format.',0);
INSERT INTO "cards" VALUES (1496,1,'What is an advantage of binary decimal format over 2 digit decimal format?','Given the accuracy most financial computations require (generally four digits to the right of the decimal point is the minimum precision serious financial transactions require), it''s usually better to use a binary format.',0);
INSERT INTO "cards" VALUES (1497,1,'What is an advantage of scaled numeric format?','One advantage of the scaled numeric format is that you can choose any base, not just decimal, for your format.',0);
INSERT INTO "cards" VALUES (1498,1,'What is rational representation?','Rational representation uses pairs of integers to represent fractional values. One integer represents the numerator (n) of a fraction, and the other represents the denominator (d). The actual value is equal to n/d.',0);
INSERT INTO "cards" VALUES (1499,1,'How can you test if a bit is set?','If you logically AND a value with a bit string that contains a one in a certain bit position, the result of the logical AND will be zero if the corresponding bit contains a zero, and the result will be nonzero if the bit is set.',0);
INSERT INTO "cards" VALUES (1500,1,'How can you test if a number is divisible by 16?','(ValueToTest & 0xF) == 0',0);
INSERT INTO "cards" VALUES (1501,1,'How can you write a module-n counter for mod 32 using AND to avoid division?','(cntr + 1) & 0x3F; // AND with 6-bit mask, truncating a value to 0-31',0);
INSERT INTO "cards" VALUES (1502,1,'What is floating-point precision?','The number of digits or bits maintained in a computation.',0);
INSERT INTO "cards" VALUES (1503,1,'What is one way to minimize floating point error accumulation?','If you are performing a chain calculation involving addition and subtraction, you should attempt to group the operations so that you can add or subtract values whose magnitudes are close to one another before adding or subtracting values whose magnitudes are not as close.',0);
INSERT INTO "cards" VALUES (1504,1,'What is a caveat for floating-point addition and subtraction?','Whenever subtracting two numbers with the same signs or adding two numbers with different signs, the accuracy of the result may be less than the precision available in the floating-point format.',0);
INSERT INTO "cards" VALUES (1505,1,'What can you do to avoid floating-point error accumulation issues involving addition, subtraction, multiplication, and division?','When performing a chain of calculations involving addition, subtraction, multiplication, and division, try to perform the multiplication and division operations first.',0);
INSERT INTO "cards" VALUES (1506,1,'What can you do to avoid floating point error issues when you multiply and divide numbers?','When multiplying and dividing sets of numbers, try to multiply and divide numbers that have the same relative magnitudes.',0);
INSERT INTO "cards" VALUES (1507,1,'How can you avoid issues in precise comparison on floating point numbers?','if( abs(Value1 − Value2) <= error ) then ...',0);
INSERT INTO "cards" VALUES (1508,1,'What can you do to compare 2 floating-point numbers?','If you determine that the values are not equal to one another within the desired error tolerance, then you can compare them to see if one value is less than or greater than the other. This is known as a miserly approach to comparing for less than or greater than (that is, we try to find as few values that are less than or greater than as possible).',0);
INSERT INTO "cards" VALUES (1509,1,'What is the eager approach to floating-point comparison?','An eager approach attempts to make the result of the comparison true as often as possible. Given two values that you want to compare, and an error tolerance you’re interested in achieving, here’s how you’d eagerly compare the two values for less than or greater than:

if( A < (B + error)) then Eager_A_lessthan_B; 
if( A > (B − error)) then Eager_A_greaterthan_B;',0);
INSERT INTO "cards" VALUES (1510,1,'What is special about extended precision?','Extended precision contains 16 extra bits that the calculations can use as guard bits before rounding down to a double-precision value when storing the result.',0);
INSERT INTO "cards" VALUES (1511,1,'What is the format of single-precision?','The single-precision format uses a 24-bit mantissa and an 8-bit exponent. The mantissa usually represents a value between 1.0 and just less than 2.0. The mantissa usually represents a value between 1.0 and just less than 2.0. The HO bit of the mantissa is always assumed to be one and represents a value just to the left of the binary point. The remaining 23 mantissa bits appear to the right of the binary point and represent the value:
1.mmmmmmm mmmmmmmm mmmmmmmm',0);
INSERT INTO "cards" VALUES (1512,1,'What is the double-precision format?','The double-precision format helps overcome the problems of the single-precision floating-point. Using twice the space, the double-precision format has an 11-bit excess-1,023 exponent and a 53-bit mantissa (including an implied HO bit of one) plus a sign bit. This provides a dynamic range of about 10±308 and 14 1/2 digits of precision, which is sufficient for most applications.',0);
INSERT INTO "cards" VALUES (1513,1,'What is the extended-precision format?','The extended-precision format provides a 64-bit mantissa, a 15-bit excess-16,383 exponent, and a 1-bit sign.',0);
INSERT INTO "cards" VALUES (1514,1,'How does Intel treat extended-precision?','Intel always works in extended-precision format. It converts to extended precision before doing computations. By doing so, Intel guarantees a large number of guard bits are present to ensure the accuracy of your computations. By performing all computations using 80 bits, Intel helps ensure (but not guarantee) that you will get full 32- or 64-bit accuracy in your computations.',0);
INSERT INTO "cards" VALUES (1515,1,'How do you normalize a floating-point value?','Almost any unnormalized value can be normalized by shifting the mantissa bits to the left and decrementing the exponent until a one appears in the HO bit of the mantissa.',0);
INSERT INTO "cards" VALUES (1516,1,'How does rounding-up affect a floating-point value?','Rounding up leaves the value alone if the guard bits are all zero, but if the current mantissa does not exactly fit into the destination bits, then rounding up sets the result to the smallest possible larger value in the floating-point format.',0);
INSERT INTO "cards" VALUES (1517,1,'How does rounding down affect a floating-point value and how is it different from truncation?','Rounding down is just like rounding up, except it rounds the result to the largest possible smaller value. This may sound like truncation, but there is a subtle difference between truncation and rounding down. Truncation always rounds towards zero. For positive numbers, truncation and rounding down do the same thing. However, for negative numbers, truncation simply uses the existing bits in the mantissa, whereas rounding down will actually add a one bit to the LO position if the result was negative.',0);
INSERT INTO "cards" VALUES (1518,1,'How can you represent NaN in floating point?','If the exponent contains all ones and the mantissa is nonzero (discounting the implied bit), then the HO bit of the mantissa (again discounting the implied bit) determines whether the value represents a quiet not-a-number (QNaN) or a signaling not-a-number (SNaN) (see Table 4-1). These not-a-number (NaN) results tell the system that some serious miscalculation has taken place and that the result of the calculation is completely undefined.',0);
INSERT INTO "cards" VALUES (1519,1,'How can you represent infinity in floating-point?','Two other special values are represented when the exponent contains all one bits, and the mantissa contains all zeros. In such a case, the sign bit determines whether the result is the representation for +infinity or −infinity.',0);
INSERT INTO "cards" VALUES (1520,1,'How can you convert an ASCII character between uppercase and lowercase?','You can use this fact to quickly convert an alphabetic character between upper- and lowercase by simply inverting bit five. If you have an uppercase character, you can force it to lowercase by setting bit five to one. If you have a lowercase character and you wish to force it to uppercase, you can do so by setting bit five to zero.',0);
INSERT INTO "cards" VALUES (1521,1,'How can you obtain the binary representation of an ASCII numeric value?','By stripping away (setting to zero) the HO nibble of the ASCII code, you obtain the binary representation of that digit. Conversely, you can convert a binary value in the range 0..9 to its ASCII character representation by simply setting the HO nibble to %0011, or the decimal value 3.',0);
INSERT INTO "cards" VALUES (1522,1,'What are length-prefixed strings?','Length-prefixed strings overcome some of the problems with zero-terminated strings. Length-prefixed strings are common in languages like Pascal; they generally consist of a single byte that specifies the length of the string, followed by zero or more 8-bit character codes. In a length-prefixed scheme, the string “abc” would consist of four bytes: the length byte (0x03), followed by a, b, and c.',0);
INSERT INTO "cards" VALUES (1523,1,'What are static strings?','Arrays of characters that you will use to hold zero-terminated strings in C/C++. While the program is running, there is no way to increase the maximum sizes of these static strings. Nor is there any way to reduce the storage they will use.',0);
INSERT INTO "cards" VALUES (1524,1,'What are pseudo-dynamic strings?','Pseudo-dynamic strings are those whose length the system sets at run time by calling a memory-management function like malloc to allocate storage for the string. However, once the system allocates storage for the string, the maximum length of the string is fixed.',0);
INSERT INTO "cards" VALUES (1525,1,'What are dynamic strings?','Dynamic string systems, which typically use a descriptor-based format, will automatically allocate sufficient storage for a string object whenever you create a new string or otherwise do something that affects an existing string. This is called copy-on-write?',0);
INSERT INTO "cards" VALUES (1526,1,'Is constrained or unconstrained optimization NP-Complete?','No.',0);
INSERT INTO "cards" VALUES (1527,1,'Is linear programming NP-Complete?','No.',0);
INSERT INTO "cards" VALUES (1528,1,'Is mixed (integer and linear programming) NP-Complete?','Yes, to solve to optimality. But there are techniques that work well in practice.',0);
INSERT INTO "cards" VALUES (1529,1,'Is factoring numbers in NP?','The prime factorization problem is in the NP class, but we don''t know if it is NP-hard. In other words, there is currently no proof that prime factorization problem cannot be solved polynomial time (in P). Subsequently there is no proof that algorithms that rely on prime factorization being hard are rendered ineffective.',0);
INSERT INTO "cards" VALUES (1530,1,'Is calculating Eulerian path NP-Complete?','No.',0);
INSERT INTO "cards" VALUES (1531,1,'Is calculating Eulerian cycle NP-Complete?','No.',0);
INSERT INTO "cards" VALUES (1532,1,'For non-planar graphs, it is useful to minimize the number of crossing edges to represent the graph in a flat manner. What is a problem with this approach?','Computing the crossing number of a graph is NP-Complete.',0);
INSERT INTO "cards" VALUES (1533,1,'Is detection of intersection (collision) of two graphs NP-Complete?','No, but it can be very complicated.',0);
INSERT INTO "cards" VALUES (1534,1,'What is the difference between set cover and set packing?','Set cover allows overlap, while set packing doesn''t.',0);
INSERT INTO "cards" VALUES (1535,1,'Is set cover NP-Complete?','The decision version of set covering is NP-complete, and the optimization/search version of set cover is NP-hard.',0);
INSERT INTO "cards" VALUES (1536,1,'Is set partition NP-Complete?','No. Don''t confuse it with set packing.',0);
INSERT INTO "cards" VALUES (1537,1,'Is set packing NP-Complete?','Yes. It''s not only NP-complete, but its optimization version (general maximum set packing problem) has been proven as difficult to approximate as the maximum clique problem; in particular, it cannot be approximated within any constant factor.',0);
INSERT INTO "cards" VALUES (1538,1,'What is copy on write with strings?','Whenever a string function needs to change some characters in a dynamic string, the function first makes a copy of the string and then makes whatever modifications are necessary to the copy of the data.',0);
INSERT INTO "cards" VALUES (1539,1,'What are the three components of a von Neumann system?','A typical von Neumann system has three major components: the central processing unit (CPU), memory, and input/output (I/O)',0);
INSERT INTO "cards" VALUES (1540,1,'How does a CPU see I/O devices?','To the CPU, most I/O devices look like memory.',0);
INSERT INTO "cards" VALUES (1541,1,'What is the data bus?','CPUs use the data bus to shuffle data between the various components in a computer system. The size of this bus varies widely among CPUs. Indeed, bus size is one of the main attributes that defines the “size” of the processor.',0);
INSERT INTO "cards" VALUES (1542,1,'What is the size of a modern data bus?','For the most part, the CPUs in personal computers tend to use 32-bit or 64-bit data buses (and 64-bit data buses are the most prevalent).',0);
INSERT INTO "cards" VALUES (1543,1,'What is the address bus and how does it work?','When the software wants to access a particular memory location or I/O device, it places the corresponding address on the address bus. Circuitry within the device checks this address and transfers data if there is an address match.',0);
INSERT INTO "cards" VALUES (1544,1,'How much memory can be addresses with n address lines?','With n address lines, the processor can access 2^n unique addresses (because there are 2^n unique values in an n-bit binary number). Therefore, the number of bits on the address bus will determine the maximum number of addressable memory and I/O locations. A 64-bit address range is truly infinite as far as memory is concerned. No one will ever put 2^64 bytes of memory into a computer system and feel that they need more. It''s more than atoms in the universe.',0);
INSERT INTO "cards" VALUES (1545,1,'What is the control bus?','The control bus is an eclectic collection of signals that control how the processor communicates with the rest of the system. The system uses two lines on the control bus, read and write, to determine the data flow direction (CPU to memory, or memory to CPU). So when the CPU wants to write data to memory, it asserts (places a signal on) the write control line. When the CPU wants to read data from memory, it asserts the read control line.',0);
INSERT INTO "cards" VALUES (1546,1,'What are the byte enable lines?','The byte enable lines appear on the control bus of some CPUs that support byte-addressable memory. These control lines allow 16-, 32-, and 64-bit processors to deal with smaller chunks of data by communicating the size of the accompanying data.',0);
INSERT INTO "cards" VALUES (1547,1,'What are the 2 address spaces supported by the one address bus?','The 80x86 family, unlike many other processors, provides two distinct address spaces: one for memory and one for I/O.However, it does not have two separate physical address buses (for I/O and memory). Instead, the system shares the address bus for both I/O and memory addresses. Additional control lines decide whether the address is intended for memory or I/O.',0);
INSERT INTO "cards" VALUES (1548,1,'What does the CPU to save data like this: Memory[125] = 0','To execute the equivalent of the statement Memory[125] = 0; the CPU places the value zero on the data bus, the address 125 on the address bus, and asserts the write line on the control bus.',0);
INSERT INTO "cards" VALUES (1549,1,'How does the 80x86 family store a data word?','The 80x86 family stores the LO byte of a word at the address specified and the HO byte at the next location. Therefore, a word consumes two consecutive memory addresses (as you would expect, because a word consists of two bytes). Similarly, a double word consumes four consecutive memory locations.',0);
INSERT INTO "cards" VALUES (1550,1,'What is a byte-addressable memory array?','The term byte-addressable memory array means that the CPU can address memory in chunks as small as a single byte. It also means that this is the smallest unit of memory you can access at once with the processor.',0);
INSERT INTO "cards" VALUES (1551,1,'What bits are used on a 64-bit data bus?','Only the LO 48 bits are used on 64-bit data buses. That''s 256 terabytes. Good enough for now.',0);
INSERT INTO "cards" VALUES (1552,1,'What is the address alignment on a 32-bit memory interface?','With a 32-bit memory interface, the address placed on the address bus is always some multiple of four.',0);
INSERT INTO "cards" VALUES (1553,1,'How can a 32-bit CPU can access a double word in a single memory operation?','A 32-bit CPU can access a double word in a single memory operation only if the address of that value is evenly divisible by four.',0);
INSERT INTO "cards" VALUES (1554,1,'How do modern Intel processors deal with non-aligned data?','The Pentium and later processors provide a 64-bit data bus and special cache memory that reduces the impact of non-aligned data access. Although there may still be a penalty for accessing data at an inappropriate address, modern x86 CPUs suffer from the problem less frequently than the earlier CPUs.',0);
INSERT INTO "cards" VALUES (1555,1,'What is the endianness of TCP/IP and some other network protocols?','When transmitting data across networks, the canonical form is usually big endian because TCP/IP and some other network protocols use the big endian format.',0);
INSERT INTO "cards" VALUES (1556,1,'When transmitting data across the Universal Serial Bus, what is the endianness?','The canonical format is little endian.',0);
INSERT INTO "cards" VALUES (1557,1,'What are the 4 steps to ensure n log n performance on quick sort?','- randomize input first
- use median of three to determine pivot
- at fewer than 20 elements, end recursion early and do insertion sort
- do the smaller partition first',0);
INSERT INTO "cards" VALUES (1558,1,'How can you convert from one endianness to another?','To convert between the endian forms, you must do a mirror-image swap of the bytes in the object. To cause a mirror-image swap, you must swap the bytes at opposite ends of the binary number, and then work your way towards the middle of the object swapping pairs of bytes as you go along.',0);
INSERT INTO "cards" VALUES (1559,1,'What is the system clock?','The system clock is an electrical signal on the control bus that alternates between zero and one at a periodic rate. All activity within the CPU is synchronized with the edges (rising or falling) of this clock signal.',0);
INSERT INTO "cards" VALUES (1560,1,'What is the system clock frequency and system clock period?','The frequency with which the system clock alternates between zero and one is the system clock frequency and the time it takes for the system clock to switch from zero to one and back to zero is the clock period. One full period is also called a clock cycle.',0);
INSERT INTO "cards" VALUES (1561,1,'What is the clock period for a 1 GHz processor?','A CPU running at 1 GHz would have a clock period of one nanosecond (ns), or one billionth of a second.',0);
INSERT INTO "cards" VALUES (1562,1,'How does the clock limit a CPU?','Because all CPU operations are synchronized with the clock, the CPU cannot perform tasks any faster than the clock runs. However, just because a CPU is running at some clock frequency doesn''t mean that it executes that many operations each second.',0);
INSERT INTO "cards" VALUES (1563,1,'What is the memory access time?','The memory access time is the number of clock cycles between a memory request (read or write) and when the memory operation completes. This is an important value, because longer memory access times result in lower performance.',0);
INSERT INTO "cards" VALUES (1564,1,'Why does the CPU use wait states for memory accesses?','The CPU doesn''t wait for memory. The access time is specified by the bus clock frequency. If the memory subsystem doesn''t work fast enough to keep up with the CPU''s expected access time, the CPU will read garbage data on a memory read operation and will not properly store the data on a memory write. This will surely cause the system to fail.',0);
INSERT INTO "cards" VALUES (1565,1,'How do memory access waits work?','Almost every general-purpose CPU in existence provides a pin (whose signal appears on the control bus) that allows the insertion of wait states. If necessary, the memory address decoding circuitry asserts this signal to give the memory sufficient access time.',0);
INSERT INTO "cards" VALUES (1566,1,'How does the CPU avoid excessive wait states?','However, we''re not doomed to slow execution because of added wait states. There are several tricks hardware designers can employ to achieve zero wait states most of the time. The most common of these is the use of cache memory.',0);
INSERT INTO "cards" VALUES (1567,1,'What are temporal locality of reference and spatial locality of reference?','If you look at a typical program, you''ll discover that it tends to access the same memory locations repeatedly. Furthermore, you''ll also discover that a program often accesses adjacent memory locations. The technical names given to these phenomena are temporal locality of reference and spatial locality of reference. When exhibiting spatial locality, a program accesses neighboring memory locations within a short period after the initial memory access.',0);
INSERT INTO "cards" VALUES (1568,1,'What is temporal locality of reference?','When displaying temporal locality of reference, a program accesses the same memory location repeatedly during a short time.',0);
INSERT INTO "cards" VALUES (1569,1,'How can a CPU keep data in cache?','Cache memory can dynamically reassign addresses. This allows the system to keep recently accessed values in the cache. Addresses that the CPU has never accessed or hasn''t accessed in some time remain in main (slow) memory. Because most memory accesses are to recently accessed variables (or to locations near a recently accessed location), the data generally appears in cache memory.',0);
INSERT INTO "cards" VALUES (1570,1,'How can CPUs optimize when a cache miss occurs?','When a cache miss occurs most caching systems will read several consecutive bytes of main memory (engineers call this block of data a cache line). 80x86 CPUs, for example, read between 16 and 64 bytes upon a cache miss.',0);
INSERT INTO "cards" VALUES (1571,1,'What is the benefit of a large, third-level cache?','For programs that manipulate considerable data, yet exhibit locality of reference, a third-level caching subsystem can be very effective.',0);
INSERT INTO "cards" VALUES (1572,1,'What is direct addressing mode?','The direct addressing mode encodes a variable''s memory address as part of the actual machine instruction that accesses the variable.',0);
INSERT INTO "cards" VALUES (1573,1,'What is indirect addressing mode?','The indirect addressing mode typically uses a register to hold a memory address (there are a few CPUs that use memory locations to hold the indirect address, but this form of indirect addressing is rare in modern CPUs).',0);
INSERT INTO "cards" VALUES (1574,1,'What is indexed addressing mode?','The indexed addressing mode combines the direct and indirect addressing modes into a single addressing mode. Specifically, the machine instructions using this addressing mode encode both an offset (direct address) and a register in the bits that make up the instruction. At run time, the CPU computes the sum of these two address components to create an effective address.',0);
INSERT INTO "cards" VALUES (1575,1,'What is a pointer?','A pointer is a memory variable whose value is the address of some other memory object.',0);
INSERT INTO "cards" VALUES (1576,1,'How does a CPU lay out an array?','Many optimizing compilers will attempt to place an array starting at a memory address that is an even multiple of some common size like two, four, or eight bytes. This effectively adds padding bytes before the beginning of the array or, if you prefer to think of it this way, it adds padding bytes to the end of the previous object in memory.',0);
INSERT INTO "cards" VALUES (1577,1,'How does a compiler/CPU access A[i][j][k][m]?','Address = Base + (((i * bounds1 + j) * bounds2 + k) * bounds3 + m) * Element_Size',0);
INSERT INTO "cards" VALUES (1578,1,'What are the sizes for Intel 80x86 CPU instructions?','With machine instructions ranging from 1 to almost 15 bytes long.',0);
INSERT INTO "cards" VALUES (1579,1,'What is the flags register?','The flags register, also known as the condition-codes register or program-status word, is an array of Boolean variables in the CPU that tracks whether the previous instruction produced an overflow, a zero result, a negative result, or other such condition.',0);
INSERT INTO "cards" VALUES (1580,1,'What is the BIU and what does it do?','Whenever the execution unit is not using the BIU (Bus Interface Unit), the BIU can fetch additional bytes from the memory that holds the machine instructions and store them in the prefetch queue.',0);
INSERT INTO "cards" VALUES (1581,1,'What can the CPU optimize when the prefetch queue is not full?','If the prefetch queue is not full (generally it can hold between 8 and 32 bytes, depending on the processor) and the BIU is idle on the current clock cycle, fetch the next double word located at the address found in the EIP register at the beginning of the clock cycle.',0);
INSERT INTO "cards" VALUES (1582,1,'What can a CPU do when the instruction decoder is idle?','If the instruction decoder is idle and the current instruction does not require an instruction operand, the CPU should begin decoding the opcode at the front of the prefetch queue. If the current instruction requires an instruction operand, then the CPU begins decoding the byte just beyond that operand in the prefetch queue.',0);
INSERT INTO "cards" VALUES (1583,1,'What hurts performance when instructions are being pipelined?','If you want to write fast code, avoid jumping around in your program as much as possible.',0);
INSERT INTO "cards" VALUES (1584,1,'How is it best to organize branches/jumps in your code?','Therefore, if you can determine, while writing the program, which jump condition occurs most frequently, you should arrange your program so that the most common condition causes the program to continue with the next instruction rather than jump to a separate location.',0);
INSERT INTO "cards" VALUES (1585,1,'How do memory access and instruction prefetches contend for resources?','Don''t forget, the CPU needs to use the bus for other purposes. Instructions that access memory compete with the prefetch queue for access to the bus.',0);
INSERT INTO "cards" VALUES (1586,1,'How can bus contention occur?','Bus contention can occur whenever an instruction needs to access an item in memory. Contention for the address and data bus may develop because the CPU will be trying to fetch data from memory and write data to memory simultaneously.',0);
INSERT INTO "cards" VALUES (1587,1,'What is a pipeline stall and what does it help to solve?','One simplistic way to handle bus contention is through a pipeline stall. The CPU, when faced with contention for the bus, gives priority to the instruction farthest along in the pipeline. This causes the later instruction in the pipeline to stall, and it takes two cycles to execute that instruction',0);
INSERT INTO "cards" VALUES (1588,1,'What is an example of pipeline stalls involving a jump?','As another example of a pipeline stall, consider what happens when an instruction modifies the value in the EIP register. For example, the jnz (jump if not zero) instruction might change the value in the EIP register if it conditionally transfers control to its target label. This, of course, implies that the next set of instructions to be executed does not immediately follow the instruction that modifies EIP. By the time the instruction jnz completes execution (assuming the zero flag is clear, so that the branch is taken), we''ve already started five other instructions and we''re only one clock cycle away from the completion of the first of these. Obviously, the CPU must not execute those instructions, or it will compute improper results. The only reasonable solution is to flush the entire pipeline and begin fetching opcodes anew. Doing so causes a severe execution-time penalty.',0);
INSERT INTO "cards" VALUES (1589,1,'When does a control hazard occur?','A control hazard occurs whenever the CPU branches to some new location in memory and consequently has to flush from the pipeline the instructions that are in various stages of execution.',0);
INSERT INTO "cards" VALUES (1590,1,'When does a data hazard occur?','Note that a data hazard occurs when the source operand of one instruction was a destination operand of a previous instruction.',0);
INSERT INTO "cards" VALUES (1591,1,'What is special about a superscalar CPU?','A superscalar CPU has several execution units. If it encounters in the prefetch queue two or more instructions that can execute independently, it will do so.',0);
INSERT INTO "cards" VALUES (1592,1,'What is out-of-order execution?','The CPU can execute instructions prior to the completion of instructions appearing previously in the code stream.',0);
INSERT INTO "cards" VALUES (1593,1,'How can a CPU use more registers than it has?','Register renaming is a sneaky way to give a CPU more registers than it actually has. Programmers will not have direct access to these extra registers, but the CPU can use them to prevent hazards in certain cases.',0);
INSERT INTO "cards" VALUES (1594,1,'What is special about a VLIW system?','In a VLIW computer system, the CPU fetches a large block of bytes (41 bits in the case of the IA-64 Itanium CPU) and decodes and executes this block all at once. This block of bytes usually contains two or more instructions (three in the case of the IA-64). VLIW computing requires the programmer or compiler to properly schedule the instructions in each block so that there are no hazards or other conflicts, but if properly scheduled, the CPU can execute three or more instructions per clock cycle.',0);
INSERT INTO "cards" VALUES (1595,1,'What is SIMD and what does it do?','In the SIMD (Single Instruction Multiple Data) model, the CPU executes a single instruction stream, just like the pure SISD model. However, in the SIMD model, the CPU operates on multiple pieces of data concurrently rather than on a single data object.

An SIMD version of add, would compute the sum of several values simultaneously. The Pentium III''s MMX and SIMD instruction extensions, and the PowerPC''s AltaVec instructions, operate in exactly this fashion. With the paddb MMX instruction, for example, you can add up to eight separate pairs of values with the execution of a single instruction.',0);
INSERT INTO "cards" VALUES (1596,1,'How are MMX registers different from a general purpose register?','MMX registers (MM0 and MM1) actually hold eight independent byte values (the MMX registers are 64 bits wide but are treated as eight 8-bit values rather than as a single 64-bit value)',0);
INSERT INTO "cards" VALUES (1597,1,'What is MIMD?','Multiple Instruction, Multiple Data
If you have a multiprogramming environment with multiple programs attempting to execute concurrently, the MIMD model does allow each of those programs to execute their own code stream simultaneously. This type of parallel system is called a multiprocessor system.',0);
INSERT INTO "cards" VALUES (1598,1,'When does multiprocessing (running on multiple processors) not help you?','Multiprocessing doesn''t help a program''s performance unless that program is specifically written for use on a multiprocessor system.',0);
INSERT INTO "cards" VALUES (1599,1,'What is the cache-coherency problem?','Multiple CPUs operating on the same object in memory. 
In order for these two functions to operate properly, the two CPUs must notify each other whenever they make changes to shared objects, so the other CPU can update its local, cached copy.',0);
INSERT INTO "cards" VALUES (1600,1,'What is hyper-threading?','In a typical superscalar processor it is rare for an instruction sequence to utilize all the CPU''s functional units on each clock cycle. Rather than allow those functional units to go unused, the CPU can run two separate threads of execution concurrently and keep all the CPU''s functional units occupied. This allows a single CPU to, effectively, do the work of 1.5 CPUs in a typical multiprocessor system.',0);
INSERT INTO "cards" VALUES (1601,1,'What is NUMA?','NUMA, which stands for Non-Uniform Memory Access, is a bit of a misnomer. The term NUMA implies that different types of memory have different access times, and so it is descriptive of the entire memory hierarchy. 
A good example of NUMA memory is the memory on a video display card. Another example is flash memory, which has significantly slower access and transfer times than standard semiconductor RAM.',0);
INSERT INTO "cards" VALUES (1602,1,'What is virtual memory?','Most modern computer systems implement a virtual memory scheme that simulates main memory using a mass storage disk drive. A virtual memory subsystem is responsible for transparently copying data between the disk and main memory as needed by programs.',0);
INSERT INTO "cards" VALUES (1603,1,'What is DSM?','Distributed shared memory (DSM), where processes running on different computer systems share data stored in a common block of memory and communicate changes to that block across the network.',0);
INSERT INTO "cards" VALUES (1604,1,'What are examples of offline storage?','Magnetic tapes, disk cartridges, optical disks, and floppy diskettes.',0);
INSERT INTO "cards" VALUES (1605,1,'What is the penalty for a main memory access? Why does it never take one cycle?','If the program has to bring the data from main memory, 999 memory accesses later you''re still paying an average cost of two clock cycles to access the data that Intel''s documentation claims should happen in one cycle.',0);
INSERT INTO "cards" VALUES (1606,1,'What is the clock timing penalty of an L2 access?','Accessing data in the L2 cache is always slower than in the L1 cache, and there is always the equivalent of at least one wait state, and up to eight, when accessing data in the L2 cache.',0);
INSERT INTO "cards" VALUES (1607,1,'How does L2 cache access help pay for itself?','If you execute the mov(mem32,eax); instruction, and mem32''s value is not in the L1 cache, the cache controller doesn''t simply read mem32''s 32 bits from the L2 cache, assuming that it''s present there. Instead, the cache controller will actually read a whole block of bytes (generally 16, 32, or 64 bytes, depending on the particular processor) from the L2 cache.',0);
INSERT INTO "cards" VALUES (1608,1,'How many bytes are there per cache line?','Cache memory is usually organized in blocks of cache lines, with each line containing some number of bytes (typically a small power of two like 16, 32, or 64)',0);
INSERT INTO "cards" VALUES (1609,1,'What is the relationship to cache lines to their alignment?','Generally, if a cache line is n bytes long, that cache line will hold n bytes from main memory that fall on an n-byte boundary.',0);
INSERT INTO "cards" VALUES (1610,1,'With 512 cache lines, how are the bits in the memory address used to map to a cache line and byte?','8 KB cache with 512 16-byte cache lines and a 32-bit main-memory address. Because there are 512 cache lines, it requires 9 bits to select one of the cache lines (29 = 512). This example uses bits 4 through 12 to determine which cache line to use (assuming we number the cache lines from 0 to 511), while bits 0 through 3 of the original memory address determine the particular byte within the 16-byte cache line.',0);
INSERT INTO "cards" VALUES (1611,1,'Why are fully associative caches generally not used?','The extra circuitry to achieve full associativity is expensive and, worse, can slow down the memory subsystem.',0);
INSERT INTO "cards" VALUES (1612,1,'Which type of caches are better for instructions, for code?','In particular, the direct-mapped cache is very good for data that you access in a sequential rather than random fashion. Because the CPU typically executes instructions in a sequential fashion, instruction bytes can be stored very effectively in a direct-mapped cache. However, because programs tend to access data more randomly than code, a two-way or four-way set associative cache usually makes a better choice for data accesses than a direct-mapped cache.

Because data and machine instruction bytes usually have different access patterns, many CPU designers use separate caches for each.',0);
INSERT INTO "cards" VALUES (1613,1,'What is temporal locality?','If a memory location has not been accessed in a while, it is likely to be a long time before the CPU accesses it again.',0);
INSERT INTO "cards" VALUES (1614,1,'What is a good replacement policy that many caching controllers use?','The least recently used (LRU) algorithm.',0);
INSERT INTO "cards" VALUES (1615,1,'What is write-through policy?','The write-through policy states that any time data is written to the cache, the cache immediately turns around and writes a copy of that cache line to main memory.',0);
INSERT INTO "cards" VALUES (1616,1,'What is a good cache write policy to use when two different CPUs are communicating through shared memory?','Because the write-through policy updates main memory with the new value as rapidly as possible, it is a better policy to use when two different CPUs are communicating through shared memory.',0);
INSERT INTO "cards" VALUES (1617,1,'What is a write-back policy?','In this mode, writes to the cache are not immediately written to main memory; instead, the cache controller updates main memory at a later time. This scheme tends to be higher performance because several writes to the same cache line within a short time period do not generate multiple writes to main memory.',0);
INSERT INTO "cards" VALUES (1618,1,'How does a cache keep track of data that needs to be written back to main memory?','the cache controller usually maintains a dirty bit within each cache line. The cache system sets this bit whenever it writes data to the cache.',0);
INSERT INTO "cards" VALUES (1619,1,'What does a cache controller have to do before it replaces a cache line with other data from memory?','Whenever the cache controller replaces a cache line with other data from memory, it must first check the dirty bit, and if that bit is set, the controller must write that cache line to memory before going through with the cache-line replacement.',0);
INSERT INTO "cards" VALUES (1620,1,'What has to be inherent in software in order for a cache system to be effective?','In order for a cache system to be effective, software must exhibit locality of reference (either spatial or temporal). Fortunately, real-world programs tend to exhibit locality of reference, so most programs will benefit from the presence of a cache in the memory subsystem.',0);
INSERT INTO "cards" VALUES (1621,1,'What are memory pages?','You break up memory into blocks of bytes called pages. A page in main memory is comparable to a cache line in a cache subsystem, although pages are usually much larger than cache lines. For example, the 80x86 CPUs use a page size of 4,096 bytes.',0);
INSERT INTO "cards" VALUES (1622,1,'How does the page table not take up cache space?','To prevent cluttering the data or instruction cache with page-table entries, which increases the number of cache misses for data and instruction requests, the page table uses its own cache, known as the translation lookaside buffer (TLB).',0);
INSERT INTO "cards" VALUES (1623,1,'How are the bits in a page table entry used?','Each entry in the page table contains 32 bits, even though the system really only needs 20 bits to remap each virtual address to a physical address. Intel, on the 80x86, uses some of the remaining 12 bits to provide some memory-protection information.',0);
INSERT INTO "cards" VALUES (1624,1,'How can your software change bits in the page table?','Note that your applications do not have access to the page table (reading and writing the page table is the operating system''s responsibility), and therefore they cannot modify these bits. However, operating systems like Windows may provide some functions you can call if you want to change certain bits in the page table (for example, Windows will allow you to set a page to read-only if you want to do so)',0);
INSERT INTO "cards" VALUES (1625,1,'What is a working set?','At any given time, a program will only access a small percentage of the pages in main memory that contain data and instruction bytes and this set of pages is known as the working set.',0);
INSERT INTO "cards" VALUES (1626,1,'What happens when you attempt to access a page in memory?','If you attempt to access a page of memory, and the page-table bit tells the memory management unit (MMU) that the page is not present in main memory, the CPU interrupts the program and passes control to the operating system.',0);
INSERT INTO "cards" VALUES (1627,1,'How can you think of main memory?','You can think of main memory as a fully associative write-back cache with 4,096-byte cache lines, which caches the data that is stored on the disk drive.',0);
INSERT INTO "cards" VALUES (1628,1,'What are typical page sizes?','Page sizes tend to vary from about 1 KB to 64 KB, depending on the CPU. For CPUs that support an address space larger than 4 GB, some CPUs use an inverted page table or a three-level page table.',0);
INSERT INTO "cards" VALUES (1629,1,'What is the disadvantage of a program that does not exhibit locality of reference?','Insufficient memory at a given level in the memory hierarchy to properly contain the program working sets of cache lines or pages.',0);
INSERT INTO "cards" VALUES (1630,1,'What does the operating system do with the lowest addresses in memory allocated for a process?','The operating system reserves the lowest memory addresses. Generally, your application cannot access data (or execute instructions) at the lowest addresses in memory. One reason the OS reserves this space is to help detect NULL pointer references.',0);
INSERT INTO "cards" VALUES (1631,1,'What is binding?','Binding is the process of associating an attribute with an object.',0);
INSERT INTO "cards" VALUES (1632,1,'What are static objects?','Static objects are those that have an attribute bound to them prior to the execution of the application. Constants are good examples of static objects; they have the same value bound to them throughout the execution of the application.',0);
INSERT INTO "cards" VALUES (1633,1,'What is the lifetime of a static object?','The lifetime of a static object extends from the point at which the program first begins execution to the point when the application terminates.',0);
INSERT INTO "cards" VALUES (1634,1,'What is the scope of an identifier?','The scope of an identifier is that section of the program where the identifier''s name is bound to the object. As names exist only during compilation, scope is definitely a static attribute in compiled languages. (In interpretive languages, where the interpreter maintains the identifier names during program execution, scope can be a non-static attribute.)',0);
INSERT INTO "cards" VALUES (1635,1,'What do you find in an executable file?','In most executable files, you''ll find a single section that combines the code, read-only data, and constant data sections.',0);
INSERT INTO "cards" VALUES (1636,1,'What is the BSS section?','The BSS section is where compilers typically put static objects that don''t have an explicit value associated with them. BSS stands for block started by a symbol, which is an old assembly language term describing a pseudo-opcode one would use to allocate storage for an uninitialized static array. In modern OSes like Windows and Linux, the OS allows the compiler/linker to put all uninitialized variables into a BSS section that simply contains information that tells the OS how many bytes to set aside for the section.',0);
INSERT INTO "cards" VALUES (1637,1,'What it the stack?','The stack is a data structure that expands and contracts in response to procedure invocations and the return to calling routines, among other things. At run time, the system places all automatic variables (non-static local variables), subroutine parameters, temporary values, and other objects in the stack section of memory in a special data structure we call the activation record (which is aptly named because the system creates an activation record when a subroutine first begins execution, and it deallocates the activation record when the subroutine returns to its caller).',0);
INSERT INTO "cards" VALUES (1638,1,'What is the different between a hardware stack and a software stack?','If a CPU provides an explicit stack-pointer register (ESP), we say that the CPU supports a hardware stack; if only a general-purpose register is available, then we say that the CPU uses a software-implemented stack.',0);
INSERT INTO "cards" VALUES (1639,1,'What are anonymous variables?','We''ll usually refer to objects in heap memory as anonymous variables because we refer to them by their memory address (via pointers) rather than by a name.',0);
INSERT INTO "cards" VALUES (1640,1,'What is a simple heap manager implementation?','Easy implementation of a heap manager that supports garbage collection. This simple system maintains a (linked) list of free memory blocks. Each free memory block in the list will require two double-word values: one double-word value specifies the size of the free block, and the other double word contains a link to the next free block in the list (that is, a pointer)',0);
INSERT INTO "cards" VALUES (1641,1,'What are first-fit and best-fit?','The first-fit algorithm does have a couple of advantages over the best-fit algorithm, though. The most obvious advantage is that the first-fit algorithm is usually faster. The best-fit algorithm has to scan through every block in the free block list in order to find the smallest block large enough to satisfy the allocation request',0);
INSERT INTO "cards" VALUES (1642,1,'What is an advantage of first-fit in heap management?','Another advantage to the first-fit algorithm is that it tends to suffer less from a degenerate condition known as external fragmentation. Fragmentation occurs after a long sequence of allocation and deallocation requests. Remember, when the heap manager satisfies a memory allocation request, it usually creates two blocks of memory — one in-use block for the request and one free block that contains the remaining bytes in the original block after the request is filled (assuming the heap manager did not find an exact fit). After operating for a while, the best-fit algorithm may wind up producing lots of smaller, leftover blocks of memory that are too small to satisfy an average memory request (because the best-fit algorithm also produces the smallest leftover blocks as a result of its behavior).',0);
INSERT INTO "cards" VALUES (1643,1,'How does heap memory allocation optimize for speed?','If an application calls the operating system for every memory request it makes, the performance of the application will probably suffer if the application makes several memory allocation and deallocation calls. OS API calls are very slow, because they generally involve switching between kernel mode and user mode on the CPU (which is not fast).

On the very first memory allocation, the malloc routine will request a large block of memory from the operating system, and then the application''s malloc and free routines will manage this block of memory themselves.',0);
INSERT INTO "cards" VALUES (1644,1,'What is allocation granularity?','Although most heap managers will allow you to allocate storage in blocks as small as one byte, most memory managers will actually allocate some minimum number of bytes greater than one. This minimum amount is the allocation granularity the memory manager supports.',0);
INSERT INTO "cards" VALUES (1645,1,'What is the usual allocation alignment?','For performance reasons, many heap managers begin each allocation on a typical cache-line boundary, usually 16, 32, or 64 bytes.',0);
INSERT INTO "cards" VALUES (1646,1,'How is internal fragmentation somewhat avoided?','The granularity size is quite small for most memory managers (typically 16 bytes or fewer), so after thousands and thousands of memory allocations you''ll only lose a couple dozen or so kilobytes to internal fragmentation.',0);
INSERT INTO "cards" VALUES (1647,1,'What is a problem with allocation on the heap of many small objects?','If you allocate lots of small objects, the memory consumed by internal fragmentation and control information (meta information stored with each heap block) may represent a significant portion of your heap area.',0);
INSERT INTO "cards" VALUES (1648,1,'How are I/O operations similar to memory read and write operations?','I/O operations behave much like memory read and write operations, except that there are usually more wait states associated with I/O operations.',0);
INSERT INTO "cards" VALUES (1649,1,'What does an output port typically use to hold data to be sent to the outside world?','An output port typically uses a latch device to hold data to be sent to the outside world.',0);
INSERT INTO "cards" VALUES (1650,1,'What are the read or write abilities of an output port?','Output ports can be write-only or read/write.',0);
INSERT INTO "cards" VALUES (1651,1,'What must be active for a latch to operate?','Both the address decode line (En) and the write control line (W) must be active for the latch to operate.',0);
INSERT INTO "cards" VALUES (1652,1,'What does the CPU read from a read/write port?','Whenever the CPU reads data from a read/write port, it reads the data that was last written to the port allowing a programmer to retrieve that value.',0);
INSERT INTO "cards" VALUES (1653,1,'What is a dual I/O port?','A dual I/O port is also a read/write port, but when you read a dual I/O port, you read data from an external input device rather than the last data written to the output side of the port''s address.',0);
INSERT INTO "cards" VALUES (1654,1,'What is a dual I/O port composed of?','Note that a dual I/O port is actually created using two ports — a read-only port and a write-only port — that share the same port address.',0);
INSERT INTO "cards" VALUES (1655,1,'What is a bidirectional port?','A bidirectional port allows the CPU to both read and write data to an external device. To function properly, a bidirectional port must pass various control lines, such as read and write enable, to the peripheral device so that the device can change the direction of data transfer based on the CPU''s read/write request. In effect, a bidirectional port is an extension of the CPU''s bus through a bidirectional latch or buffer.',0);
INSERT INTO "cards" VALUES (1656,1,'What is memory-mapped I/O?','Memory-mapped I/O uses ordinary locations within the CPU''s memory address space to communicate with peripheral devices.',0);
INSERT INTO "cards" VALUES (1657,1,'What is I/O-mapped input/output?','I/O-mapped input/output uses an address space separate from memory, and it uses special machine instructions to transfer data between that special I/O address space and the outside world.',0);
INSERT INTO "cards" VALUES (1658,1,'What is DMA?','DMA is a special form of memory-mapped I/O where the peripheral device reads and writes data located in memory without CPU intervention',0);
INSERT INTO "cards" VALUES (1659,1,'How does a memory-mapped peripheral device work?','A memory-mapped peripheral device is connected to the CPU''s address and data lines exactly like regular memory, so whenever the CPU writes to or reads from the address associated with the peripheral device, the CPU transfers data to or from the device.',0);
INSERT INTO "cards" VALUES (1660,1,'How do some video cards handle their memory?','Some video cards have 32 MB of on-board memory that they map into the memory address space and this means that the 32 MB address range consumed by the card is not available to the system for use as regular RAM memory.',0);
INSERT INTO "cards" VALUES (1661,1,'Does the CPU cache values for memory-mapped I/O ports?','No. The CPU cannot cache values intended for memory-mapped I/O ports.',0);
INSERT INTO "cards" VALUES (1662,1,'How can a programmer get access to I/O address space?','As almost all high-level languages provide the ability to access memory, but most do not allow access to the I/O space, having the PCI bus remap the I/O address space into the memory address space provides I/O access to those high-level languages.',0);
INSERT INTO "cards" VALUES (1663,1,'What is direct memory access and its advantage in timely processing?','For very high-speed I/O devices the CPU may be too slow to process this data one byte (or one word or double word) at a time. Such devices generally have an interface to the CPU''s bus so they can directly read and write memory, which is known as direct memory access because the peripheral device accesses memory directly, without using the CPU as an intermediary.',0);
INSERT INTO "cards" VALUES (1664,1,'What is a medium-speed device?','Devices that transfer data at approximately the same rate as, or up to two orders of magnitude slower than, the CPU.',0);
INSERT INTO "cards" VALUES (1665,1,'What are high-speed devices?','Devices that transfer data faster than the CPU is capable of handling using programmed I/O. High-speed devices must use DMA because programmed I/O is too slow.',0);
INSERT INTO "cards" VALUES (1666,1,'What I/O mechanisms do medium and low-speed devices use?','Medium- and low-speed devices may use any of the three I/O mechanisms for data transfer (though low-speed devices rarely use DMA because of the cost of the extra hardware involved).',0);
INSERT INTO "cards" VALUES (1667,1,'How do I/O devices communicate with the interrupt controller?','Most peripheral buses provide a common set of interrupt control signals that let I/O devices communicate directly with the system''s interrupt controller, which is also a peripheral device.',0);
INSERT INTO "cards" VALUES (1668,1,'What must a CPU do if it wishes to access a peripheral on the PCI bus?','Whenever the CPU wishes to access a peripheral on the PCI bus, it must negotiate with other peripheral devices for the right to use the bus. This negotiation can take several clock cycles before the PCI controller grants the CPU access to the bus.',0);
INSERT INTO "cards" VALUES (1669,1,'What is called when the CPU receives an interrupt?','interrupt service routine (ISR)',0);
INSERT INTO "cards" VALUES (1670,1,'What can be used to make I/O ports accessible from user applications?','It is possible to use the Linux ioperm system call to make certain I/O ports accessible from user applications.',0);
INSERT INTO "cards" VALUES (1671,1,'How does the OS save reads when writing full blocks to disk?','If your block size is 4,096 bytes, but you just write 2,000 bytes to some block and then seek to some other position in the file outside that block, the OS will actually have to read the entire 4,096-byte block from the disk, merge in the 2000 bytes, and then finally write the entire 4,096 bytes back to the disk. This happens because the OS must read and write entire blocks; it cannot transfer partial blocks between the disk and memory. Contrast this with a write operation that writes a full 4,096 bytes — in this case, the OS wouldn''t have to read the data from the disk first; it would only have to write the block.',0);
INSERT INTO "cards" VALUES (1672,1,'What are memory-mapped files?','Memory-mapped files use the OS''s virtual memory capabilities to map memory addresses in the application space directly to blocks on the disk. Because modern OSes have highly optimized virtual memory subsystems, piggy-backing file I/O on top of the virtual memory subsystem can produce very efficient file access.',0);
INSERT INTO "cards" VALUES (1673,1,'What is a drawback of memory-mapped files?','Almost every OS does memory-mapped file access differently, and there is little chance that memory-mapped file I/O code will be portable between OSes.',0);
INSERT INTO "cards" VALUES (1674,1,'What is LSD radix sort?','Least Significant Digit first radix sort. It doesn''t have to be a digit, just a symbol in an alphabet. Sorts stably from right to left.',0);
INSERT INTO "cards" VALUES (1675,1,'What is MSD radix sort?','Most Significant Digit first radix sort. It doesn''t have to be a digit, just a symbol in an alphabet. Sorts stably from left to right, recursing when the symbols in a block equal each other.',0);
INSERT INTO "cards" VALUES (1676,1,'What is the time complexity of using a trie to store patterns, then testing that trie against a string, looking for matches?','O(|string| * |len of longest pattern|)',0);
INSERT INTO "cards" VALUES (1677,1,'What is the time complexity for generating a suffix trie?','O(|text|)',0);
INSERT INTO "cards" VALUES (1678,1,'What can you do with a suffix trie to generate a suffix array?','DFS the trie to get a list of suffixes.',0);
INSERT INTO "cards" VALUES (1679,1,'What is the algorithm called that generates a suffix array in linear time?','Manber-Myers',0);
INSERT INTO "cards" VALUES (1680,1,'What are 2 disadvantages of MSD radix sort?','- cache inefficient
- lot of work in an inner loop',0);
INSERT INTO "cards" VALUES (1681,1,'What type of input does MSD radix sort do best on?','when the data to be sorted seems random

when the data is very similar, it can come to linear time work, which is slow for MSD',0);
INSERT INTO "cards" VALUES (1682,1,'What is the runtime of KMP?','O(|P| + |T|)',0);
INSERT INTO "cards" VALUES (1683,1,'What operations is a trie efficient on?','- longest prefix
- wild card at beginning
- wild card at end',0);
INSERT INTO "cards" VALUES (1684,1,'When making a trie node, what is the typical implementation of the children?','An array of size R (the radix or alphabet size) with a pointer to continuing paths. Paths that do not continue have null stored in the array indexes for those paths.',0);
INSERT INTO "cards" VALUES (1685,1,'When searching for a match in string with length N and pattern length M, where should we stop to ensure we don''t look for matches at the end that would be too short?','i <= n - m',0);
INSERT INTO "cards" VALUES (1686,1,'What does the preprocessing step of KMP do?','Builds a DFA (deterministic finite automaton) of the pattern to be searched.',0);
INSERT INTO "cards" VALUES (1687,1,'What is the size needed for the DFA created by KMP during its preprocessing step?','O(R * M)
- r is the radix
- m is the length of the pattern',0);
INSERT INTO "cards" VALUES (1688,1,'What is the runtime of the preprocessing step for Boyer-Moore?','O(|P|)

- P is the pattern',0);
INSERT INTO "cards" VALUES (1689,1,'What is the expected runtime of Boyer-Moore?','O(n/m)

- n is the length of the text
- m is the length of the pattern',0);
INSERT INTO "cards" VALUES (1690,1,'What is the mathematical method called that allows Rabin-Karp to be efficient?','Horner''s method',0);
INSERT INTO "cards" VALUES (1691,1,'What is Kleene''s theorem?','It states that any regular language (regular expression) is accepted by an FA and conversely that any language accepted by an FA is regular.',0);
INSERT INTO "cards" VALUES (1692,1,'What is the difference between a DFA and an NFA?','DFA can have only one applicable transition per character.
NFA can have several applicable transitions.',0);
INSERT INTO "cards" VALUES (1693,1,'What is the behavior of a greedy strategy?','A greedy strategy usually progresses in a top-down order, making one greedy choice after another and reducing each given problem instance to a smaller one.',0);
INSERT INTO "cards" VALUES (1694,1,'What are 2 properties of an interview problem with a potential dynamic programming solution?','If an interview problem has optimal substructure and overlapping subproblems, it might be solved by dynamic programming.',0);
INSERT INTO "cards" VALUES (1695,1,'What is backtracking?','Backtracking is a refinement of the brute-force approach, which systematically searches for a solution to a problem among all available options. It is suitable for scenarios where there is a set of options available at each step, and we must choose one from these. After a choice is made, there is a new set of options for the next step. This procedure is repeated over and over until we reach a final state.',0);
INSERT INTO "cards" VALUES (1696,1,'How does a backtracking algorithm behave?','The backtracking algorithm traverses this tree recursively, from the root down and in depth-first order. When it reaches a leaf that corresponds to a non-acceptable state, it backtracks to continue the search for another leaf by revoking the most recent choice and tries out the next option. If it runs out of options, it revokes again and tries another choice at that node. If it ends up at the root with no options left, there are no acceptable states to be found.',0);
INSERT INTO "cards" VALUES (1697,1,'How do Python''s encode and decode methods work?','To convert Unicode characters to binary data, you must use the encode method. To convert binary data to Unicode characters, you must use the decode method.',0);
INSERT INTO "cards" VALUES (1698,1,'How can you interpret a string in Python as an integer with a base other than 10?','The integer constructor, int(), by default, the string must use base 10. If conversion from a different base is desired, that
base can be indicated as a second, optional, parameter. For example, the expression int(7f, 16) evaluates to the integer 127.',0);
INSERT INTO "cards" VALUES (1699,1,'What does Patricia in a Patricia trie stand for?','PATRICIA: practical algorithm to retrieve information coded in alphanumeric',0);
INSERT INTO "cards" VALUES (1700,1,'What is the ordering relationship in a sequence in Python?','The list, tuple, and str classes are sequence types in Python, representing a collection of values in which the order is significant.',0);
INSERT INTO "cards" VALUES (1701,1,'How can you copy a list in Python?','Because an existing list is itself iterable, the syntax backup = list(data) can be used to construct a new list instance referencing the same contents as the original.',0);
INSERT INTO "cards" VALUES (1702,1,'How can you represent a 1-element tuple?','(17,) is a one-element tuple',0);
INSERT INTO "cards" VALUES (1703,1,'How can you make long, multi-line string literal in Python?','Python supports using the delimiter or """ to begin and end a string literal.',0);
INSERT INTO "cards" VALUES (1704,1,'What types of objects can be added to a Python set?','Only instances of immutable types can be added to a Python set, since they are used as hash keys.',0);
INSERT INTO "cards" VALUES (1705,1,'How can you represent an empty set in Python?','The constructor syntax set() produces an empty set.',0);
INSERT INTO "cards" VALUES (1706,1,'How can you initialize a Python dictionary with values already declared elsewhere?','The constructor accepts a sequence of key-value pairs as a parameter, as in dict(pairs) with:
pairs = [(''ga'', ''Irish''), (''de'', ''German'')].',0);
INSERT INTO "cards" VALUES (1707,1,'How can you tell that two Python objects are the same object?','The expression a is b evaluates to True, precisely when identifiers a and b are aliases for the same object.',0);
INSERT INTO "cards" VALUES (1708,1,'What is the division rule in Python?','Python guarantees that q*d + r will equal n.
d = denominator
q = quotient
r = remainder
n = numerator',0);
INSERT INTO "cards" VALUES (1709,1,'How do you express a set intersection in Python?','s1 & s2 the intersection of s1 and s2',0);
INSERT INTO "cards" VALUES (1710,1,'How do you represent a set union in Python?','s1 | s2 the union of s1 and s2',0);
INSERT INTO "cards" VALUES (1711,1,'In Python, how can you get the set of elements in s1 but not s2?','s1 − s2',0);
INSERT INTO "cards" VALUES (1712,1,'In Python, how can you get the set of elements in precisely one of s1 or s2?','s1 ˆ s2',0);
INSERT INTO "cards" VALUES (1713,1,'How can you test that two dictionaries contain the same set of key-value pairs?','Dictionaries support the notion of equivalence, with d1 == d2 if the two dictionaries contain the same set of key-value pairs.',0);
INSERT INTO "cards" VALUES (1714,1,'In Python, how can you extend a list with two more elements? (adding to the original list, not making a new one)','beta += [4, 5]',0);
INSERT INTO "cards" VALUES (1715,1,'In Python, how do you reassign a list beta to a new list [1, 2, 3, 4, 5, 6, 7]? (making a new object instead of adding to the original)','beta = beta + [6, 7]',0);
INSERT INTO "cards" VALUES (1716,1,'How does an expression like 1 <= x + y <= 10 save computation?','The expression 1 <= x + y <= 10 is evaluated as the compound (1 <= x + y) and (x + y <= 10), but without computing the intermediate value x + y twice.',0);
INSERT INTO "cards" VALUES (1717,1,'What happens when you call a Python function?','Each time a function is called, Python creates a dedicated activation record that stores information relevant to the current call. This activation record includes what is known as a namespace to manage all identifiers that have local scope within the current call.',0);
INSERT INTO "cards" VALUES (1718,1,'How does Python support polymorphism, method overloading?','Python provides means for functions to support more than one possible calling signature using default parameter values. Such a function is said to be polymorphic.',0);
INSERT INTO "cards" VALUES (1719,1,'What is the rule for default parameters in Python?','It is illegal to define a function with a signature such as bar(a, b=15, c) with b having a default value, yet not the subsequent c; if a default parameter value is present for one parameter, it must be present for all further parameters.',0);
INSERT INTO "cards" VALUES (1720,1,'What kind of exception is raised in an attempt to access a nonexistent element from a set or dictionary?','KeyError',0);
INSERT INTO "cards" VALUES (1721,1,'What kind of exception is raised on a sequence when syntax such as data[k] is used with an integer k that is not a valid index for the given sequence?','IndexError',0);
INSERT INTO "cards" VALUES (1722,1,'How can you test that a function parameter x is of type int or float?','if not isinstance(x, (int, float)):',0);
INSERT INTO "cards" VALUES (1723,1,'When should you use try/except?','The try-except clause is best used when there is reason to believe that the exceptional case is relatively unlikely, or when it is prohibitively expensive to proactively evaluate a condition to avoid the exception.',0);
INSERT INTO "cards" VALUES (1724,1,'How can you catch an exception of more than one type?','except (ValueError, EOFError):',0);
INSERT INTO "cards" VALUES (1725,2,'How can you catch a Python exception, handle it, and then re-raise the exception?','except EOFError: 
    print( There was an unexpected error reading input. ) 
    raise',0);
INSERT INTO "cards" VALUES (1726,1,'Can you use return and yield together?','It is illegal to combine yield and return statements in the same implementation, other than a zero-argument return statement to cause a generator to end its execution.',0);
INSERT INTO "cards" VALUES (1727,1,'Can you define a tuple without parentheses?','Yes:
data = 2, 4, 6, 8',0);
INSERT INTO "cards" VALUES (1728,1,'How can you get a list of variables in the local namespace?','Calls to dir() and vars() report on the most locally enclosing namespace in which they are executed',0);
INSERT INTO "cards" VALUES (1729,1,'What are first-class objects?','First-class objects are instances of a type that can be assigned to an identifier, passed as a parameter, or returned by a function.',0);
INSERT INTO "cards" VALUES (1730,1,'What does Python''s sys module do?','Provides additional level of interaction with the Python interpreter.',0);
INSERT INTO "cards" VALUES (1731,1,'What does Python''s os module do?','Provides support for interactions with the operating system.',0);
INSERT INTO "cards" VALUES (1732,1,'What is the significance of using a seed value?','The sequence of numbers generated for a given seed will always be the same.',0);
INSERT INTO "cards" VALUES (1733,1,'What is an object?','An instance of a class.',0);
INSERT INTO "cards" VALUES (1734,1,'What is the convention for non-public data members and member functions in Python?','By convention, names of members of a class (both data members and member functions) that start with a single underscore character (e.g., _secret) are assumed to be nonpublic and should not be relied upon.',0);
INSERT INTO "cards" VALUES (1735,1,'Python provides an automatic iterator implementation for any class that implements what two methods?','__len__ and __getitem__',0);
INSERT INTO "cards" VALUES (1736,1,'What is the type of evaluation that range() uses?','It uses a strategy known as lazy evaluation.',0);
INSERT INTO "cards" VALUES (1737,1,'What is the formula for the number of elements in the range?','max(0, (stop − start + step − 1) // step)',0);
INSERT INTO "cards" VALUES (1738,1,'How can you call super in a constructor?','super().__init__(arg1, arg2)',0);
INSERT INTO "cards" VALUES (1739,1,'What is the template method pattern?','The template method pattern is when an abstract base class provides concrete behaviors that rely upon calls to other abstract behaviors.

The template method pattern describes a generic computation mechanism that can be specialized for a particular application by redefining certain steps. To allow customization, the primary algorithm calls auxiliary functions known as hooks at designated steps of the process.',0);
INSERT INTO "cards" VALUES (1740,2,'How can you define a class constant in Python?','class PredatoryCreditCard(CreditCard): 
    OVERLIMIT FEE = 5',0);
INSERT INTO "cards" VALUES (1741,1,'What is an important caveat of __slots__ in an inheritance hierarchy?','When inheritance is used, if the base class declares __slots__, a subclass must also declare __slots__ to avoid creation of instance dictionaries. The declaration in the subclass should only include names of supplemental methods that are newly introduced.',0);
INSERT INTO "cards" VALUES (1742,1,'What is dynamic dispatch?','Python uses what is known as dynamic dispatch (or dynamic binding) to determine, at run-time, which implementation of a function to call based upon the type of the object upon which it is invoked.',0);
INSERT INTO "cards" VALUES (1743,1,'What is static dispatching?','Making a compile-time decision as to which version of a function to call, based upon the declared type of a variable.',0);
INSERT INTO "cards" VALUES (1744,1,'What is the total of sum(1 + 2 + 4 + 8 + · · · + 2^(n−1)) ?','2^n − 1',0);
INSERT INTO "cards" VALUES (1745,1,'What is the definition of Big-O (upper bound)?','We say that f(n) is O(g(n)) if there is a real constant c > 0 and an integer constant n0 ≥ 1 such that f(n) ≤ cg(n), for n ≥ n0.',0);
INSERT INTO "cards" VALUES (1746,1,'How can you get a string of letters from another string, using only the alphanumeric (one-liner)?','letters = ''''.join(c for c in document if c.isalpha())',0);
INSERT INTO "cards" VALUES (1747,1,'In Python, how can you get [''b'', ''i'', ''r'', ''d''] from "bird"?','list(bird)',0);
INSERT INTO "cards" VALUES (1748,1,'How can you get a value in a list of length 26, with index i rotated r positions to the right?','(i + r) mod 26',0);
INSERT INTO "cards" VALUES (1749,1,'How can you get the ASCII distance from A of a character c?','j = ord(c) − ord(''A'')',0);
INSERT INTO "cards" VALUES (1750,1,'Describe the adapter design pattern.','The adapter design pattern applies to any context where we effectively want to modify an existing class so that its methods match those of a related, but different, class or interface.',0);
INSERT INTO "cards" VALUES (1751,1,'What data structure can be used to reverse a sequence?','As a consequence of the LIFO protocol, a stack can be used as a general tool to reverse a data sequence.',0);
INSERT INTO "cards" VALUES (1752,1,'When using a circular array queue, when we dequeue an element and want to "advance" the front index, what is the arithmetic for computing the front of the queue f?','f = (f + 1) % N',0);
INSERT INTO "cards" VALUES (1753,1,'What is the drawback of amortized bounds?','Amortized bounds for operations may be unacceptable in real-time systems.',0);
INSERT INTO "cards" VALUES (1754,1,'Describe briefly the composition pattern?','We define a single object that is composed of two or more other objects.',0);
INSERT INTO "cards" VALUES (1755,1,'What is another name for a heuristic?','A rule of thumb.',0);
INSERT INTO "cards" VALUES (1756,1,'What is a benefit of data accesses for arrays?','Arrays provide O(1)-time access to an element based on an integer index.',0);
INSERT INTO "cards" VALUES (1757,1,'Operations with equivalent asymptotic bounds typically run a constant factor more efficiently with an _____-based structure versus a _____ structure.','array
linked',0);
INSERT INTO "cards" VALUES (1758,1,'______-based representations typically use proportionally less memory than _______ structures.','array
linked',0);
INSERT INTO "cards" VALUES (1759,1,'______-based structures provide worst-case time bounds for their operations.','link',0);
INSERT INTO "cards" VALUES (1760,1,'_______-based structures support O(1)-time insertions and deletions at arbitrary positions.','link',0);
INSERT INTO "cards" VALUES (1761,1,'How can u be an ancestor of v?','A node u is an ancestor of a node v if u = v or u is an ancestor of the parent of v.',0);
INSERT INTO "cards" VALUES (1762,1,'What does an ordered tree mean?','A tree is ordered if there is a meaningful linear order among the children of each node.',0);
INSERT INTO "cards" VALUES (1763,1,'What is a proper binary tree?','A binary tree is proper if each node has either zero or two children.',0);
INSERT INTO "cards" VALUES (1764,1,'How many nodes are in a tree of height d?','In a binary tree, level 0 has at most one node (the root), level 1 has at most two nodes (the children of the root), level 2 has at most four nodes, and so on. In general, level d has at most 2^d nodes.',0);
INSERT INTO "cards" VALUES (1765,1,'What is a drawback of an array representation of trees?','Some update operations for trees cannot be efficiently supported. For example, deleting a node and promoting its child takes O(n) time because it is not just the child that moves locations within the array, but all descendants of that child.',0);
INSERT INTO "cards" VALUES (1766,1,'What is the bounds on the height of a binary tree of n nodes?','as small as log(n + 1) − 1
as large as n − 1',0);
INSERT INTO "cards" VALUES (1767,1,'What are the time complexities of locating the last position of a heap, as required for add and remove min, in an array representation or tree representation?','Locating the last position of a heap, as required for add and remove min, can be performed in O(1) time for an array-based representation, or O(log n) time for a linked-tree representation.',0);
INSERT INTO "cards" VALUES (1768,1,'A heap is a complete binary tree with every level being full. What is it''s height?','h = log(n + 1) − 1',0);
INSERT INTO "cards" VALUES (1769,1,'What is the time complexity to produce a list of the k largest values from an iterable, using a heap?','O(n + k log n)
n: heapify
k: accesses
log n: cost per access',0);
INSERT INTO "cards" VALUES (1770,1,'What is a strict weak order?','It allows for keys to be considered equal to each other.',0);
INSERT INTO "cards" VALUES (1771,1,'How you can read a file and get the unique words from a file?','for piece in open(filename).read().lower().split():',0);
INSERT INTO "cards" VALUES (1772,1,'What are some good numbers to hash with character strings that are English words, to create a good hash?','33, 37, 39, and 41',0);
INSERT INTO "cards" VALUES (1773,1,'What is the standard mechanism for computing hash codes in Python?','A built-in function with signature hash(x) that returns an integer value that serves as the hash code for object x.',0);
INSERT INTO "cards" VALUES (1774,2,'How can you implement a hash for your user-defined class in Python?','def __hash__(self):
    return hash( (self. red, self. green, self. blue) ) # hash combined tuple',0);
INSERT INTO "cards" VALUES (1775,1,'What is the second action performed as part of an overall hash function called that fits the hash into the storage space?','compression function',0);
INSERT INTO "cards" VALUES (1776,1,'What is the caveat for choosing a prime for N for your hash table size?','Choosing N to be a prime number is not always enough, for if there is a repeated pattern of hash codes of the form p*N + q for several different p''s, then there will still be collisions.',0);
INSERT INTO "cards" VALUES (1777,1,'What is MAD and what is its formula?','Multiply-Add-and-Divide
[(a*i + b) mod p] mod N',0);
INSERT INTO "cards" VALUES (1778,1,'What is the rule of thumb when coming up with the right load factor?','The ratio λ = n/N, called the load factor of the hash table, should be bounded by a small constant, preferably below 1. As long as λ is O(1), the core operations on the hash table run in O(1) expected time.',0);
INSERT INTO "cards" VALUES (1779,1,'What does open addressing require?','Open addressing requires that the load factor is always at most 1 and that items are stored directly in the cells of the bucket array itself.',0);
INSERT INTO "cards" VALUES (1780,1,'What is quadratic probing?','Another open addressing strategy that iteratively tries the buckets A[(h(k) + f (i)) mod N], for i = 0,1,2, . . ., where f(i) = i^2, until finding an empty bucket.',0);
INSERT INTO "cards" VALUES (1781,1,'What does quadratic probing suffer from?','It creates its own kind of clustering, called secondary clustering, where the set of filled array cells still has a non-uniform pattern, even if we assume that the original hash codes are distributed uniformly.',0);
INSERT INTO "cards" VALUES (1782,1,'What is the double hashing strategy?','In this approach, we choose a secondary hash function, h'', and if h maps some key k to a bucket A[h(k)] that is already occupied, then we iteratively try the buckets A[(h(k) + f(i)) mod N] next, for i = 1,2,3, . . where f(i) = i * h''(k).
In this scheme, the secondary hash function is not allowed to evaluate to zero; a common choice is h(k) = q−(k mod q), for some prime number q < N. Also, N should be a prime.',0);
INSERT INTO "cards" VALUES (1783,1,'What is the optimal load factor for hashing using separate chaining?','λ < 0.9',0);
INSERT INTO "cards" VALUES (1784,1,'What is the optimal load factor for hashing using linear probing?','λ < 0.5',0);
INSERT INTO "cards" VALUES (1785,1,'What is the load factor of Python''s implementation of hash tables?','λ < 2/3',0);
INSERT INTO "cards" VALUES (1786,1,'What is a sorted table implementation of a hash table best suited for?','Sorted tables are primarily used in situations where we expect many searches but relatively few updates.',0);
INSERT INTO "cards" VALUES (1787,1,'The O(log n) time bounds for skip lists extend to what operations over a sorted list?','The skip list has the same logarithmic time bounds for searching as is achieved by the binary search algorithm, yet it extends that performance to update methods when inserting or deleting items. Nevertheless, the bounds are expected for the skip list, while binary search has a worst-case bound with a sorted table.',0);
INSERT INTO "cards" VALUES (1788,1,'How does a skip list compare to an AVL tree or other balanced search trees?','Optimized skip lists are faster in practice than AVL trees and other balanced search trees.',0);
INSERT INTO "cards" VALUES (1789,1,'What are skip lists a simple implementation of?','Skip lists provide a simple implementation of a sorted map.',0);
INSERT INTO "cards" VALUES (1790,1,'What is the worst-case running time for performing the __getitem__, __setitem__, and __delitem__ map operations in a skip list S with n entries and height h?','O(n + h)',0);
INSERT INTO "cards" VALUES (1791,1,'What is the height of a skip list S with n items with high probability?','O(log n)',0);
INSERT INTO "cards" VALUES (1792,1,'What is a bag?','A multiset (also known as a bag) is a set-like container that allows duplicates.',0);
INSERT INTO "cards" VALUES (1793,1,'What is a multiset?','A multiset (also known as a bag) is a set-like container that allows duplicates.',0);
INSERT INTO "cards" VALUES (1794,1,'What is a multimap?','A multimap is similar to a traditional map, in that it associates values with keys; however, in a multimap the same key can be mapped to multiple values. For example, the index of this book maps a given term to one or more locations at which the term occurs elsewhere in the book.',0);
INSERT INTO "cards" VALUES (1795,1,'How can you create an instance of the class you''re in?','thing = type(self)()',0);
INSERT INTO "cards" VALUES (1796,1,'What is a way to implement a multiset?','A way to implement a multiset is by using a map in which the map key is a (distinct) element of the multiset, and the associated value is a count of the number of occurrences of that element within the multiset.',0);
INSERT INTO "cards" VALUES (1797,1,'What is a predecessor?','Return the position containing the greatest key that is less than that of position p (i.e., the position that would be visited immediately before p in an inorder traversal)',0);
INSERT INTO "cards" VALUES (1798,1,'What is a successor?','The position containing the least key that is greater than that of position p (i.e., the position that would be visited immediately after p in an inorder traversal)',0);
INSERT INTO "cards" VALUES (1799,1,'What is an example of the factory method design pattern?','We provide a subclass the means to control the type of node that is created within methods of the parent class, by inheriting and augmenting.',0);
INSERT INTO "cards" VALUES (1800,1,'What is the special property of AVL trees?','Height-Balance Property: For every position p of T, the heights of the children of p differ by at most 1.',0);
INSERT INTO "cards" VALUES (1801,1,'What does AVL stand for?','Adel''son-Vel''skii and Landis',0);
INSERT INTO "cards" VALUES (1802,1,'What is the maximum height of an AVL tree storing n entries?','At most 2 log n + 2',0);
INSERT INTO "cards" VALUES (1803,1,'What is special about the self-balancing property of a splay tree?','A splay tree does not strictly enforce a logarithmic upper bound on the height of the tree. In fact, there are no additional height, balance, or other auxiliary data associated with the nodes of this tree.',0);
INSERT INTO "cards" VALUES (1804,1,'Why is splaying vital to the self-balancing property of a splay tree?','Splaying allows us to guarantee a logarithmic amortized running time, for insertions, deletions, and searches.',0);
INSERT INTO "cards" VALUES (1805,1,'How does a red-black tree relate to a (2,4) tree?','Given a red-black tree, we can construct a corresponding (2,4) tree by merging every red node w into its parent, storing the entry from w at its parent, and with the children of w becoming ordered children of the parent.',0);
INSERT INTO "cards" VALUES (1806,1,'What is the time complexity advantage of a red-black tree?','The primary advantage of a red-black tree is that an insertion or deletion requires only a constant number of restructuring operations.',0);
INSERT INTO "cards" VALUES (1807,1,'What is the floor?','the floor of x, that is, the largest integer k, such that k ≤ x',0);
INSERT INTO "cards" VALUES (1808,1,'What is the ceiling?','the ceiling of x, that is, the smallest integer m, such that x ≤ m',0);
INSERT INTO "cards" VALUES (1809,1,'What is the running time of merge?','O(len(n1) + len(n2))',0);
INSERT INTO "cards" VALUES (1810,1,'What is bottom-up merge sort?','The main idea is to perform merge-sort bottom-up, performing the merges level by level going up the merge-sort tree. Given an input array of elements, we begin by merging every successive pair of elements into sorted runs of length two. We merge these runs into runs of length four, merge these new runs into runs of length eight, and so on, until the array is sorted.',0);
INSERT INTO "cards" VALUES (1811,1,'What is the worst-case lower bound on comparison-based sorting?','Comparison-based sorting has an Ω(n log n) worst-case lower bound on its running time.',0);
INSERT INTO "cards" VALUES (1812,1,'What is the optimal relationship of range N of keys to sequence size n in bucket sort?','Bucket-sort is efficient when the range N of values for the keys is small compared to the sequence size n, say N = O(n) or N = O(n log n). Still, its performance deteriorates as N grows compared to n.',0);
INSERT INTO "cards" VALUES (1813,1,'What is the rule of thumb in sorting on 2 or more columns across a stable sort?','By first stably sorting by the second component and then again by the first component, we guarantee that if two entries are equal in the second sort (by the first component), then their relative order in the starting sequence (which is sorted by the second component) is preserved.',0);
INSERT INTO "cards" VALUES (1814,1,'What is the time complexity of radix sort across d keys of size N?','Let S be a sequence of n key-value pairs, each of which has a key (k1,k2, . . . ,kd), where ki is an integer in the range [0,N − 1] for some integer N ≥ 2. We can sort S lexicographically in time O(d(n + N)) using radix-sort.',0);
INSERT INTO "cards" VALUES (1815,1,'What is the running time of insertion-sort  on n items where m is the number of inversions (the number of pairs of elements out of order)?','O(n + m)',0);
INSERT INTO "cards" VALUES (1816,1,'In what case does insertion sort beat quicksort or merge sort?','For sorting sequences that are already “almost” sorted.',0);
INSERT INTO "cards" VALUES (1817,1,'Is heap sort stable?','No. A standard heap-sort does not provide a stable sort, because of the swapping of elements.',0);
INSERT INTO "cards" VALUES (1818,1,'Even though it''s O(n^2)-time worst-case performance makes quicksort susceptible in real-time applications, what can we expect of its performance?','We expect its performance to be O(n log n)-time, and experimental studies have shown that it outperforms both heap-sort and merge-sort on many tests.',0);
INSERT INTO "cards" VALUES (1819,1,'What is the shining using case of merge sort?','Merge-sort is an excellent algorithm for situations where the input is stratified across various levels of the computer''s memory hierarchy (e.g., cache, main memory, external memory). In these contexts, the way that merge-sort processes runs of data in long merge streams makes the best use of all the data brought as a block into a level of memory, thereby reducing the total number of memory transfers.',0);
INSERT INTO "cards" VALUES (1820,1,'What is Timsort and why is it a great sorting algorithm?','Tim-sort (designed by Tim Peters), which is essentially a bottom-up merge-sort that takes advantage of some initial runs in the data while using insertion-sort to build additional runs.',0);
INSERT INTO "cards" VALUES (1821,1,'How can you sort a sequence of strings by their length?','foo.sort(key=len)
or
sorted(foo, key=len)',0);
INSERT INTO "cards" VALUES (1822,1,'What design pattern does Python use with the key parameter when sorting?','decorate-sort-undecorate',0);
INSERT INTO "cards" VALUES (1823,1,'What are order statistics?','Queries that ask for an element with a given rank.',0);
INSERT INTO "cards" VALUES (1824,1,'What is prune-and-search or decrease-and-conquer?','We solve a given problem that is defined on a collection of n objects by pruning away a fraction of the n objects and recursively solving the smaller problem.',0);
INSERT INTO "cards" VALUES (1825,1,'When generating a Huffman code, what is an important restriction on the encoding for each element?','In order to avoid ambiguities, we insist that no code-word in our encoding be a prefix of another code-word in our encoding. Such a code is called a prefix code, and it simplifies the decoding of Y to retrieve X.',0);
INSERT INTO "cards" VALUES (1826,1,'What is the time complexity when Huffman’s algorithm constructs an optimal prefix code for a string of length n with d distinct characters?','O(n + d log d)',0);
INSERT INTO "cards" VALUES (1827,1,'What is the greedy-choice property?','This is the property that a global optimal condition can be reached by a series of locally optimal choices (that is, choices that are each the current best from among the possibilities available at the time), starting from a well-defined starting condition.',0);
INSERT INTO "cards" VALUES (1828,1,'What is the use case when preprocessing a text is worth it?','Where a series of queries is performed on a fixed text, so that the initial cost of preprocessing the text is compensated by a speedup in each subsequent query.',0);
INSERT INTO "cards" VALUES (1829,1,'What is the main application for tries?','information retrieval',0);
INSERT INTO "cards" VALUES (1830,1,'What are the primary query operations that tries support?','pattern matching and prefix matching',0);
INSERT INTO "cards" VALUES (1831,1,'What solves the space inefficiency in the standard trie?','Compressed trie, which is also known (for historical reasons) as the Patricia trie.',0);
INSERT INTO "cards" VALUES (1832,1,'What is the advantage of a compressed trie over a standard trie?','The number of nodes of the compressed trie is proportional to the number of strings and not to their total length.',0);
INSERT INTO "cards" VALUES (1833,1,'What is a suffix trie (also known as a suffix tree or position tree) of string X?','The case when the strings in the collection S are all the suffixes of a string X.',0);
INSERT INTO "cards" VALUES (1834,1,'How does a suffix trie save space over a list of all suffixes?','Storing all the suffixes of X explicitly would take O(n^2) space. Even so, the suffix trie represents these strings implicitly in O(n) space.',0);
INSERT INTO "cards" VALUES (1835,1,'What is the upper bound on character comparisons in Boyer-Moore?','At most 3n character comparisons in the worst case, and this bound is tight.',0);
INSERT INTO "cards" VALUES (1836,1,'What is a mixed graph?','A graph that has both directed and undirected edges.',0);
INSERT INTO "cards" VALUES (1837,1,'What is a strongly connected graph?','A directed graph G is strongly connected if for any two vertices u and v of G, u reaches v and v reaches u.',0);
INSERT INTO "cards" VALUES (1838,1,'What is an adjacency map?','An adjacency map is very similar to an adjacency list, but the secondary container of all edges incident to a vertex is organized as a map, rather than as a list, with the adjacent vertex serving as a key. This allows for access to a specific edge (u, v) in O(1) expected time.',0);
INSERT INTO "cards" VALUES (1839,1,'What can we claim of the performance of adjacency map?','We find that it essentially achieves optimal running times for all methods, making it an excellent all-purpose choice as a graph representation.',0);
INSERT INTO "cards" VALUES (1840,1,'What is the upper bound on the number of edges in a graph?','n^2',0);
INSERT INTO "cards" VALUES (1841,1,'How can an adjacency matrix be made space efficient?','If edges do not have auxiliary data, a Boolean adjacency matrix can use one bit per edge slot, such that A[i, j] = True if and only if associated (u, v) is an edge.',0);
INSERT INTO "cards" VALUES (1842,1,'What are some uses of DFS for testing of properties of graphs?','- whether there is a path from one vertex to another (transitive closure)
- whether or not a graph is connected',0);
INSERT INTO "cards" VALUES (1843,1,'What is a tree edge and what is a non-tree edge in DFS?','Whenever an edge e = (u,v) is used to discover a new vertex v during the DFS algorithm, that edge is known as a discovery edge or tree edge, as oriented from u to v. All other edges that are considered during the execution of DFS are known as non-tree edges, which take us to a previously visited vertex.',0);
INSERT INTO "cards" VALUES (1844,1,'What is special about discovery edges in DFS?','Since we only follow a discovery edge when we go to an unvisited vertex, we will never form a cycle with such edges. Therefore, the discovery edges form a connected subgraph without cycles, hence a tree. Moreover, this is a spanning tree because, as we have just seen, the depth-first search visits each vertex in the connected component of s.',0);
INSERT INTO "cards" VALUES (1845,1,'What is the runtime of DFS starting at vertex s, where ns is the number of vertices reachable from s, and ms is the number of incident edges to those vertices?','O(ns + ms)',0);
INSERT INTO "cards" VALUES (1846,1,'What is the running time of BFS if ns is the number of vertices reachable from vertex s, and ms ≤ m is the number of incident edges to those vertices?','Similar to the one of DFS, with the algorithm running in O(n + m) time, or more specifically, in O(ns + ms) time.',0);
INSERT INTO "cards" VALUES (1847,1,'Under what circumstances does DFS do better than BFS in directed graphs?','- finding a directed cycle in the graph
- identifying the strongly connected components',0);
INSERT INTO "cards" VALUES (1848,1,'What is the transitive closure of a directed graph?','It''s a directed graph where the vertices are the same as G, but vertices are connected directly when a path exists between those vertices in G.',0);
INSERT INTO "cards" VALUES (1849,1,'What is the runtime of generating the transitive closure of a directed graph and what method can be used?','Could use Floyd-Warshall, but it is O(n^3), and you may not need the minimum path weight.
Repeated calls to DFS results in better asymptotic performance when the graph is sparse and represented using an adjacency list or adjacency map. In that case, a single DFS runs in O(n + m) time, and so the transitive closure can be computed in O(n^2 + nm) time, which is preferable to O(n^3).',0);
INSERT INTO "cards" VALUES (1850,1,'What is the time and space complexity of topological sort?','Let G be a directed graph with n vertices and m edges, using an adjacency list representation. The topological sorting algorithm runs in O(n + m) time using O(n) auxiliary space, and either computes a topological ordering of G or fails to include some vertices, which indicates that G has a directed cycle.',0);
INSERT INTO "cards" VALUES (1851,1,'What is the running time for Dijkstra''s algorithm?','O((n + m)log n)',0);
INSERT INTO "cards" VALUES (1852,1,'What is the running time of Kruskal''s algorithm?','O(m log n)

For a connected graph, m ≥ n − 1, and therefore, the bound of O(m log n) time for ordering the edges dominates the time for managing the clusters (which is log*n).',0);
INSERT INTO "cards" VALUES (1853,1,'What is another name of the log-star function?','The inverse of the tower-of-twos function.',0);
INSERT INTO "cards" VALUES (1854,1,'What does log∗ n mean?','log∗ n is the number of times that one can iteratively take the logarithm (base 2) of a number before getting a number smaller than 2.',0);
INSERT INTO "cards" VALUES (1855,1,'What is internal fragmentation?','Internal fragmentation occurs when a portion of an allocated memory block is unused.',0);
INSERT INTO "cards" VALUES (1856,1,'What is the worst-fit algorithm?','The worst-fit algorithm searches the free list to find the largest hole of available memory.',0);
INSERT INTO "cards" VALUES (1857,1,'Why is the worst-fit algorithm the best for avoiding internal fragmentation?','The worst-fit algorithm attempts to keep contiguous sections of free memory as large as possible.',0);
INSERT INTO "cards" VALUES (1858,1,'How does in-place DFS work and how does it save precious space when performing garbage collection?','The main idea for performing DFS in-place is to simulate the recursion stack using the edges of the graph (which in the case of garbage collection correspond to object references). When we traverse an edge from a visited vertex v to a new vertex w, we change the edge (v, w) stored in v''s adjacency list to point back to v''s parent in the DFS tree. When we return back to v (simulating the return from the "recursive" call at w), we can then switch the edge we modified to point back to w, assuming we have some way to identify which edge we need to change back.',0);
INSERT INTO "cards" VALUES (1859,1,'What is internal memory?','Main memory or core memory.',0);
INSERT INTO "cards" VALUES (1860,1,'What is external memory?','Usually consists of disks, CD drives, DVD drives, and/or tapes.',0);
INSERT INTO "cards" VALUES (1861,1,'What is a common adage among computer architects?','A program spends 90 percent of its time in 10 percent of its code.',0);
INSERT INTO "cards" VALUES (1862,1,'What are the best to worst caching strategies?','The LRU strategy has been shown to be usually superior to the FIFO strategy, which is usually better than the random strategy.',0);
INSERT INTO "cards" VALUES (1863,1,'What is I/O complexity?','Minimize the number of disk transfers needed to perform a query or update.',0);
INSERT INTO "cards" VALUES (1864,1,'How many children does each node of a (2, 4) tree have?','2-4',0);
INSERT INTO "cards" VALUES (1865,1,'How many children does each node of a (a, b) tree have?','a-b',0);
INSERT INTO "cards" VALUES (1866,1,'What is an (a, b) tree?','An (a, b) tree is a multiway search tree such that each node has between a and b children and stores between a − 1 and b − 1 entries. The algorithms for searching, inserting, and removing entries in an (a, b) tree are straightforward generalizations of the corresponding ones for (2, 4) trees.',0);
INSERT INTO "cards" VALUES (1867,1,'What are the bounds on the height of an (a, b) tree storing n entries?','The height of an (a,b) tree storing n entries is Ω(log n/log b) and O(log n/log a).',0);
INSERT INTO "cards" VALUES (1868,1,'How do we select the a and b of an (a, b) tree?','To minimize disk accesses, we select the parameters a and b so that each tree node occupies a single disk block (so that f (b) = 1 if we wish to simply count block transfers).',0);
INSERT INTO "cards" VALUES (1869,1,'What is the main application of (a, b) trees?','maps stored in external memory',0);
INSERT INTO "cards" VALUES (1870,1,'What is a B-tree in relation to an (a, b) tree?','A B-tree of order d is an (a, b) tree with a = ceiling(d/2) and b = d.

We specifically choose d = (M/B) − 1 so that we can afford to keep one block from each input sequence in main memory at any given time, and to have one additional block to use as a buffer for the merged sequence.',0);
INSERT INTO "cards" VALUES (1871,1,'A B-tree with n entries has what I/O complexity and uses how many blocks?','- O(log(base B) n) for search or update operation
- uses O(n/B) blocks, where B is the size of a block',0);
INSERT INTO "cards" VALUES (1872,1,'if main memory has size M and each block has size B how many blocks can we store within main memory at any given time?','Up to M/B blocks.',0);
INSERT INTO "cards" VALUES (1873,1,'What is the I/O complexity, given an array-based sequence S of n elements stored compactly in external memory, of sorting S?','- O((n/B)log(n/B)/log(M/B)) block transfers where M is the size of the internal memory and B is the size of a block.
- O(n log n) internal computations',0);
COMMIT;
