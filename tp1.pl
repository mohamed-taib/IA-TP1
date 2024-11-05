:- dynamic task/4.
%task(Id, Description, Assignee, false).

create_task(Id,Description,Assignee):-
   \+ task(Id, _, _, _),
   assertz(task(Id, Description, Assignee,false)),
   format('Task created: ~w.~n', [Id]).

assign_task(Id, NewAssignee) :-
    task(Id, Description, _, Status), 
    retract(task(Id, Description, _, Status)), 
    assertz(task(Id, Description, NewAssignee, Status)), 
    format('Task ~w assigned to user: ~w.~n', [Id, NewAssignee]). 

mark_completed(Id):-
    task(Id, Description, Assignee, false),
    retract(task(Id, Description, Assignee, false)),
    assertz(task(Id, Description, Assignee, true)), 
    format('Task ~w marked as completed.~n', [Id]).

display_tasks :-
    forall(task(Id, Description, Assignee, Status),
        (format('Task ~w:~n', [Id]),
        format('- Description: ~w~n', [Description]),
        format('- Assignee: ~w~n', [Assignee]),
        format('- Completion status: ~w~n~n', [Status]))).

display_tasks_assigned_to(User) :-
    format('Tasks assigned to ~w:~n', [User]),
    forall(task(Id, Description, User, Status),
           (format('Task ~w:~n', [Id]),
            format('- Description: ~w~n', [Description]),
            format('- Completion status: ~w~n~n', [Status]))).

display_completed_tasks(Id) :-
    write('Completed tasks:'),
    forall(task(Id, Description, Assignee, true),
           (format('~nTask ~w:~n', [Id]),
            format('- Description: ~w~n', [Description]),
            format('- Assignee: ~w~n', [Assignee]))).