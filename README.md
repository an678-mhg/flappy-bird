# 🐦 Flappy Bird - Godot Engine

Một game Flappy Bird clone được phát triển bằng **Godot Engine 4.5**, với đầy đủ tính năng cơ bản và giao diện đẹp mắt.

![Godot Version](https://img.shields.io/badge/Godot-4.5-478CBF?logo=godot-engine)
![License](https://img.shields.io/badge/license-MIT-blue)

## 📋 Mô tả

Flappy Bird là một game arcade đơn giản nhưng gây nghiện, nơi người chơi điều khiển một chú chim bay qua các ống nước bằng cách nhấn phím để nhảy. Mục tiêu là vượt qua càng nhiều ống càng tốt mà không va chạm.

## ✨ Tính năng

- 🎮 **Gameplay đơn giản**: Nhấn SPACE/ENTER để nhảy, tránh các ống nước
- 🎯 **Hệ thống điểm**: Tích điểm khi vượt qua mỗi ống
- 🎨 **Giao diện đẹp**: Background, sprites và UI được thiết kế chỉnh chu
- 🔊 **Âm thanh**: Sound effects cho các hành động (nhảy, va chạm, điểm số)
- 💀 **Game Over Screen**: Màn hình game over với khả năng restart
- 🧹 **Tối ưu hiệu năng**: Tự động xóa pipes khi ra khỏi màn hình

## 🛠️ Công nghệ

- **Engine**: Godot Engine 4.5
- **Ngôn ngữ**: GDScript
- **Platform**: Desktop (Windows, macOS, Linux)

## 📦 Cài đặt và Chạy

### Yêu cầu

- [Godot Engine 4.5](https://godotengine.org/download) hoặc mới hơn

### Cách chạy

1. Clone hoặc download project này
2. Mở Godot Engine
3. Click **Import** và chọn thư mục project
4. Mở scene `res://Scenes/game.tscn`
5. Nhấn **F5** hoặc click **Play** để chạy game

## 🎮 Cách chơi

1. **Bắt đầu**: Nhấn **SPACE** hoặc **ENTER** để bắt đầu game và làm chim nhảy
2. **Điều khiển**:
   - Nhấn **SPACE/ENTER** để chim nhảy lên
   - Thả tay để chim rơi xuống
3. **Mục tiêu**:
   - Vượt qua các ống nước mà không va chạm
   - Mỗi ống vượt qua = +1 điểm
4. **Game Over**:
   - Va chạm với ống nước hoặc đất → Game Over
   - Nhấn **SPACE/ENTER** để chơi lại

## 📁 Cấu trúc Project

```
flappy-bird/
├── Game Objects/          # Assets game (background, pipes, bird sprites, base)
├── Scenes/               # Game scenes và scripts
│   ├── game.tscn         # Scene chính của game
│   ├── game.gd           # Script quản lý game (spawn pipes, timer)
│   ├── bird.tscn         # Scene chim
│   ├── bird.gd           # Script điều khiển chim (nhảy, trọng lực)
│   ├── pipe.tscn         # Scene ống nước
│   ├── pipe.gd           # Script ống nước (di chuyển, va chạm, điểm số)
│   ├── base.tscn         # Scene đất
│   ├── background.tscn   # Scene background
│   ├── game_over.tscn    # Scene game over
│   └── game_over.gd      # Script game over (restart)
├── UI/                   # UI assets (game over, message, số điểm)
├── Sound Effects/        # Âm thanh (die, hit, point, swoosh, wing)
├── project.godot         # File cấu hình Godot
└── README.md            # File này
```

## 🎯 Các tính năng kỹ thuật

### Bird (Chim)

- Sử dụng `CharacterBody2D` với physics
- Jump velocity: -300.0
- Trọng lực tự động áp dụng khi game bắt đầu

### Pipe (Ống nước)

- Tự động spawn theo timer
- Vị trí ngẫu nhiên (randomize)
- Tốc độ di chuyển: 200 pixels/giây (có thể điều chỉnh)
- Khoảng cách giữa 2 ống: 100 pixels (có thể điều chỉnh)
- Tự động xóa khi ra khỏi màn hình

### Score System

- Score zone được đặt giữa 2 ống
- Mỗi lần vượt qua = +1 điểm
- Phát âm thanh khi ghi điểm

### Game Over

- Phát hiện va chạm với ống hoặc đất
- Chuyển scene an toàn bằng `call_deferred()`
- Màn hình game over với khả năng restart

## ⚙️ Cấu hình

Bạn có thể điều chỉnh các thông số trong code:

- **Pipe Speed**: `@export var speed = 200` trong `pipe.gd`
- **Gap Size**: `@export var gap := 100` trong `pipe.gd`
- **Jump Velocity**: `const JUMP_VELOCITY = -300.0` trong `bird.gd`

## 🐛 Xử lý lỗi đã sửa

- ✅ Sử dụng `call_deferred()` để thay đổi scene an toàn trong physics callback
- ✅ Tự động cleanup pipes khi ra khỏi màn hình
- ✅ Score zone được cấu hình động dựa trên gap size

## 📝 License

MIT License - Tự do sử dụng và chỉnh sửa

## 👨‍💻 Tác giả

Phát triển bởi [an678-mhg]

---

**Enjoy the game! 🎮✨**
