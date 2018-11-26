# Bureaucratic-apparatus  - school assignment

To approve a certain matter, a bureaucratic apparatus works as follows. Each clerk begins with a document on his desk. Each clerk reads his document, stamps it and sends it to another clerk. The process completes when all clerks have the document they began with (i.e. the entire apparatus has returned to its initial state).

The process is not entirely simple, because there are rules that specify how clerks must pass documents. Specifically, for each clerk i there is a certain other clerk f(i) to whom he must pass each document that he stamps. So that documents will not accumulate at any clerk's desk, each clerk will receive documents from exactly one other clerk. Thus, at each step each clerk receives one document and sends one document onward, performing the same work over and over again. In other words, the clerks permute the documents after each stamping. And because an office is an office, some clerks might stamp the same document more than once.

Design an algorithm that for a given permutation f determines the mimimum number of steps (greater than zero) that it will take for the approval process to complete. In other words, this is the number of times that we must compose f with itself to obtain the identity permutation (i.e. each clerk has their original document once again).

The program should read an input file pravidla.in, where the first line contains a number N indicating the number of clerks. Each of the following N lines contains a single rule written as a pair of numbers i and j, separated by a space. Each such rule states that the clerk i passes his stamped documents to clerk j (the clerks are numbered from 1 through N). The bureaucracy is insidious, so there may even exist rules of the type i i, i.e. the i-th clerk passes documents to himself.

Write the number of steps to standard output (in decimal representation).

Note: All numbers will fit into a 32-bit integer, and all rules will fit into memory.
