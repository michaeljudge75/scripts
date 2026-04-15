# 🐧 Linux Utility Scripts

<div align="center">

[![GitHub stars](https://img.shields.io/github/stars/michaeljudge75/scripts?style=for-the-badge)](https://github.com/michaeljudge75/scripts/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/michaeljudge75/scripts?style=for-the-badge)](https://github.com/michaeljudge75/scripts/network)
[![GitHub issues](https://img.shields.io/github/issues/michaeljudge75/scripts?style=for-the-badge)](https://github.com/michaeljudge75/scripts/issues)
[![GitHub license](https://img.shields.io/github/license/michaeljudge75/scripts?style=for-the-badge)](LICENSE) <!-- TODO: Add a LICENSE file if you intend to license your work. -->

**A personal collection of Bash scripts designed to streamline common Linux system administration and daily tasks, particularly useful for Linux users.**

</div>

## 📖 Overview

This repository houses a suite of personal utility scripts written in Bash, aimed at making various Linux operations more efficient. These scripts are tailored for a typical Linux environment(some commands use Debian/Ubuntu specific commands) and cover tasks such as system updates, interactive file searching, and managing configuration files for specific tools like the Awesome Window Manager. They are designed for quick execution and integration into a personalized workflow.

## ✨ Features

-   **AwesomeWM Configuration Editor (`editAwesomeConf.sh`)**: Quickly opens the `rc.lua` configuration file for the Awesome Window Manager using Neovim, creating it if it doesn't exist.
-   **Interactive File Searcher (`fileSearch.sh`)**: Performs a file search in a specified directory (or the current directory by default) using `find`.
-   **System Update & Cleanup (`update.sh`)**: Executes a full system update using `apt update and apt upgrade`, providing a single command for maintaining an Ubuntu system.

## 🛠️ Tech Stack

-   **Shell**: Bash
-   **Core Utilities**: `find`, `grep`
-   **Text Editor**: [Neovim](https://neovim.io/)
-   **Package Manager**: [Apt](https://wiki.debian.org/Apt) (Ubuntu)
-   **Window Manager (Configured)**: [Awesome Window Manager](https://awesomewm.org/)

## 🚀 Quick Start

### Prerequisites

These scripts are primarily designed for **Arch Linux** and require the following tools to be installed:

-   **Bash**: Standard on most Linux distributions.
-   **Neovim** (or `nvim` in your PATH): Required for `editAwesomeConf.sh`.
-   **sudo**: Required for `update.sh` to run `pacman` with administrative privileges.

### Installation

1.  **Clone the repository**
    ```bash
    git clone https://github.com/michaeljudge75/scripts.git
    cd scripts
    ```

2.  **Make scripts executable**
    ```bash
    chmod +x *.sh
    ```

3.  **Add scripts to your PATH (Optional, but recommended)**
    For easy access, you can move or symlink these scripts to a directory included in your system's `PATH` (e.g., `~/.local/bin`):
    ```bash
    mkdir -p ~/.local/bin
    ln -s "$(pwd)/editAwesomeConf.sh" ~/.local/bin/editAwesomeConf
    ln -s "$(pwd)/fileSearch.sh" ~/.local/bin/fileSearch
    ln -s "$(pwd)/update.sh" ~/.local/bin/update
    # Ensure ~/.local/bin is in your PATH. Add the following to your ~/.bashrc or ~/.zshrc if it's not already there:
    # export PATH="$HOME/.local/bin:$PATH"
    # source ~/.bashrc # or ~/.zshrc
    ```

## 📖 Usage

Once installed and added to your `PATH`, you can run these scripts directly from your terminal.

### 1. AwesomeWM Configuration Editor

This script helps you quickly open and edit your Awesome Window Manager's `rc.lua` configuration file using `nvim`.

```bash
editAwesomeConf
```
-   If `~/.config/awesome/rc.lua` does not exist, it will create an empty one for you to start configuring.

### 2. Interactive File Searcher

This script allows you to search for files and interactively select them using `fzf`.

```bash
# Search in the current directory (recursively)
fileSearch

# Search in a specific directory (e.g., your home directory)
fileSearch ~/
```
Enter a file name then press `Enter` to select a file, or `Ctrl-C` to exit.

### 3. System Update & Cleanup

This script performs a full system update for Ubuntu using `apt`.

```bash
update
```
-   This command will prompt you for your `sudo` password to execute `apt` commands.

## 📁 Project Structure

```
scripts/
├── editAwesomeConf.sh   # Script to edit AwesomeWM config
├── fileSearch.sh        # Script for interactive file search
├── update.sh            # Script for system update and cleanup
└── README.md            # This README file
```

## 🤝 Contributing

Contributions are welcome! If you have suggestions for improvements or new scripts that fit this collection's purpose, please feel free to:

1.  **Fork the repository.**
2.  **Create a new branch** (`git checkout -b feature/your-feature`).
3.  **Make your changes.**
4.  **Commit your changes** (`git commit -am 'feat: Add new feature'`).
5.  **Push to the branch** (`git push origin feature/your-feature`).
6.  **Open a Pull Request.**

## 📄 License

This project is currently licensed under the MIT License

## 🙏 Acknowledgments

-   **Neovim**: For powerful and extensible text editing.
-   **Ubuntu**: For providing a versatile and flexible operating system.
-   **Awesome Window Manager**: For a highly configurable tiling window manager.

---

<div align="center">

**⭐ Star this repo if you find these scripts helpful!**

Made with ❤️ by [Michael Judge](https://github.com/michaeljudge75)

</div>
```
