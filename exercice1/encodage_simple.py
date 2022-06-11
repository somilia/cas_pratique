import sys

# Pass arg in cmdline
plain_message = sys.argv[1]

def encodage_lettres(plain):
    encoded_message = []
    same_letters = []
    for l in plain:
        # Check the last group letter
        if len(same_letters) > 0 and l in same_letters[-1]:
            same_letters[-1].append(l)
        # New group of letter
        else:
            same_letters.append([l])
    # Reformatting the list as "4a1b..."
    for letter_group in same_letters:
        encoded_message.append(f"{len(letter_group)}{letter_group[0]}")
    return "".join(encoded_message)

print(encodage_lettres(plain_message))
    
