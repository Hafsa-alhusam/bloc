import 'package:bloc2/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            onPressed: () => BlocProvider.of<CounterBloc>(context).add(IncrementEvent()),
            child: const Icon(Icons.add)),
        const SizedBox(height: 10),
        FloatingActionButton(
            onPressed: () => BlocProvider.of<CounterBloc>(context).add(ResetEvent()),
            child: const Icon(Icons.exposure_zero)),
        const SizedBox(height: 10),
        FloatingActionButton(
            onPressed: () => BlocProvider.of<CounterBloc>(context).add(DecrementEvent()),
            child: const Icon(Icons.remove)),
      ],
    );
  }
}
