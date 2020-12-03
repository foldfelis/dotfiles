from os import path, system

PATH = path.split(path.realpath(__file__))[0]


def exec_command(command):
    print(command)
    system(command)


def ln(src_path, ln_path):
    if path.exists(ln_path):
        command = "rm " + ln_path
        exec_command(command)

    command = "ln -fs {} {}".format(path.join(PATH, src_path), ln_path)
    exec_command(command)


def main():
    # IME
    ln("dot/.xprofile", "/home/n/.xprofile")

    # gnuplot
    ln("dot/.gnuplot", "/home/n/.gnuplot")

    # xterm
    ln("dot/.Xresources", "/home/n/.Xresources")

    # zsh
    ln("dot/.zshrc", "/home/n/.zshrc")

    # alacritty
    ln("alacritty", "/home/n/.config/alacritty")
    
    # kde
    ln("kde/kglobalshortcutsrc", "/home/n/.config/kglobalshortcutsrc")
    ln("kde/kwinrc", "/home/n/.config/kwinrc")
    ln("kde/kwinrulesrc", "/home/n/.config/kwinrulesrc")
    ln("kde/plasma-org.kde.plasma.desktop-appletsrc", "/home/n/.config/plasma-org.kde.plasma.desktop-appletsrc")


if __name__ == '__main__':
    main()
