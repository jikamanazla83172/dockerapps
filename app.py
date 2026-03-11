# word_count.py

def count_words(filepath):
    """Counts the number of words in a given file."""
    with open(filepath, "r") as file:
        text = file.read()
        words = text.split()
        return len(words)

if __name__ == "__main__":
    import sys
    # Check if a file path was provided as an argument
    if len(sys.argv) > 1:
        path = sys.argv[1]
        print("Word count:", count_words(path))
    else:
        print("Please provide a file path as a command-line argument.")
