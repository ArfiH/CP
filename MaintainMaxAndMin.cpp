#include <bits/stdc++.h>

using namespace std;

struct bag {
	int minVal, maxVal, sum;

	bag() {
		minVal = INT_MAX;
		maxVal = INT_MIN;
		sum = 0;
	}

	void insert(int x) {
		minVal = min(minVal, x);
		maxVal = max(maxVal, x);
		sum += x;
	}

	int getMin() {
		return minVal;
	}

	int getMax() {
		return maxVal;
	}

	long long getSum() {
		return sum;
	}

};

int main () {
	bag a;
	a.insert(3);
	cerr << a.getMin() << '\n' ;
	a.insert(1);

	cerr << a.getMin() << '\n';
	cerr << a.getMax() << '\n';
}