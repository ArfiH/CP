// C++ program to print all possible
// substrings of a given string

#include<bits/stdc++.h>
using namespace std;

vector<string> v;
// Function to print all sub strings
void subString(char str[], int n)
{
	// Pick starting point
	for (int len = 1; len <= n; len++)
	{
		// Pick ending point
		for (int i = 0; i <= n - len; i++)
		{
			// Print characters from current
			// starting point to current ending
			// point.
			int j = i + len - 1;		
			string t = "";
			for (int k = i; k <= j; k++)
				t += str[k];
			
			v.push_back(t);
		}
	}
}


string decimalToBinary(int n)
{
    //finding the binary form of the number and
    //converting it to string.
    string s = bitset<64> (n).to_string();
     
    //Finding the first occurrence of "1"
    //to strip off the leading zeroes.
    const auto loc1 = s.find('1');
     
    if(loc1 != string::npos)
        return s.substr(loc1);
     
    return "0";
}


// Driver program to test above function
int main()
{
	char str[] = "1111";
	subString(str, strlen(str));
	long long d = 0;
	for (int i = 0; i < v.size(); i++) {
		// cerr << v.at(i) << '\n';
		unsigned long long value = stoi(v.at(i), 0, 2);
		d = d ^ value;
		// cerr << "d is " << d << '\n';
		cerr << decimalToBinary(d) << '\n';
	}
	return 0;
}
