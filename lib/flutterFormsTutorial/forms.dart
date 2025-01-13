import 'package:flutter/material.dart';
import '/flutterFormsTutorial/models/todo.dart';
import '/flutterFormsTutorial/todo_list.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _HomeState();
}

class _HomeState extends State<Forms> {

  final formGlobalKey = GlobalKey<FormState>();

  Priority selectedPriority = Priority.low;
  String title = '';
  String description = '';

  final List<Todo> todos = [
    const Todo(
        title: 'Buy milk',
        description: 'There is no milk left in the fridge!',
        priority: Priority.high
    ),
    const Todo(
        title: 'Make the bed',
        description: 'Keep things tidy please..',
        priority: Priority.low
    ),
    const Todo(
        title: 'Pay bills',
        description: 'The gas bill needs paying ASAP.',
        priority: Priority.urgent
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: TodoList(todos: todos)),

            // form stuff below
            Form(
              key: formGlobalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  // to-do title
                  TextFormField(
                    maxLength: 20,
                    decoration: const InputDecoration(
                      label: Text('Todo title')
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a value for the title.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      title = value!;
                    },
                  ),

                  // to-do description
                  TextFormField(
                    maxLength: 20,
                    decoration: const InputDecoration(
                        label: Text('Todo description')
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 5) {
                        return 'Please enter a description at least 5 characters.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      description = value!;
                    },
                  ),

                  // priority
                  DropdownButtonFormField(
                    value: selectedPriority,
                    decoration: const InputDecoration(
                      label: Text('Priority of todo')
                    ),
                    items: Priority.values.map((priority) {
                      return DropdownMenuItem(
                        value: priority,
                        child: Text(priority.title),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedPriority = value!;
                      });
                    },
                  ),

                  // submit button
                  const SizedBox(height: 20),
                  FilledButton(
                    onPressed: () {
                      if (formGlobalKey.currentState!.validate()) {
                        formGlobalKey.currentState!.save();
                        setState(() {
                          todos.add(Todo(
                            title: title,
                            description: description,
                            priority: selectedPriority
                          ));
                        });
                        formGlobalKey.currentState!.reset();
                        selectedPriority = Priority.low;
                      }
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)
                      ),
                    ),
                    child: const Text('Add'),
                  )

                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}

