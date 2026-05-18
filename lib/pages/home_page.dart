import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';
import 'chat_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> chats = const [
    {
      'name': 'Alya',
      'message': 'Besok jadi kumpul tugas?',
      'time': '21.10',
      'initial': 'A',
      'unread': true,
      'count': 2,
    },
    {
      'name': 'Rina',
      'message': 'Aku sudah kirim file-nya ya',
      'time': '20.45',
      'initial': 'R',
      'unread': false,
      'count': 0,
    },
    {
      'name': 'Kelompok Flutter',
      'message': 'Jangan lupa screenshot emulator',
      'time': '19.32',
      'initial': 'K',
      'unread': true,
      'count': 5,
    },
    {
      'name': 'Dosen Mobile',
      'message': 'Tugas dikumpulkan via GitHub dan Notion',
      'time': '18.15',
      'initial': 'D',
      'unread': false,
      'count': 0,
    },
    {
      'name': 'Nazwa',
      'message': 'Aku lagi ngerjain UI WhatsApp iPhone',
      'time': '17.50',
      'initial': 'N',
      'unread': false,
      'count': 0,
    },
    {
      'name': 'Budi',
      'message': 'Oke, nanti aku cek lagi',
      'time': '16.24',
      'initial': 'B',
      'unread': true,
      'count': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header atas ala iPhone
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Edit',
                    style: TextStyle(
                      color: Color(0xFF007AFF),
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.camera,
                          color: Color(0xFF007AFF),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.square_pencil,
                          color: Color(0xFF007AFF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Judul besar
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Chats',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 14),

            // Filter chip ala iOS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _FilterChip(title: 'All', isActive: true),
                  const SizedBox(width: 8),
                  _FilterChip(title: 'Unread', isActive: false),
                  const SizedBox(width: 8),
                  _FilterChip(title: 'Groups', isActive: false),
                ],
              ),
            ),

            const SizedBox(height: 10),

            const Divider(height: 1),

            // List chat
            Expanded(
              child: ListView.separated(
                itemCount: chats.length,
                separatorBuilder: (context, index) => const Divider(
                  height: 1,
                  indent: 82,
                ),
                itemBuilder: (context, index) {
                  final chat = chats[index];

                  return ChatTile(
                    name: chat['name'],
                    message: chat['message'],
                    time: chat['time'],
                    initial: chat['initial'],
                    isUnread: chat['unread'],
                    unreadCount: chat['count'],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatPage(
                            name: chat['name'],
                            initial: chat['initial'],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // Bottom navigation ala WhatsApp iPhone
      bottomNavigationBar: Container(
        height: 78,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Color(0xFFE5E5EA)),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _BottomNavItem(
              icon: CupertinoIcons.circle,
              label: 'Updates',
              isActive: false,
            ),
            _BottomNavItem(
              icon: CupertinoIcons.phone,
              label: 'Calls',
              isActive: false,
            ),
            _BottomNavItem(
              icon: CupertinoIcons.group,
              label: 'Communities',
              isActive: false,
            ),
            _BottomNavItem(
              icon: CupertinoIcons.chat_bubble_2_fill,
              label: 'Chats',
              isActive: true,
            ),
            _BottomNavItem(
              icon: CupertinoIcons.settings,
              label: 'Settings',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String title;
  final bool isActive;

  const _FilterChip({
    required this.title,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFE5F1FF) : const Color(0xFFF1F1F6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? const Color(0xFF007AFF) : Colors.black54,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;

  const _BottomNavItem({
    required this.icon,
    required this.label,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isActive ? const Color(0xFF007AFF) : Colors.grey,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isActive ? const Color(0xFF007AFF) : Colors.grey,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}