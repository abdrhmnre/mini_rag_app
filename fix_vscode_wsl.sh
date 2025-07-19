#!/bin/bash

# 1. أغلق كل نوافذ VS Code يدويًا قبل البدء

# 2. أعد تشغيل WSL
echo "🔄 إعادة تشغيل WSL..."
wsl.exe --shutdown

# 3. انتظر قليلاً
sleep 2

# 4. شغّل Ubuntu WSL من جديد وافتح مشروعك
WSL_PATH="/mnt/d/Projects/mini_rag_app"

echo "📁 الانتقال إلى مجلد المشروع: $WSL_PATH"
wsl.exe bash -c "
    cd $WSL_PATH
    echo '🧹 حذف إعدادات VS Code المؤقتة (.vscode)...'
    rm -rf .vscode
    echo '🚀 فتح المشروع في VS Code داخل بيئة WSL...'
    code .
"
bash fix_vscode_wsl.sh
