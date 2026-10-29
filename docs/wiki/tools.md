# 제작 도구

> 핵심: 영상을 편집 프로그램이 아니라 코드로 만들어서, 말로 고치고 다시 뽑는다. 도구는 영상마다 필요한 것만 쓴다 — 셋을 억지로 다 잇지 않는다.

| 도구 | 쓰는 때 | 라이선스 |
|---|---|---|
| [OpenMontage](https://github.com/calesthio/OpenMontage) | 주제만 주고 조사→대본→내레이션→음악→자막→렌더→품질검사까지 자동 | AGPL (고쳐서 외부 서비스로 내면 소스 공개) |
| [HyperFrames](https://github.com/heygen-com/hyperframes) | 촬영본 위 자막·그래픽, 짧은 모션그래픽, 스튜디오에서 미리보기·되돌리기 | Apache-2.0 |
| [Remotion](https://github.com/remotion-dev/remotion) | 같은 디자인을 주제만 바꿔 반복 | 개인·3인 이하 회사 무료 |

- 무료 영상 자료: OpenMontage 의 Archive.org·NASA·Wikimedia (키 불필요). Pexels·Pixabay 는 키를 넣으면 추가.
- 한국어 음성: Piper `ko_KR`. 한국어 자막: whisper `small`/`medium`.
- 판단 모델: nimble(로컬, 한국어 가능) — 점수는 모델 추정. laya-multilingual 은 내 제작 기록이 쌓이면 학습 예정.

## 관련 페이지
- [품질 기준](quality.md) — 만든 뒤 무엇을 재나
- [유튜브 정책](youtube-policy.md) — 트렌드 자료를 어디서 얻나
