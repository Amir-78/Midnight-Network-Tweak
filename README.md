Here’s a **Markdown (`.md`) file** for your GitHub repository describing the **Midnight Network Tweak**.

---

## Midnight Network Tweak 🌙

### Overview
The **Midnight Network Tweak** is a batch script designed to optimize your Ethernet settings for **low latency, high performance, and smooth gaming**. It ensures your network adapter runs at full capacity by adjusting TCP settings, power plans, and disabling unnecessary features like energy-efficient Ethernet. 

This repository also includes a **reset script** to revert all changes to default if needed.

---

### Features
- 🚀 Disables TCP auto-tuning to prevent latency spikes.
- 🎮 Optimizes packet handling by enabling `Receive Side Scaling` (RSS).
- ⚡ Sets **high-priority scheduling** for network tasks.
- 🔋 Disables energy-efficient Ethernet to ensure consistent network performance.
- 💻 Enables **high-performance power plan** for uninterrupted performance.
- 🛡️ Disables Large Send Offload (LSO) and TCP delays to reduce input lag.
  
---

### Files Included
1. **`midnight_tweak.bat`**  
   - Applies the network optimizations for gaming performance.
   
2. **`reset_network_tweaks.bat`**  
   - Restores all network settings to their default values.

---

### How to Run

#### Prerequisites
- **Windows PC** with administrator privileges.
- Ensure you’ve created a **system restore point** (optional but recommended).

#### Steps to Apply Midnight Network Tweak
1. **Clone this repository** or **download the files**:
   ```bash
   git clone https://github.com/Amir-78/midnight-network-tweak.git
   cd midnight-network-tweak
   ```
2. **Right-click** `midnight_tweak.bat` and select **Run as Administrator**.
3. **Restart your PC** for the changes to take effect.

#### Steps to Reset Network Settings
1. If you want to revert to default settings:
   - **Right-click** `reset_network_tweaks.bat` and select **Run as Administrator**.
   - **Restart your PC** after the reset.

---

### Warning ⚠️
- This script modifies system and network settings. If you encounter any issues, you can run the **reset script** to restore your previous configuration.
- Always **create a system restore point** before running the tweak, especially on production systems.

---

### License
This project is licensed under the **MIT License**. Feel free to use, modify, and share the script.

---

### Contributing
If you find bugs or have suggestions, feel free to open an issue or submit a pull request.

---

### Acknowledgments
Special thanks to the gaming and tech community for inspiring this tweak!

---

This `.md` file provides a professional and structured description for your GitHub repository. You can replace `Amir-78` with your GitHub username when you upload the project. Let me know if you need further adjustments!
