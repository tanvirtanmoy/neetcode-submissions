def remove_fourth_character(word: str) -> str:
    new_word1 = word[:3]
    new_word2 = word[4:]
    return new_word1 + new_word2


# do not modify below this line
print(remove_fourth_character("NeetCode"))
print(remove_fourth_character("Hello"))
