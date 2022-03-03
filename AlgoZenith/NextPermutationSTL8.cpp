#include <bits/stdc++.h>

using namespace std;

int main() {
	// It rearranges the range to for the next 
	// lexicographically greater permutation
	
	// To get all the permutaions make sure that you pass 
	// a sorted arr in next_permutation() parameter.

	int arr[] = {1, 2, 3, 4, 5};
	int l = sizeof(arr) / sizeof(arr[0]);
	
	cerr << l << '\n';
	do {
		for (int i = 0; i < l; i++) {
			cerr << arr[i] << " ";
		}
		cerr << '\n';
	}
	while (next_permutation(arr, arr + l));
}