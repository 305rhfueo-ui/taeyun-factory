#!/bin/zsh
# 태윤이네 제작공장 — 더블클릭하면 제작 대화창(Claude)이 열린다. 최근 작업이 HyperFrames 프로젝트면 미리보기 스튜디오도 같이 연다.
cd ~/video-studio/taeyun-factory || exit 1
p=$(ls -td ~/video-studio/projects/*/ 2>/dev/null | head -1)
[[ -n "$p" && -f "$p/hyperframes.json" ]] && npx -y hyperframes preview --background "$p" >/dev/null 2>&1
exec claude
