#!/usr/bin/python3
import sys
import os
from optparse import OptionParser

# Supported file extensions
supported_ext = ['.c', '.h', '.cpp', '.hpp', '.java', '.s', '.S']

# Function to print usage instructions
def usage(quit=False):
    print("Usage:")
    print("python <path/to/>cscope_multifolders.py [--exclude folder1,folder2,...] [subfolder1 [subfolder2 [...]]]")
    print("\tWithout sub-folders specified, all files and subfolders in PWD are scanned.")
    print("\tUse --exclude to specify folders to exclude from scanning (comma-separated).")
    if quit:
        sys.exit(1)

# Function to list all files in the given directory and its subdirectories, excluding specified folders
def list_files_with_supported_extensions(root_dir, exclude_folders):
    files_list = []
    for dirpath, _, filenames in os.walk(root_dir):
        # Skip excluded directories
        if any(os.path.commonpath([dirpath, os.path.abspath(excluded)]) == os.path.abspath(excluded) for excluded in exclude_folders):
            continue
        for filename in filenames:
            if os.path.splitext(filename)[1] in supported_ext:
                files_list.append(os.path.join(dirpath, filename))
    return files_list

# Main function
def main():
    parser = OptionParser()
    parser.add_option("--exclude", dest="exclude", default="", 
                      help="Comma-separated list of folders to exclude")
    (options, args) = parser.parse_args()

    # Parse excluded folders from the comma-separated string
    exclude_folders = [os.path.abspath(folder) for folder in options.exclude.split(",") if folder]

    if len(args) == 0:  # No arguments, scan the current directory
        folders_to_scan = [os.getcwd()]
    else:
        folders_to_scan = args

    CSCOPE_FILE = 'cscope.files'
    CSCOPE_DB = 'cscope.out'

    # Remove existing cscope.files if it exists
    if os.path.exists(CSCOPE_FILE):
        os.remove(CSCOPE_FILE)

    # Collect all matching files
    all_files = []
    for folder in folders_to_scan:
        if not os.path.exists(folder):
            print(f"WARNING: Path '{folder}' does not exist!")
            continue

        print(f"Scanning folder: {folder}")
        fullpath = os.path.abspath(folder)
        if os.path.isdir(fullpath):
            all_files.extend(list_files_with_supported_extensions(fullpath, exclude_folders))
        else:
            print(f"WARNING: '{fullpath}' is not a directory and will be skipped.")

    # Write collected files to cscope.files, ensuring paths are quoted
    with open(CSCOPE_FILE, 'w') as cscope_file:
        for filepath in all_files:
            # Quote the file paths to handle spaces
            cscope_file.write(f'"{filepath}"\n')

    print(f"Collected {len(all_files)} files into '{CSCOPE_FILE}'.")

    # Check if cscope.out exists to determine the command
    if os.path.exists(CSCOPE_DB):
        print(f"cscope database '{CSCOPE_DB}' found. Updating database...")
        os.system("cscope -b -q -u -v")  # Update the database
    else:
        print(f"cscope database '{CSCOPE_DB}' not found. Rebuilding database...")
        os.system("cscope -b -q -v")  # Build the database

if __name__ == "__main__":
    main()
