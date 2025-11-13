void main() {
  // Case Study: Managing unique tags for a startup blog post
  final Set<String> articleTags = {'Startup', 'Funding', 'Tech'};
  
  print('Initial Tags: $articleTags');
  print('Total Tags: ${articleTags.length}\n');

  // 1. Attempting to add duplicate multiple times
  print('--- Trying to add duplicate "Tech" three times ---');
  bool add1 = articleTags.add('Tech');
  bool add2 = articleTags.add('Tech');
  bool add3 = articleTags.add('Tech');
  
  print('Result of first add: $add1');
  print('Result of second add: $add2');
  print('Result of third add: $add3');
  print('Tags after duplicate attempts: $articleTags');
  print('Total Tags: ${articleTags.length}\n');

  // 2. Adding new unique tag
  print('--- Adding unique tag "Growth" ---');
  bool addedGrowth = articleTags.add('Growth');
  print('Was "Growth" added? $addedGrowth');
  print('Tags after adding "Growth": $articleTags');
  print('Total Tags: ${articleTags.length}');
}