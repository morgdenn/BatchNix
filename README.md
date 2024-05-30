# BatchNix

**BatchNix** is a collection of Windows batch scripts that replicate popular Unix commands, providing a Unix-like experience on Windows. This collection is especially useful for developers and system administrators who need to work across different operating systems. With BatchNix, you can use familiar Unix commands on your Windows machine, making it easier to share Makefiles and scripts with Mac or Linux users.

## Features

- `export.bat` - Acts as a proxy for the Unix `export` command.
- `mv.bat` - Acts as a proxy for the Unix `mv` command.
- `ll.bat` - Acts as a proxy for the Unix `ls -l` command.
- `which.bat` - Acts as a proxy for the Unix `which` command.

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/morgdenn/BatchNix.git
   ```
2. Add the `BatchNix/bin` directory to your system's PATH:
   ```sh
   setx PATH "%PATH%;C:\path\to\BatchNix\bin"
   ```
   Or,
   - Right-click on `This PC` or `Computer` on the desktop or in File Explorer.
   - Click `Properties`.
   - Click `Advanced system settings`.
   - Click `Environment Variables`.
   - Under `System variables`, find the `Path` variable, select it, and click `Edit`.
   - Click `New` and add the path to the `BatchNix/bin` directory.
   - Click `OK` to close all windows.

## Usage

Once installed, you can use the scripts from any command prompt:

```sh
export VAR_NAME=value
mv source_file target_file
ll
which command
```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Acknowledgements

Inspired by the need to bring Unix command-line convenience to Windows and make cross-platform development smoother.

---

Enjoy using BatchNix and feel free to contribute to make it even better!
