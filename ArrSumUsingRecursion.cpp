// Author : Arfi

#include<bits/stdc++.h>

using namespace std;
int sum = 0ll;

int sumTillN(int n, vector<int> arr) {
	if (n == -1) return 0;
	return sumTillN(n - 1, arr) + arr[n];
}

int main() {
	cout << sumTillN(4, {1, 2, 3, 4, 5, 6}) << "\n";
}





