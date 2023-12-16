import 'package:bloc2/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/home_page/action_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Bloc"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("data1"),
            const SizedBox(height: 10),
            BlocBuilder<CounterBloc, CounterState>(
              builder: ((context, state) {
                if (state is CounterInitial) {
                  return const Text("0");
                } else if (state is CounterValueChangedState) {
                  return Text(state.counter.toString());
                } else {
                  return const SizedBox();
                }
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: const ActionButton(),
    );
  }
}
