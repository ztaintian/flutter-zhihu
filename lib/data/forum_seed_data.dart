import '../models/forum_post.dart';

const featuredTopics = ['Flutter', '产品设计', '职场成长', 'AI 应用', '独立开发', '效率工具'];

const discoverySections = [
  DiscoverySection(
    title: '今日热榜',
    subtitle: '正在被讨论的高热问题',
    iconCodePoint: 0xe6e1,
    items: [
      'Flutter 3.44 对新项目有什么影响？',
      'AI 工具会怎样改变产品经理的工作流？',
      '独立开发者怎样做第一批种子用户？',
    ],
  ),
  DiscoverySection(
    title: '圆桌讨论',
    subtitle: '和同兴趣的人一起深入交流',
    iconCodePoint: 0xe7ef,
    items: ['移动端架构演进', '轻量级创业复盘', '效率工具真实体验'],
  ),
  DiscoverySection(
    title: '新知专栏',
    subtitle: '编辑精选的长回答和经验帖',
    iconCodePoint: 0xe865,
    items: ['从零搭一个 Flutter App', '怎样写出可维护的组件库', '信息流产品的内容组织'],
  ),
];

const savedCollections = [
  SavedCollection(title: 'Flutter 开发资料', count: 18, updatedAt: '今天更新'),
  SavedCollection(title: '产品和设计方法', count: 24, updatedAt: '昨天更新'),
  SavedCollection(title: '独立开发复盘', count: 9, updatedAt: '3 天前更新'),
];

const profileStats = [
  ProfileStat(label: '回答', value: '36'),
  ProfileStat(label: '收藏', value: '128'),
  ProfileStat(label: '关注者', value: '2.4k'),
];

const forumPosts = [
  ForumPost(
    question: 'Flutter 新项目应该先搭哪些基础结构？',
    answer:
        '我会先把页面、公共组件、数据模型和 mock 数据拆开。这样首页可以快速迭代，后续接接口、做状态管理、加详情页时不会把逻辑堆到 main.dart 里。',
    authorName: '林川',
    authorTitle: '移动端工程师',
    avatarText: '林',
    topic: 'Flutter',
    votes: 128,
    comments: 32,
    reads: 4200,
    publishedAt: '12 分钟前',
  ),
  ForumPost(
    question: '类似知乎的信息流，怎样排版更耐看？',
    answer:
        '重点是让问题标题、作者信息、回答摘要和操作区有明确层级。卡片间距不要太大，标签和统计信息要轻，阅读时用户应该先看到观点，而不是被装饰抢走注意力。',
    authorName: '苏眠',
    authorTitle: '体验设计师',
    avatarText: '苏',
    topic: '产品设计',
    votes: 256,
    comments: 48,
    reads: 8900,
    publishedAt: '1 小时前',
  ),
  ForumPost(
    question: '个人开发者做 App，第一版要做到什么程度？',
    answer:
        '第一版应该把核心闭环做顺：用户能看见内容、理解价值、完成一个关键动作。复杂账号体系、推荐算法和运营后台可以后置，但信息架构最好一开始就留出扩展空间。',
    authorName: '周南',
    authorTitle: '独立开发者',
    avatarText: '周',
    topic: '独立开发',
    votes: 93,
    comments: 19,
    reads: 3100,
    publishedAt: '3 小时前',
  ),
];

class DiscoverySection {
  const DiscoverySection({
    required this.title,
    required this.subtitle,
    required this.iconCodePoint,
    required this.items,
  });

  final String title;
  final String subtitle;
  final int iconCodePoint;
  final List<String> items;
}

class SavedCollection {
  const SavedCollection({
    required this.title,
    required this.count,
    required this.updatedAt,
  });

  final String title;
  final int count;
  final String updatedAt;
}

class ProfileStat {
  const ProfileStat({required this.label, required this.value});

  final String label;
  final String value;
}
