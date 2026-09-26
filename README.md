# 🌿 My Hyprland Dotfiles

Моя персональная конфигурация **Hyprland** на **EndeavourOS** в тёмной теме **Catppuccin**.

---

## 🛠️ Состав конфигурации
* **Window Manager:** [Hyprland](https://hyprland.org/)
* **Status Bar:** [Waybar](https://github.com/Alexays/Waybar)
* **Logout Menu:** [wlogout](https://github.com/ArgLover/wlogout)
* **Color Palette:** Catppuccin

---

## 📦 1. Установка необходимых зависимостей

Перед использованием конфигурации убедитесь, что в системе установлены все нужные пакеты и шрифты:

```bash
sudo pacman -S hyprland waybar wlogout git

Установка конфигурации
Склонируйте репозиторий и скопируйте настройки в директорию ~/.config/:
# 1. Клонируем репозиторий
git clone https://github.com/travkatm/dotfiles.git ~/dotfiles

# 2. Копируем файлы конфигураций
cp -r ~/dotfiles/hypr ~/.config/
cp -r ~/dotfiles/waybar ~/.config/
cp -r ~/dotfiles/wlogout ~/.config/

# 3. Перезагружаем Hyprland
hyprctl reload
