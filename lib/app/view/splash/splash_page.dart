import 'package:flutter/material.dart';
import 'package:task_list/app/view/components/h1.dart';
import 'package:task_list/app/view/components/shape.dart';
import 'package:task_list/app/view/home/inherited_widgets.dart';
import 'package:task_list/app/view/task_list/task_list_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Row(children: [Shape()]),
          const SizedBox(height: 79),
          Image.asset(
            'assets/images/on-boarding.png',
            width: 180,
            height: 168,
          ),
          const SizedBox(height: 99),
          const H1('Listas de tareas'),
          Text(
            'Inherited Widget',
            style: TextStyle(
              color: SpecialColor.of(context).color,
            ),
          ),
          const SizedBox(height: 21),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return TaskListPage();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                  'La mejor forma para que no se te olvide nada es anotarlo. Guardar tus tareas y ve completando poco a poco para aumentar tu productividad',
                  textAlign: TextAlign.center),
            ),
          ),
        ],
      )),
    );
  }
}
