# Obwal — Obsidian + Pywal Integration

## Hello, friends! 

Like many of you, I've always wanted a seamless integration between [Obsidian](https://obsidian.md/) and [Pywal](https://github.com/dylanaraps/pywal). Up until now, this required downloading scripts and running them manually. With **Obwal**, the entire process is now automated!

### How does Obwal work?

Simply run the command `wal -i your_image.jpg`, and **Obwal** will automatically create an `obsidian.css` file in your Obsidian's CSS snippets folder. The Obsidian theme will update to match the colors of your image 🌈

---

## Installation

⚠️ **PLEASE READ THE INSTRUCTIONS CAREFULLY!**

1. **Clone the repository**:
    ```bash
    git clone https://github.com/valeriy-w/Obwal/
    cd Obwal
    ```

2. **Set the path to your snippets folder**:
   - On **line 156** of the `export.py` file, change the path to the `snippets` folder in your Obsidian settings (this path will be unique to each user).
   
3. **Install and run the script**:
   ```bash
   chmod +x ./install.sh
   sudo ./install.sh

4. Verify the installation:

  If everything is set up correctly, run:
  ```bash
  wal -i your_image.jpg
  ```

Here's how it all looks

![20241111_13h11m16s_grim](https://github.com/user-attachments/assets/3b4a73ef-937d-4195-9378-791a73300c86)
![20241111_13h13m07s_grim](https://github.com/user-attachments/assets/dd1a8422-2d41-486a-bcbc-e124351c669b)
![20241111_13h14m42s_grim](https://github.com/user-attachments/assets/be8d1f3e-3f8b-43fe-9319-de5a1156f696)


Notes and Future Updates 
I understand that the installation process may seem a bit tricky, but in future versions, the install.sh script will be more convenient and easier to use! I'm working on improving it.

I hope you enjoy using Obwal! 
