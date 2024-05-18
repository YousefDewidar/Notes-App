import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.amberAccent,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 24, top: 24, bottom: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Build flutter apps with yousef dewidar',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.4), fontSize: 16)),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_sharp,
                  color: Colors.red,
                  size: 28,
                ),
              ),
            ),
            // date
            Text(
              'may, 20/2024',
              style:
                  TextStyle(color: Colors.black.withOpacity(.4), fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
