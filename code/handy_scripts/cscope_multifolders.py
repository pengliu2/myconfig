#!/usr/bin/python3
import sys
import os
import os.path


supported_ext = ['*.[chxsS]', '*.cpp', '*.java', '*.hpp']


def usage(quit=False):
    print("Usage:")
    print("python <path/to/>cscope_multifolders.py [subfolder1 [subfolder2 [...]]]")
    print("\t Without sub-folders specified, all files and subfolders in PWD are to be scanned.")
    if (quit):
        sys.exit(1)


def parse_args():
    from optparse import OptionParser
    parser = OptionParser()
    (options, args) = parser.parse_args()


def main():
    fullargs = sys.argv

    CSCOPE_FILE = 'cscope.files'
    try:
        os.remove(CSCOPE_FILE)
    except:
        pass

    for i in range(1, len(fullargs)):
        if not os.path.exists(fullargs[i]):
            print(f"WARNING: path {fullargs[i]} does not exist!")

        print(f"{fullargs[i]}")
        fullpath = os.path.abspath(fullargs[i]);
        print(f"{fullpath}")
        if os.path.isdir(os.path.abspath(fullpath)):
            for se in supported_ext:
                os.system(f'find {fullpath} -name "{se}" -print >> {CSCOPE_FILE}')
        else:
            os.system(f'echo {fullpath} >> {CSCOPE_FILE}')
    print("start cscope");
    os.system("cscope -b -q -v")

if __name__ == "__main__":
    main()

