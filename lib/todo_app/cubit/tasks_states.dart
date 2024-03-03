// 1- tasks loaded, 2-insert task,3- update task,4-delete task,5- error
abstract class TaskState{}
class InitialState extends TaskState{}
 class TaskLodedState extends TaskState{}
 class InsertTaskState extends TaskState{}
 class UpdateTaskState  extends TaskState{}
 class DeleteTaskState extends TaskState{}
 class ErrorState extends TaskState{}