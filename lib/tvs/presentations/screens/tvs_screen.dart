import 'package:courses/tvs/presentations/controller/tvs_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/services/services_locator.dart';
import '../controller/tvs_bloc.dart';

class TvsScreen extends StatefulWidget {
  const TvsScreen({super.key});

  @override
  State<TvsScreen> createState() => _TvsScreenState();
}

class _TvsScreenState extends State<TvsScreen> {
  final bloc = sl<TvsBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: bloc,
        builder: (context, state) {
          print("build $state");
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                state.toString(),
                textAlign: TextAlign.center,
              ),
              ...List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: FloatingActionButton(
                    onPressed: () {
                      bloc.add(IncreaseCounter(index));
                    },
                    child: Text(
                      index.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
