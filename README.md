# Prolog Task Management System
This repository is a homework for module **Artificial Intelligence**, for understanding and get familiar with `Prolog` language.

This job was done by: 
+ Mohamed Taib Benaicha 
+ Eddalia Hadjer
  
4 ( we did a meet online and we push it directly thats why there is no commit by hadjer, 
hadjer got a problem with github, it's fixed now, we will make sure to keep marks next time ) 

### Prerequisites
+ `SWI-Prolog` should be installed from [here.](http://www.swi-prolog.org/Download.html)

## Homework Subject:
### **Scenario:** Task Management System

You are tasked with building a task management system in Prolog. The system should allow users to create tasks, assign tasks to users, mark tasks as completed, and display various task-related information.

#### Exercise Instructions:

1. Define necessary predicates to represent tasks. Each task should have a unique identifier, a description, an assignee (user), and a completion status.
2. Implement predicates to create tasks. The predicate should take the task identifier, description, and assignee as parameters and initialize the completion status as false.
3. Create a predicate to assign a task to a user. The predicate should take the task identifier and the user as parameters.
4. Implement a predicate to mark a task as completed. The predicate should take the task identifier as a parameter and update the completion status to true.
5. Define a predicate to display all tasks along with their details, including the task identifier, description, assignee, and completion status.
6. Create predicates to display tasks based on specific filters, such as tasks assigned to a specific user or tasks that are completed.
7. Test your implementation by creating tasks, assigning tasks, marking tasks as completed, and displaying task-related information based on different filters.

#### Example Usage:
```prolog
    ?- create_task(1, 'Implement login functionality', 'Alice').
    Task created: 1.

    ?- create_task(2, 'Design homepage layout', 'Bob').
    Task created: 2.

    ?- assign_task(1, 'John').
    Task 1 assigned to user: John.

    ?- assign_task(2, 'Alice').
    Task 2 assigned to user: Alice.

    ?- mark_completed(2).
    Task 2 marked as completed.

    ?- display_tasks.
    Task 1:
    - Description: Implement login functionality
    - Assignee: John
    - Completion status: false
    Task 2:
    - Description: Design homepage layout
    - Assignee: Alice
    - Completion status: true

    ?- display_tasks_assigned_to('Alice').
    Tasks assigned to Alice:
    Task 2:
    - Description: Design homepage layout
    - Completion status: true

    ?- display_completed_tasks.
    Completed tasks:
    Task 2:
    - Description: Design homepage layout
    - Assignee: Alice
```
