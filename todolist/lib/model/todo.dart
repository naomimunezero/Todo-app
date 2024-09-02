class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'morning exercise', isDone: true),
      ToDo(id: '02', todoText: 'breakfast', isDone: true),
      ToDo(id: '03', todoText: 'buy groceries', isDone: true),
      ToDo(id: '04', todoText: 'check emails', ),
      ToDo(id: '05', todoText: 'team meeting', ),
      ToDo(id: '06', todoText: 'go shopping', ),
      ToDo(id: '07', todoText: 'read my novel', isDone: true),
      ToDo(id: '08', todoText: 'work on mobile apps', isDone: true),
      ToDo(id: '09', todoText: 'dinner with Jenny', isDone: true),
      ToDo(id: '10', todoText: 'evening walk', isDone: true),
    ];
  }
}
