import 'package:flutter/material.dart';
import 'package:mahs_yes_no_app/domain/entities/message.dart';

class HerMessage extends StatelessWidget {
  final Message message;

  const HerMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text, style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10),
        if (message.imagenUrl != null) _Image(imageUrl: message.imagenUrl!),
        const SizedBox(height: 20)
      ],
    );
  }
}

class _Image extends StatelessWidget {
  final String imageUrl;

  const _Image({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          imageUrl,
          width: size.width * 0.5,
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;

            return Container(
              width: size.width * 0.5,
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text('Recibiendo imagen...'),
            );
          },
        ));
  }
}
