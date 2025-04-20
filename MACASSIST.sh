#!/bin/bash
#
# MacAssist Pro Toolkit

while true; do
  clear
  echo "==========================="
  echo "   💻 MacAssist Pro Menu"
  echo "==========================="
  echo "1. System Info Report"
  echo "2. Flush DNS & Restart Network"
  echo "3. Check Disk Usage"
  echo "4. Run Virus Scan"
  echo "5. Collect System Logs"
  echo "6. Exit"
  echo "---------------------------"
  read -p "Enter your choice: " choice

  case $choice in
    1)
      # Option 1: System Info Report
      echo "🔍 Running System Info Report..."
      sleep 1
      echo "System Information: "
      system_profiler SPHardwareDataType
      echo ""
      echo "Memory Information: "
      system_profiler SPMemoryDataType
      echo ""
      echo "Disk Information: "
      system_profiler SPStorageDataType
      echo ""
      read -p "Press Enter to return to menu..."
      ;;
    2)
      # Option 2: Flush DNS & Restart Network
      echo "🌐 Flushing DNS and restarting network..."
      sleep 1
      sudo killall -HUP mDNSResponder
      sudo ifconfig en0 down && sudo ifconfig en0 up
      echo "✅ DNS flushed and network restarted!"
      read -p "Press Enter to return to menu..."
      ;;
    3)
      # Option 3: Check Disk Usage
      echo "💽 Checking disk usage..."
      sleep 1
      df -h /
      echo ""
      echo "📦 Top 10 largest folders in your home directory:"
      du -sh ~/* 2>/dev/null | sort -hr | head -n 10
      echo ""
      read -p "Press Enter to return to menu..."
      ;;
    4)
      # Option 4: Run Virus Scan (with ClamAV)
      echo "🛡️ Running virus scan on Downloads folder..."
      sleep 1

      # Update virus definitions
      echo "⬇️ Updating virus database..."
      freshclam

      # Scan Downloads folder
      echo "🔍 Scanning ~/Downloads..."
      clamscan -r ~/Downloads

      echo ""
      echo "✅ Scan complete."
      read -p "Press Enter to return to menu..."
      ;;
    5)
      # Option 5: Collect System Logs
      echo "📁 Collecting system logs..."
      sleep 1

      TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
      LOGFILE=~/Desktop/system_logs_$TIMESTAMP.txt

      echo "📝 Saving logs to: $LOGFILE"

      # Collect last 1 day of system logs
      log show --info --last 1d > "$LOGFILE"

      echo "✅ Logs saved successfully!"
      read -p "Press Enter to return to menu..."
      ;;
    6)
      # Option 6: Exit
      echo "👋 Thank you for using MacAssist Pro!"
      sleep 1
      echo "💡 Stay efficient. Stay awesome. 💻✨"
      exit 0
      ;;
    *)
      echo "❌ Invalid option. Try again."
      ;;
  esac
done


