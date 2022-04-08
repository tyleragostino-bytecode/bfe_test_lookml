from ast import arg
from operator import mod
import lookml, argparse

def main(repo_name, github_access_token, source_branch, destination_branch, modifications_file_path):
    project = lookml.Project(
        repo= repo_name,
        access_token=github_access_token
    )
    
    modifications_file_handle = open(modifications_file_path, mode='r')
    header_row = modifications_file_handle.readline() #just one line
    modifications = modifications_file_handle.readlines() #the rest of the lines
    

if __name__ == "__main__":
    # parse arguments
    parser = argparse.ArgumentParser()
    parser.add_argument('--repo_name', dest='repo_name', type=str)
    parser.add_argument('--access_token', dest='access_token', type=str)
    parser.add_argument('--source_branch', dest='source_branch', type=str)
    parser.add_argument('--destination_branch', dest='destination_branch', type=str)
    parser.add_argument('--modifications_file_path', dest='modifications_file_path', type=str)

    args = parser.parse_args()
    
    main(repo_name=args.repo_name, access_token=args.access_token, source_branch=args.source_branch, destination_branch=args.destination_branch, modifications_file_path=args.modifications_file_path)
