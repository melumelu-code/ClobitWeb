#!/bin/bash
cd "$(dirname "$0")"
python3 -m http.server 3000 &
SERVER_PID=$!
sleep 0.5
open http://localhost:3000
echo ""
echo "✓ 미리보기 서버 실행 중: http://localhost:3000"
echo ""
echo "종료하려면 이 창을 닫으세요."
wait $SERVER_PID
