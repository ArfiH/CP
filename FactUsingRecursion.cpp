// Author : Arfi

#include<bits/stdc++.h>

using namespace std;

int p = 1;

int fact(int n) {
	if (n == 1) return 1;
	p = n * fact(n-1);
	return p;
}

int main() {
	cout << fact(4) << "\n";
}





