# MacAssistPro
A macOS Help Desk Automation Toolkit built in Bash
# 🔧 MACAssistPro – macOS Help Desk Automation Toolkit

A Bash-based menu-driven toolkit built for IT help desk support on macOS. MACAssistPro helps automate frequent troubleshooting tasks directly from Terminal, making support work faster, cleaner, and more efficient.

## 🚀 What It Does

This script presents a simple terminal-based menu to run key support tasks:

- 🔍 **System Health Report** – View hostname, uptime, CPU info, RAM stats, and macOS version.
- 🌐 **Flush DNS + Restart Network** – Clears DNS cache and toggles Wi-Fi.
- 🛡️ **Virus Scan** – Uses ClamAV to scan the Downloads folder.
- 📄 **System Log Export** – Grabs recent system error logs for quick diagnostics.

## 🛠️ Built With

- Bash scripting
- macOS native tools: `scutil`, `uptime`, `sysctl`, `vm_stat`, `log`, `networksetup`
- ClamAV (antivirus scanner) via Homebrew
  
## 🧪 How to Use It

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Jayrajsinh01/MacAssistPro.git
   cd MacAssistPro
2. Make the script executable and run it:
- chmod +x MacAssistPro.sh
- ./MacAssistPro.sh

