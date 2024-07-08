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

// Function to sort vector of strings alphabetically and ignoring case
void sortStrings(std::vector<std::string>& strings) {
    std::sort(strings.begin(), strings.end(),
              [](const std::string& a, const std::string& b) {
                  return toLowerCase(a) < toLowerCase(b);
              });
}

// Function to remove duplicate strings from vector
void removeDuplicates(std::vector<std::string>& strings) {
    std::sort(strings.begin(), strings.end());
    strings.erase(std::unique(strings.begin(), strings.end()), strings.end());
}

// Function to count vowels in a string
int countVowels(const std::string& str) {
    int count = 0;

    for (char c : str) {
        if (std::tolower(c) == 'a' || std::tolower(c) == 'e' || std::tolower(c) == 'i' ||
            std::tolower(c) == 'o' || std::tolower(c) == 'u') {
            ++count;
        }
    }

    return count;
}

// Function to filter strings with more than 5 vowels
std::vector<std::string> filterStrings(const std::vector<std::string>& strings) {
    std::vector<std::string> filteredStrings;

    for (const std::string& str : strings) {
        if (countVowels(str) > 5) {
            filteredStrings.push_back(str);
        }
    }

    return filteredStrings;
}

int main() {
    std::vector<std::string> strings = {"Apple", "banana", "Cherry", "date", "Elderberry", "fig", "grape", "Honeydew", "Kiwi", "Lemon", "Mango", "Nectarine", "Orange", "Pineapple", "Quince", "Raspberry", "Strawberry", "Tangerine", "Umbrella", "Vinegar", "Watermelon", "Xanthium", "Yogurt", "Zucchini"};

    // Sort strings alphabetically and ignore case
    sortStrings(strings);

    // Remove duplicate strings
    removeDuplicates(strings);

    // Filter strings with more than 5 vowels
    std::vector<std::string> filteredStrings = filterStrings(strings);

    std::cout << "Sorted and filtered strings:" << std::endl;
    for (const std::string& str : filteredStrings) {
        std::cout << str << std::endl;
    }

    return 0;
}
   
