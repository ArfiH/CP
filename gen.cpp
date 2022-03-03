#include <bits/stdc++.h>

using namespace std;

int main() {
	srand(time(0));
	int n = rand() % 10 + 1;
	cout << n << '\n';

	for (int i = 0; i < n; i++) {
		int tmp = rand() % 10 + 1;
		cout << tmp << ' '; 
	}
	cout << '\n';
}