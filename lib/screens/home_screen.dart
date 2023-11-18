import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvc/constants.dart';
import 'package:mvc/controllers/counter/counter_cubit.dart';
import 'package:mvc/controllers/counter/counter_state.dart';
import 'package:mvc/models/counter_info.dart';
import 'package:mvc/widgets/counter_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, profileRoute);
            }, 
            icon: Icon(Icons.person_2),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          itemBuilder: (context, i){
            return BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state){
                return CounterCard(
                  counterInfo: BlocProvider.of<CounterCubit>(context).counters[i], 
                  onClick: (){
                    BlocProvider.of<CounterCubit>(context, listen: false).inc(i);
                  },
                );
              },
            );
          },
          separatorBuilder: (context, i){
            return SizedBox(height: 15,);
          }, 
          itemCount: BlocProvider.of<CounterCubit>(context).counters.length,
        ),
      ),
    );
  }
}