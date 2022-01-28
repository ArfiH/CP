#include <iostream>
#include <string>

using namespace std;

int main() {
    string s;
    getline(std::cin, s, static_cast<char>(EOF));
    cout << "Entered text is:\n" << s;
}