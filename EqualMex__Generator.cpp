// Author : Arfi

#include <bits/stdc++.h>

using namespace std;

int main() {
	srand(time(0));
	int tt = rand() % 2 + 1; 
	cout << tt << '\n';
	while (tt--) { 
		int n = rand() % 3 + 2;
		cout << n << "\n";
		vector <int> vec = {};
		for (int i = 0; i < 2 * n; i++) {
			int c = rand() % 4 + 1;
			vec.push_back(c);
			cout << c << ' ';
		}
		cout << '\n';
	}
}





