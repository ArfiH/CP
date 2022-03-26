// Author : Arfi

#include <bits/stdc++.h>

using namespace std;

int main() {
	srand(time(0));
	int tt = rand() % 3 + 1; 
	cout << tt << '\n';
	while (tt--) { 
		int n = rand() % 10 + 1;
		cout << n << "\n";
		vector <int> vec = {};
		for (int i = 0; i < n; i++) {
			int c = rand() % 20 + 1;
			vec.push_back(c);
			cout << c << ' ';
		}
		cout << '\n';
	}
}





