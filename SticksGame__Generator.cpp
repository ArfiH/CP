// Author : Arfi

#include <bits/stdc++.h>

using namespace std;

int main() {
	srand(time(0));
	int n = rand() % 10 + 1;
	cout << n << "\n";
	vector <int> vec = {};
	for (int i = 0; i < n; i++) {
		int c = rand() % 20 + 1;
		bool found = false;
		for (int j = 0; j < vec.size(); j++) {
			if (vec.at(j) == c) {
				found = true;
				i -= 1;
				break;
			}
		}
		if (!found) {
			int v = rand() % 10 + 1;
			vec.push_back(c);
			cout << c << " " << v << "\n";
		}
	}
	cout << "0\n";
}





