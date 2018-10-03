# Test repo for yarn install.
### Steps for reproduce:

1. Let's clone repo:
    ```
    git clone git@github.com:shvar/yarn-install.git && cd yarn-install/project
    ```
1. Get initial deps:
    ```
    yarn install
    ```
1. Create symlinks and see the structure:
    ```
    ./create_symlinks.sh && find .. | grep -v .git | grep -v jest
    ```
1. Please, notice, that there are two directories `assets` and `@assets` in `../`, each of them contains text.txt
1. Re-run yarn install:
    ```
    yarn install --force
    ```
1. Notice, that `text.txt` from `../@assets` is purged:
    ```
    find .. | grep -v .git | grep -v jest
    ```
