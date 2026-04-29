import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/simple_block_observer.dart';
import 'package:notes/views/notes_view.dart';

import 'cubits/notes_cubit/notes_cubit.dart';
import 'models/note_model.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlockObserver();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>("notes_box");
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => NotesCubit(),
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),

        home: NotesView(),
        ));
  }
}
