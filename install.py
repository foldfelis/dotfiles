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
    # gnuplot
    ln("dot/.gnuplot", "/home/n/.gnuplot")

    # xterm
    ln("dot/.Xresources", "/home/n/.Xresources")

    # zsh
    ln("dot/.zshrc", "/home/n/.zshrc")

    # Rofi
    ln("rofi", "/home/n/.config/rofi")


if __name__ == '__main__':
    main()
