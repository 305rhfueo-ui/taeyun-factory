# 태윤이네 제작공장 — 작업 규칙

사용자가 말로 영상을 지시하면 Claude가 맥미니에서 만든다. 영상 도구는 `~/video-studio` (Remotion·HyperFrames·OpenMontage).
한국어로 답한다. 아부하지 않고, 결과물이 별로면 별로라고 말한다.

## 제작 흐름 (예외 없음)

1. **실장 점검** — 기획은 **유튜브 동향을 토대로** 한다 (사용자 지시, 2026-10-29).
   - [유튜브 동향](docs/wiki/trends.md)을 먼저 읽고, 어떤 동향을 반영했는지 기획에 한 줄로 적는다. 비어 있거나 오래됐으면 그렇다고 말하고 최근 본 것을 묻는다.
   - [품질 기준](docs/wiki/quality.md) 등 관련 위키를 읽는다.
   - `node factory.mjs score "<기획 한 줄>"` 로 nimble 판단을 본다 (모델 추정이지 조회수 확률 아님).
   - 사용자가 동향 자료(공식 리포트·기사·관찰)를 주면 날짜·출처를 붙여 `docs/wiki/trends.md` 에 정리한다.
2. **승인1** — 주제·대본·길이·도구를 사용자에게 보여 주고 승인받는다. 결과를 기록한다:
   `node factory.mjs log '{"type":"plan","name":"<이름>","plan":"...","approved":true}'`
3. **제작** — `~/video-studio/projects/<이름>/` 에서 만든다 (이 저장소에는 영상 파일을 넣지 않는다 — 공개 저장소).
   - 주제만 주고 대본부터 완성까지 자동: OpenMontage (`~/video-studio/OpenMontage`)
   - 자막·그래픽 얹기, 짧은 모션그래픽, 손으로 다듬기: HyperFrames (`npx hyperframes init <이름> --resolution portrait`)
   - 같은 디자인을 주제만 바꿔 반복: Remotion (`~/video-studio/remotion-video`)
4. **검수** — `reviewer` 서브에이전트에게 맡긴다. 만든 쪽이 스스로 통과시키지 않는다. 반려되면 고쳐서 다시, **최대 2번**.
   결과 기록: `node factory.mjs log '{"type":"review","name":"<이름>","verdict":"PASS|REJECT","issues":[...]}'`
5. **승인2** — 최종본을 보여 주고 1~5점 평가를 받는다: `node factory.mjs log '{"type":"final","name":"<이름>","rating":4,"note":"..."}'`
   업로드는 사용자가 한다. 올린 뒤 영상 ID를 받으면 `{"type":"upload","name":"<이름>","videoId":"..."}` 로 기록한다.

이 기록(`data/production.jsonl`)이 실장의 주간 판단과 나중의 laya 학습 재료다. 빠뜨리지 않는다.

## 지킬 것

- **유튜브 API 정책** ([위키](docs/wiki/youtube-policy.md)): 감사 승인 전에는 여러 채널 데이터를 모으거나 조회수로 지표를 만들지 않는다.
  남의 영상 내려받기(yt-dlp)·화면 긁어오기 금지. 트렌드는 사용자가 준 공식 리포트·관찰 메모로만 위키에 쌓는다.
- 유료 생성 도구(Higgsfield 등)는 사용자가 지목할 때만 쓴다.
- 한국어 자막: whisper 는 `small`/`medium` (기본 `small.en` 은 영어 전용). 한국어 음성: Piper `ko_KR`.
- 남의 채널 제목·캐릭터·형식을 베끼지 않는다. 패턴만 참고한다.
- 코드는 ponytail(최소 코드). 일부러 단순하게 만든 곳엔 `ponytail:` 주석.

## 주간 자동 작업

토요일 06:30 launchd `com.taeyun.factory` → `node factory.mjs weekly` → 사이트(https://305rhfueo-ui.github.io/taeyun-factory) 갱신 + 텔레그램.
로그: `~/Library/Logs/taeyun-factory.log`. 미리 보기만: `node factory.mjs weekly --dry`.
월 1회 `/graphify docs --update` 로 지식 지도를 만들고 `graphify-out/graph.html` 을 `docs/map.html` 로 복사한다.
