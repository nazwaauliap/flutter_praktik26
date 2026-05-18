import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String name;
  final String initial;

  const ChatPage({
    super.key,
    required this.name,
    required this.initial,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),

      body: SafeArea(
        child: Column(
          children: [
            // Header chat ala iPhone
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Color(0xFFE5E5EA)),
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      CupertinoIcons.chevron_back,
                      color: Color(0xFF007AFF),
                    ),
                  ),

                  CircleAvatar(
                    radius: 18,
                    backgroundColor: const Color(0xFF34C759),
                    child: Text(
                      initial,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'online',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.video_camera,
                      color: Color(0xFF007AFF),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.phone,
                      color: Color(0xFF007AFF),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(14),
                children: const [
                  _DateLabel(text: 'Today'),

                  ChatBubble(
                    text: 'Halo, tugas Flutter sudah mulai dikerjakan?',
                    isMe: false,
                  ),
                  ChatBubble(
                    text: 'Sudah, aku memilih membuat UI WhatsApp versi iPhone.',
                    isMe: true,
                  ),
                  ChatBubble(
                    text: 'Bagus. Jangan lupa buat wireframe dan screenshot.',
                    isMe: false,
                  ),
                  ChatBubble(
                    text: 'Siap, nanti aku upload ke GitHub dan Notion.',
                    isMe: true,
                  ),
                ],
              ),
            ),

            // Input chat bawah
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              color: Colors.white,
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.plus_circle,
                    color: Color(0xFF007AFF),
                    size: 28,
                  ),

                  const SizedBox(width: 8),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xFFD1D1D6)),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Message',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  const Icon(
                    CupertinoIcons.camera,
                    color: Color(0xFF007AFF),
                  ),

                  const SizedBox(width: 12),

                  const Icon(
                    CupertinoIcons.mic,
                    color: Color(0xFF007AFF),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  const ChatBubble({
    super.key,
    required this.text,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        constraints: const BoxConstraints(maxWidth: 275),
        decoration: BoxDecoration(
          color: isMe ? const Color(0xFFD9FDD3) : Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            height: 1.3,
          ),
        ),
      ),
    );
  }
}

class _DateLabel extends StatelessWidget {
  final String text;

  const _DateLabel({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}