import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvc/controllers/navigation_bar/navigation_cubit.dart';
import 'package:mvc/controllers/navigation_bar/navigation_state.dart';
import 'package:mvc/widgets/home_body.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Widget> bodies = [
    HomeBody(),
    Center(child: Text("Profile")),
    Center(child: Text("Search")),
  ];
  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state){
        return Scaffold(
      //body: bodies[BlocProvider.of<NavigationCubit>(context).myCurrentIndex],
      body: PageView(
        controller: BlocProvider.of<NavigationCubit>(context).controller,
        children: bodies,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: BlocProvider.of<NavigationCubit>(context).myCurrentIndex,
        onTap: (value){
          BlocProvider.of<NavigationCubit>(context, listen: false).changeIndex(value);
        },
        selectedItemColor: Colors.orange[800],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search'
          ),
        ],
      ),
    );
      },
    );
  }
}