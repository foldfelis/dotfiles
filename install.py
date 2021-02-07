from os import path, system
from getpass import getuser

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
    # fish
    ln("dot/config.fish", f"/home/{getuser()}/.config/fish/config.fish")

    # starship
    ln("dot/starship.toml", f"/home/{getuser()}/.config/starship.toml")

    # gnuplot
    ln("dot/.gnuplot", f"/home/{getuser()}/.gnuplot")

    # xterm
    ln("dot/.Xresources", f"/home/{getuser()}/.Xresources")

    # Rofi
    ln("rofi", f"/home/{getuser()}/.config/rofi")


if __name__ == '__main__':
    main()
