#include <bits/stdc++.h>

using namespace std;

struct Student {
	string name;
	int height;
};

bool comp (const Student& a, const Student& b);	

int main() {
	int n = 2;
	Student a[n];
	a[0].name = "Arfi";
	a[0].height = 2;
	// Student b;
	a[1].name = "Hussain";
	a[1].height = 1;
	
	sort(a, a + n, comp);
	
	// After C++11, you can do this also:
	// sort(a, a+n, [](const Student& a, const Student& b) { 
	// 	return a.height < b.height;
	// });
	
	
	cout << a[0].height << " " << a[1].height << "\n";
}


// Note: If your function returns true for both comp(a, b)
// and comp(b, a) , then Runtime Error will occur.
bool comp (const Student& a, const Student& b) {
	return a.height < b.height;
}