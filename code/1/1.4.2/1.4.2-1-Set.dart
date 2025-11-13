void main() {
  // Case Study: Managing unique tags for a startup blog post
  
  // 1. Declaration
  // Note the use of curly braces {}
  final Set<String> articleTags = {'Startup', 'Funding', 'Tech'};
  
  print('Initial Tags: $articleTags');

  // 2. Attempting to add duplicate
  // 'Tech' is already in the set. This operation will be ignored.
  bool isAdded = articleTags.add('Tech'); 
  
  print('Was "Tech" added? $isAdded'); // Output: false
  print('Tags after duplicate attempt: $articleTags'); // No change

  // 3. Adding new unique item
  articleTags.add('Growth');
  print('Tags after adding "Growth": $articleTags');

  // 4. Checking existence (Very fast operation)
  bool hasFundingTag = articleTags.contains('Funding');
  print('Contains "Funding"? $hasFundingTag');
}