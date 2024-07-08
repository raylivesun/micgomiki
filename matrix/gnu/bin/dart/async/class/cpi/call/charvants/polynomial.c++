#if defined (_MSC_VER) && (_MSC_VER >= 1200)
#define _CRT_SECURE_NO_WARNINGS
#endif

#ifdef _MSC_VER
#pragma warning(push)

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
    std::vector<std::string> words = {
        "A man, a plan, a canal, Panama!",
        "racecar",
        "hello",
        "level",
        "madam",
        "Able was I ere I saw Elba"
    };

    std::sort(words.begin(), words.end(), [](const std::string& a, const std::string& b) {
        return is_palindrome(a) && !is_palindrome(b);
    });

    std::cout << "Palindromes first:" << std::endl;
    for (const auto& word : words) {
        if (is_palindrome(word)) {
            std::cout << word << std::endl;
        }
    }

    std::cout << "Non-palindromes last:" << std::endl;
    for (const auto& word : words) {
        if (!is_palindrome(word))
        {
            std::cout << word << std::endl;
        }
    }
    return 0;
}
#endif