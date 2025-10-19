#!/bin/bash
echo "🚀 Starting full Git cleanup..."

# delete all .git folders recursively
find . -name ".git" -type d -exec rm -rf {} + 2>/dev/null

# delete all .gitignore files (optional)
find . -name ".gitignore" -type f -delete 2>/dev/null

# verification
remaining=$(find . -name ".git" -type d)
if [ -z "$remaining" ]; then
    echo "✅ All .git folders successfully removed!"
else
    echo "⚠️ Some .git folders still exist:"
    echo "$remaining"
fi
