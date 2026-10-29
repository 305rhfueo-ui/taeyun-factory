# 제작 도구

> 핵심: 영상을 편집 프로그램이 아니라 코드로 만들어서, 말로 고치고 다시 뽑는다. 도구는 영상마다 필요한 것만 쓴다 — 셋을 억지로 다 잇지 않는다.

| 도구 | 쓰는 때 | 라이선스 | 최신 릴리스 (2026-W44) |
|---|---|---|---|
| [OpenMontage](https://github.com/calesthio/OpenMontage) | 주제만 주고 조사→대본→내레이션→음악→자막→렌더→품질검사까지 자동 | AGPL (고쳐서 외부 서비스로 내면 소스 공개) | 릴리스 표시 없음 |
| [HyperFrames](https://github.com/heygen-com/hyperframes) | 촬영본 위 자막·그래픽, 짧은 모션그래픽, 스튜디오에서 미리보기·되돌리기 | Apache-2.0 | v0.8.214 (2026-10-28) |
| [Remotion](https://github.com/remotion-dev/remotion) | 같은 디자인을 주제만 바꿔 반복 | 개인·3인 이하 회사 무료. (2026-W44) GitHub 표시는 NOASSERTION — 표준 라이선스가 아니라서 자동 판별이 안 된 것(해석). 상업 이용 전 원문 확인 | v4.0.539 (2026-10-26) |

- 무료 영상 자료: OpenMontage 의 Archive.org·NASA·Wikimedia (키 불필요). Pexels·Pixabay 는 키를 넣으면 추가.
- 한국어 음성: Piper `ko_KR`. 한국어 자막: whisper `small`/`medium`.
- 판단 모델: nimble(로컬, 한국어 가능) — 점수는 모델 추정. laya-multilingual 은 내 제작 기록이 쌓이면 학습 예정. (2026-W44) laya 최신 릴리스 v0.4.17 (2026-10-28). 내 제작 기록은 아직 0건.
- (2026-W44) 도구가 자주 업데이트된다. 영상마다 쓴 도구와 버전을 plan 기록에 함께 적는다 (해석: 버전이 바뀐 뒤 결과가 달라지면 원인을 찾기 쉽게).

## 지켜보는 도구 (2026-W44)

아직 쓰지 않는다. 첫 영상 기록이 쌓인 뒤, 필요할 때 작은 영상 하나로 시험한다.

| 저장소 | 왜 보나 | 라이선스 | 지금 할 일 |
|---|---|---|---|
| [actionow-ai/vvv](https://github.com/actionow-ai/vvv) | Remotion 템플릿을 한 번 만들어 여러 에이전트에서 재사용 — '같은 디자인, 주제만 바꿔 반복'과 맞음 | MIT | 2026-10-22 생김. 구조만 참고 |
| [openfilm/openfilm](https://github.com/openfilm/openfilm) | 코딩 에이전트로 만들고 편집기에서 고침 — '만들고 손으로 다듬기'와 비슷 | MIT | 2026-10-04 생김. 쓰기 전에 작은 영상 하나로 시험 |
| [GTKottman/mortiflix-oss](https://github.com/GTKottman/mortiflix-oss) | 단계마다 사람이 승인 — 우리 승인1·승인2와 닮음 | AGPL-3.0 | 코드는 가져오지 않고 아이디어만 |

쓰지 않는 것: [vibe-knowledge-film](https://github.com/HeyChengC/vibe-knowledge-film) — 설명에서 인기 영상 해체·화풍 복각을 내세운다. 남의 형식 베끼기 금지 규칙과 부딪힌다(해석). 라이선스도 NOASSERTION.

## 관련 페이지
- [품질 기준](quality.md) — 만든 뒤 무엇을 재나
- [유튜브 정책](youtube-policy.md) — 트렌드 자료를 어디서 얻나
