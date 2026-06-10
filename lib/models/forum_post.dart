class ForumPost {
  const ForumPost({
    required this.question,
    required this.answer,
    required this.authorName,
    required this.authorTitle,
    required this.avatarText,
    required this.topic,
    required this.votes,
    required this.comments,
    required this.reads,
    required this.publishedAt,
  });

  final String question;
  final String answer;
  final String authorName;
  final String authorTitle;
  final String avatarText;
  final String topic;
  final int votes;
  final int comments;
  final int reads;
  final String publishedAt;
}
