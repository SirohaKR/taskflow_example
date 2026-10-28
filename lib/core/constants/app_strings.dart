abstract final class AppStrings {
  // 헤더
  static const String title = "TaskFlow";
  static const String record = "지난 기록";

  // 오늘의 달성률 차트
  static const String chartTitle = "오늘의 달성률";

  // 검색
  static const String searchHint = "할 일을 검색해보세요...";

  // 필터
  static const String filterAll = "전체";
  static const String filterActive = "진행 중";
  static const String filterDone = "완료";

  // 우선순위
  static const String priorityHigh = "높음";
  static const String priorityNormal = "보통";
  static const String priorityLow = "낮음";

  // 비어있음
  static const String emptyTitle = "등록된 할 일이 없습니다";
  static const String emptyDescription = "우측 하단의 + 버튼을 눌러\n새로운 할 일을 추가해보세요!";

  // 추가
  static const String newTaskTitle = "새로운 할 일 추가";
  static const String newTaskHintTitle = "할 일 제목을 입력하세요...";
  static const String newTaskHintMemo = "상세 메모 (선택 사항)";
  static const String newTaskPriority = "우선순위 선택";
  static const String newTaskCancel = "취소";
  static const String newTaskAdd = "추가하기";

  // 지난기록
  static const String historyDescription = "기록 있음 (클릭 가능)";
  static const String historyView = "📆 날짜를 선택해 기록을 확인하세요";

  // 오늘의 달성률
  static String progressSummary(int completed, int total, int percent) =>
      '$completed / $total 완료 ($percent%)';
  // 필터
  static String filterWithCount(String label, int count) => '$label ($count)';

  static String historyDayCount(int days) =>
      '$days일 기록';
}