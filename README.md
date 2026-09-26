# 🌿 My Hyprland Dotfiles

Моя персональная конфигурация **Hyprland** на **EndeavourOS** в тёмной теме **Catppuccin**.

---

## 📸 Preview

<p align="center">
  <img src="assets/screenshots/desktop.png" width="48%" />
  <img src="assets/screenshots/terminal.png" width="48%" />
</p>

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
