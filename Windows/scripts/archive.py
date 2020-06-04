#!python3
import os
import re
import sys
import shutil
from pathlib import Path


def get_project_name(path):
    return path.name

def check_if_dir_exists(project):
    if not project.exists():
        os.mkdir(str(project))

def get_version(path):
    filename = path / path.name/ "__init__.py"
    with open(filename, "r") as file:
        data = file.read()
        regex = r"(\d.\d.\d)"
        match = re.search(regex, data).group(0)
        return match

def check_for_archive_version(project_archive):
    if project_archive.exists():
        #raise error
        print("{} already archived".format(project_archive.name))
        return False
    else:
        os.mkdir(str(project_archive))
        return True

def main(path):
    root = Path(os.getcwd())
    name = get_project_name(root)
    project = ARCHIVES / name
    check_if_dir_exists(project)
    version = get_version(root)
    archive_version = "{} {}".format(name, version)
    project_archive = project / archive_version
    proceed = check_for_archive_version(project_archive)
    if proceed:
        src = "{}/{}".format(root, name)
        dst = "{}/{}/{}".format(ARCHIVES, name, archive_version)
        shutil.copytree(src, dst)
        print("{} Archived".format(archive_version))

if __name__ == "__main__":
    HOME = Path(".").home()
    ARCHIVES = HOME / "Archives"
    ##main(sys.argv[1:])
    #root = "/home/development/Code/Projects/sensorteststation"
    #os.chdir(root)
    #main(root)