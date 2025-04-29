import 'package:flutter/material.dart';
import 'package:igris/igris.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Igris Demo',
      theme: AppTheme.lightTheme(),
      themeMode: ThemeMode.system,
      home: const ComponentShowcase(),
    );
  }
}

class ComponentShowcase extends StatelessWidget {
  const ComponentShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Igris Components'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Headline(
                title: 'Buttons',
                subtitle: 'Various button styles available in the library',
              ),
              const SizedBox(height: 24),
              
              // Standard Button
              Button(
                text: 'Standard Button',
                onPressed: () {},
                icon: Icons.add,
              ),
              const SizedBox(height: 16),
              
              // Google SSO Button
              GoogleSSOButton(
                onPressed: () {},
              ),
              const SizedBox(height: 16),

              // Outlined Card Example
              const Headline(
                title: 'Cards',
                subtitle: 'Card components with different styles',
              ),
              const SizedBox(height: 24),
              
              OutlinedCard(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Outlined Card',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'This is an example of the OutlinedCard component',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 24),
              
              // List Tile Examples
              const Headline(
                title: 'List Tiles',
                subtitle: 'Selectable list tiles for various use cases',
              ),
              const SizedBox(height: 24),
              
              SelectableListTile(
                title: 'Default List Tile',
                isSelected: true,
                onTap: () {},
                trailing: const Text('Details'),
              ),
              const SizedBox(height: 12),
              SelectableListTile(
                title: 'Large Variant',
                subtitle: 'With additional description text',
                isSelected: false,
                onTap: () {},
                variant: SelectableListTileVariant.large,
              ),
              
              const SizedBox(height: 24),
              
              // Tile Components
              const Headline(
                title: 'Tiles',
                subtitle: 'Tile components for curriculum or feature displays',
              ),
              const SizedBox(height: 24),
              
              Tile(
                title: '1.1 Introduction',
                subtitle: 'Learn the basics of the framework',
                icon: Icons.school,
                onTap: () {},
              ),
              const SizedBox(height: 12),
              Tile(
                title: '1.2 Advanced Concepts',
                subtitle: 'Dive deeper into complex topics',
                icon: Icons.psychology,
                onTap: () {},
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              ),
              
              const SizedBox(height: 24),
              
              // Collapsible Example
              const Headline(
                title: 'Collapsible',
                subtitle: 'Expandable section component',
              ),
              const SizedBox(height: 24),
              
              Collapsible(
                sectionNumber: '1',
                title: 'Getting Started',
                subtitle: 'Introduction to the basics',
                initiallyExpanded: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to the tutorial!',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        const UnorderedList([
                          'First, install the required dependencies',
                          'Configure your project settings',
                          'Start building your first feature'
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: WideFAB(
        label: 'Continue',
        onPressed: () {},
      ),
    );
  }
}
