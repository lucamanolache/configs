<h2 align="center"> ━━━━━━  ❖  ━━━━━━ </h2>

<!-- BADGES -->
<div align="center">
    <p></p>
    <a href="https://github.com/notlucam/configs/stargazers">
        <img src="https://img.shields.io/github/stars/notlucam/configs?color=%238dc776&labelColor=%23101415&style=for-the-badge">
    </a>
    <a href="https://github.com/notlucam/configs/network/members/">
        <img src="https://img.shields.io/github/forks/notlucam/configs?color=%2384a0c6&labelColor=%23101415&style=for-the-badge">
    </a>
    <img src="https://img.shields.io/github/repo-size/notlucam/configs?color=%23f65b5b&labelColor=%23101415&style=for-the-badge">
</div>

<p/>

---

<!-- INFORMATION -->
### ❖ Information <img alt="" align="right" src="https://badges.pufler.dev/visits/notlucam/configs?style=for-the-badge&color=91e6b1&logoColor=white&labelColor=101415"/>

   Thanks for dropping by! This is my personal repository of my dotfiles.

   The [setup section](#-setup) will guide you through a step-by-step installation process.

   Here are more information about my setup:

   - **WM:** [bspwm](https://github.com/baskerville/bspwm)
   - **OS:** [arch linux](https://archlinux.org/)
   - **Terminal:** [alacritty](https://github.com/alacritty/alacritty)
   - **Shell:** [zsh](https://www.zsh.org/)
   - **Panel:** [polybar](https://github.com/polybar/polybar/)
   - **Editor:** [doom emacs](https://github.com/hlissner/doom-emacs)
   - **Browser:** [brave](https://brave.com/)
   - **Application Launcher:** [rofi](https://github.com/davatorium/rofi)

---

<!-- SETUP -->
### ❖ Setup

   This is step-by-step how to install these dotfiles. Just [R.T.F.M](https://en.wikipedia.org/wiki/RTFM).

   ```sh
    $ git clone https://github.com/notlucam/configs.git
   ```

### ❖ Installation (Manual)

   After cloning the repository, install the necessary dependencies to replicate by setup.

   <details open>
   <summary><strong>Arch Linux (and Arch-based distributions)</strong></summary>

   Assuming your **AUR Helper** is [paru](https://github.com/Morganamilo/paru).

   ```sh
    $ paru -S bspwm sxhkd rofi polybar neovim alacritty viewnior \
    picom brightnessctl playerctl feh maim jq xclip imagemagick  \
    dunst bsp-layout i3lock-color
   ```

   </details>

   <br>

   Then after the dependencies are installed, use GNU Stow to sym link the files
   
   ```sh
   stow .
   ```

   </details>
   
   <br>

   > Once finished copying the files, you might want to finalize the changes to your system.

   ```sh
    # Rebuilds the font cache
    $ fc-cache -v
   ```

   <br>

   > Lastly, log out from your current desktop session and log in into bspwm.

### ❖ Miscellaneous

   - **Elkowar's Wacky Widgets <kbd>Suggested</kbd>**   
      > If you're **NOT** using a monitor with a 1366x768 resolution, you might want to change the `x` and `y` values of the widgets on the config.

   - **GTK Theme <kbd>Suggested</kbd>**
      > You can find the custom GTK theme [here](https://github.com/janleigh/gtk3). You can then apply it by changing the `gtk-theme-name` to `kizus_phocus` on your GTK3 config.

   - **Icon Theme <kbd>Suggested</kbd>**
      > You can install [this](https://github.com/zayronxio/Zafiro-icons/) icon theme that suits the GTK theme.

   - **Firefox Custom CSS <kbd>Suggested</kbd>**
      <details>
      <summary><strong>See</strong></summary>

      > You can install the custom Firefox CSS by first enabling `toolkit.legacyUserProfileCustomizations.stylesheets` in `about:config` and move the contents of [`etc/firefox-css`](etc/firefox-css) to `$HOME/.mozilla/firefox/*.default-release/chrome`.

      </details>

   - **Replacement Commands <kbd>Suggested</kbd>**
      <details>
      <summary><strong>See</strong></summary>

      > Assuming you're also using my [zsh](https://www.zsh.org/), you might also want to install some additional dependencies to make some commands work.

      - `ls` ➜ [`exa`](https://github.com/ogham/exa)
      - `cat` ➜ [`bat`](https://github.com/sharkdp/bat)
      - `df` ➜ [`duf`](https://github.com/muesli/duf)

      </details>

### ❖ Acknowledgements

   - **Inspiration**
      - [owl4ce](https://github.com/owl4ce) for the README style.
      - [Mangeshrex](https://github.com/Mangeshrex) for the colors of the colorscheme.
      - [ner0z](https://github.com/ner0z) for the dashboard inspiration.

   - **Contributors**
         <a href="https://github.com/notlucam/configs/graphs/contributors">
            <img src="https://contrib.rocks/image?repo=notlucam/configs" />
         </a>
