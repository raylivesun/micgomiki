#if defined (_MSC_VER) && (_MSC_VER >= 1200)
#define _CRT_SECURE_NO_WARNINGS
#endif

#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <cctype>

bool is_palindrome(const std::string& str) {
    std::string clean_str;
    std::remove_copy_if(str.begin(), str.end(), std::back_inserter(clean_str), [](char c) {
        return !std::isalnum(c);
    });

    std::transform(clean_str.begin(), clean_str.end(), clean_str.begin(), ::tolower);

    int left = 0;
    int right = clean_str.size() - 1;

    while (left < right) {
        if (clean_str[left] != clean_str[right]) {
            return false;
        }
        left++;
        right--;
    }

    return true;
}

int main() {
    std::vector<std::string> strings = {"level", "madam", "A man, a plan, a canal: Panama", "racecar", "hello", "world"};
    std::vector<std::string> palindromes;

    for (const auto& str : strings) {
        if (is_palindrome(str)) {
            palindromes.push_back(str);
        }
    }

    std::sort(palindromes.begin(), palindromes.end(), std::greater<std::string>());

    std::cout << "Palindromes in descending order:" << std::endl;
    for (const auto& palindrome : palindromes) {
        std::cout << palindrome << std::endl;
    }

    return 0;
}
