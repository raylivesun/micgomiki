#if defined (_MSC_VER) && (_MSC_VER >= 1200)
#define _CRT_SECURE_NO_WARNINGS
#endif

#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <cctype>


// Function to convert string to lowercase
std::string toLowerCase(const std::string& str) {
    std::string result;
    result.reserve(str.size());

    for (char c : str) {
        result += std::tolower(c);
    }

    return result;
}


// Function to sort strings by their lengths in descending order
bool compareStringsByLength(const std::string& str1, const std::string& str2) {
    return str1.length() > str2.length();
}


// Function to sort strings by their alphabetical order
bool compareStringsByAlphabeticalOrder(const std::string& str1, const std::string& str2) {
    return toLowerCase(str1) < toLowerCase(str2);
}


int main() {
    std::vector<std::string> strings = {"apple", "banana", "cherry", "date", "elderberry"};

    // Sort strings by their lengths in descending order
    std::sort(strings.begin(), strings.end(), compareStringsByLength);
    std::cout << "Strings sorted by length (descending):" << std::endl;
    for (const auto& str : strings) {
        std::cout << str << std::endl;
    }

    std::cout << std::endl;

    // Sort strings by their alphabetical order
    std::sort(strings.begin(), strings.end(), compareStringsByAlphabeticalOrder);
    std::cout << "Strings sorted by alphabetical order";
    for (const auto& str : strings) {
        std::cout << " : " << str;
    }
    std::cout << std::endl;

    return 0;
 
}

