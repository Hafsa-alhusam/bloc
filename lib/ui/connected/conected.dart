import 'package:bloc2/ui/widgets/connected/connected_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/intarnet_bloc.dart';

class Connected extends StatelessWidget {
  const Connected({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Connected"),
        ),
        body: BlocBuilder<IntarnetBloc, IntarnetState>(
          builder: (context, state) {
            if (state is ConnectedState) {
              return BuildTextWidget(message: state.message);
            } else if (state is NotConnectedState) {
              return BuildTextWidget(message: state.message);
            } else {
              return const SizedBox();
            }
          },
        ));
  }
}
