import 'package:flutter/material.dart';
import 'package:roles/src/components/actions_card.dart';
import 'package:roles/src/components/title_card.dart';
import 'package:roles/src/model/role.dart';

class ItemRole extends StatelessWidget {
  final Role _role;

  const ItemRole(this._role, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.4),
        child: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(
            _role.sigla,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(48),
              bottomRight: Radius.circular(48),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(_role.profileImage), fit: BoxFit.fill),
              ),
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(48),
                  bottomLeft: Radius.circular(48))),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(48), topRight: Radius.circular(48)),
          gradient: LinearGradient(
            begin: const Alignment(-0.2, -0.2),
            end: const Alignment(1.5, -0.3),
            colors: [
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0)
            ],
          ),
        ),
        child: Column(
          children: [
            TitleCard(_role.name, _role.address),
            const ActionsCard(),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                _role.biography,
                textAlign: TextAlign.justify,
                softWrap: true,
                style: const TextStyle(
                    fontSize: 14,
                    letterSpacing: 2,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
