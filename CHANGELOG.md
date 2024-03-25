# ChangeLog

## Alpha Version

### v0.3.9-rc

- rc released

### v0.3.9-bugs

- `Pause/Break` 키 작동 안함

### v0.3.9-dev3

- 마우스 커서 이동하는 변수 수정
  - 편리한 유지/보수를 위해 변수를 나눴음
  - `Offset` --> 기본 속도
  - `OffsetSlow` --> 느리게 움직일 때 속도
- 키 추가
  - Capslock + Q --> Capslock 토글
  - Capslock + ESC --> ` (Escape 문자)
  - Pause/Break 키 임시 추가

### v0.3.8-rc

- 마우스 이동하는 키 변경
  - Left_Alt --> 빠르게 이동
  - Tab --> 느리게 이동
- SCH ver
  - Down, Left 키 뒤바뀐거 변경

### v0.3.8-bugs

- [Solved] 마우스 커서 이동 시, `PrintScreen` 키 입력되는 오류
- [Solved] Numberpad 단축키에서 `0`, `.`, `+` 입력 시, 설정해놓은 다음 키 값이 눌리는 오류
  - ex) `Numpad0` 키를 누르면 `Ctrl + Z` 만 실행되어야 하는데, 다음 작업인 `Ctrl + Y` 가 실행되는 등

### v0.3.8-dev

- 변수 이용하여 키 이름 대체하려고 하는데 잘 안됨
- 함수처럼 길게 써야해서, 변수 사용은 deprecated

### v0.3.7-dev

- Capslock 토글 전용 키 추가
  - Capslock + Q
- 변수 사용 테스트

### v0.3.6-rc

- Capslock_FN_SCH.ahk --> **사용하는 데 문제 없음**

### v0.3.6-dev

- 학교 전용 파일에 Number Pad 커스텀 기능 추가
  - undo, redo, save 단축키
  - 편한 powerpoint markup을 위한 단축키
    - 펜, 하이라이터 및 기타 도구 좌표로 마우스 커서 이동 후, 클릭 동작
- 멤브레인 키보드 동시입력 이슈로 인하여 임시로 키입력 변경
  - Capslock 누른 상태에서 동작은 동일
  - 빠르게 이동: ijkl --> Home, Del, End, PgDn
  - 느리게 이동: ijkl --> Up, Down, Left, Right (방향키)

Key bindings

- `0` --> Ctrl + Z
- `.` --> Ctrl + Y
- `+` --> Ctrl + S
- `1` --> pen tool 1
- `2` --> pen tool 2
- `3` --> pen tool 3
- `4` --> highlighter tool 1
- `5` --> highlighter tool 2
- `6` --> highlighter tool 3
- `7` --> cursor tool
- `8` --> lasso tool
- `9` --> eraser tool

### v0.3.5-dev

- 학교 전용 파일 추가

### v0.3.3-dev

- 마우스 커서 이동 속도에 따른 단축키 변경
  - Shift: fast movement
  - Ctrl: slow movement

### v0.3.2-release

- 커서 이동 속도에 따른 단축키 변경
  - Shift: fast movement
  - Ctrl: slow movement

### v0.3.2-rc

- 커서 이동 속도에 따른 단축키 변경
  - Shift: fast movement
  - Tab: slow movement

### v0.3.1-rc

- 커서 이동 속도에 따른 단축키 추가
  - 프로그램 수정에 따라, Capslock + ijkl 는 기존 방향키로 동작
  - Tab: fast movement
  - Shift: slow movement

### v0.3.0-dev

- 커서 이동 속도에 따른 단축키 추가
  - 프로그램 수정에 따라, Capslock + ijkl 는 기존 방향키로 동작
  - Capslock + Tab: 빠른 속도로 커서 이동
  - Capslock + Shift: 느린 속도로 커서 이동

### v0.2.1-release1

- Capslock + ijkl 이용하여 마우스 커서 이동 기능 추가
  - 기존 기능이었던 방향키 기능은 잠시 비활성화 하였음

### v0.2.0-alpha1

- Added Key: **PrintScreen**, **Home, End**, **PageUp, PageDown**
- mouse control added
  - ijkl --> move cursors (up/down/left/right)
  - h, y --> mouse scroll up/down
  - u, o --> left/right click
- 코드 정리

### v0.x.x-dev1

- **PrintScreen**, **Home, End**, **PageUp, PageDown** 키 추가
- vim Style의 방향키 추가
- **Insert**, ScrollLock, Break 키 추가
- 코드 정리
  - 주석 수정
  - 필요없는 코드 삭제
- 그외 진행 ing...

### v0.1.2-release1

- `wasd`, `ijkl` 사용하여 방향키 사용
- `/` 사용하여 `Del` 키 사용
- 숫자 키 라인(1~0, -, =) 사용하여 `F1`~`F12` 사용
- `z` 사용하여 Mute, `x` `c`각각 볼륨 업/다운, `v` `b` 각각 이전곡/다음곡
- [테스트 필요] `y` `h` 사용하여 휠버튼 업/다운

### v0.1.0

- Initial Commit
