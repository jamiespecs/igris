import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_theme.dart';

class AppTheme {
  /// Create a light theme with the given [colorScheme]
  static ThemeData lightTheme() {
    final appTextTheme =  AppTextTheme.fallback();
    
    // Create a ColorScheme based on AppColors
    final colorScheme = ColorScheme(
      primary: AppColors.speakupNewKeyColorsPrimary,
      primaryContainer: AppColors.speakupNewRefPrimaryPrimary90,
      secondary: AppColors.speakupNewKeyColorsSecondary,
      secondaryContainer: AppColors.speakupNewRefSecondarySecondary90,
      tertiary: AppColors.speakupNewKeyColorsTertiary,
      tertiaryContainer: AppColors.speakupNewRefTertiaryTertiary90,
      surface: AppColors.speakupNewRefNeutralNeutral99,
      surfaceContainerHighest: AppColors.speakupNewRefNeutralVariantNeutralVariant90,
      error: AppColors.speakupNewKeyColorsError,
      errorContainer: AppColors.speakupNewRefErrorError90,
      onPrimary: AppColors.speakupNewRefPrimaryPrimary100,
      onPrimaryContainer: AppColors.speakupNewRefPrimaryPrimary10,
      onSecondary: AppColors.speakupNewRefSecondarySecondary100,
      onSecondaryContainer: AppColors.speakupNewRefSecondarySecondary10,
      onTertiary: AppColors.speakupNewRefTertiaryTertiary100,
      onTertiaryContainer: AppColors.speakupNewRefTertiaryTertiary10,
      onSurface: AppColors.speakupNewRefNeutralNeutral10,
      onSurfaceVariant: AppColors.speakupNewRefNeutralVariantNeutralVariant30,
      onError: AppColors.speakupNewRefErrorError100,
      onErrorContainer: AppColors.speakupNewRefErrorError10,
      brightness: Brightness.light,
      outline: AppColors.speakupNewRefNeutralVariantNeutralVariant50,
      outlineVariant: AppColors.speakupNewRefNeutralVariantNeutralVariant80,
      shadow: AppColors.speakupNewBlack,
      scrim: AppColors.speakupNewBlack,
      inverseSurface: AppColors.speakupNewRefNeutralNeutral20,
      onInverseSurface: AppColors.speakupNewRefNeutralNeutral95,
      inversePrimary: AppColors.speakupNewRefPrimaryPrimary80,
      surfaceTint: AppColors.speakupNewKeyColorsPrimary,
    );

    // Create the base theme using the colorScheme
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      
      // Apply text styles from our custom typography
      textTheme: TextTheme(
        // Display styles
        displayLarge: appTextTheme.speakupTypographyText3xlBold,
        displayMedium: appTextTheme.speakupTypographyText2xlBold,
        displaySmall: appTextTheme.speakupTypographyTextXlBold,
        
        // Headline styles
        headlineLarge: appTextTheme.speakupTypographyTextLgBold,
        headlineMedium: appTextTheme.speakupTypographyTextLgSemibold,
        headlineSmall: appTextTheme.speakupTypographyTextBaseBold,
        
        // Title styles
        titleLarge: appTextTheme.speakupTypographyTextBaseSemibold,
        titleMedium: appTextTheme.speakupTypographyTextMdSemibold,
        titleSmall: appTextTheme.speakupTypographyTextSmSemibold,
        
        // Body styles
        bodyLarge: appTextTheme.speakupTypographyTextBaseRegular,
        bodyMedium: appTextTheme.speakupTypographyTextMdRegular,
        bodySmall: appTextTheme.speakupTypographyTextSmRegular,
        
        // Label styles
        labelLarge: appTextTheme.speakupTypographyTextMdMedium,
        labelMedium: appTextTheme.speakupTypographyTextSmMedium,
        labelSmall: appTextTheme.speakupTypographyTextXsMedium,
      ),
      
      // Add the custom text theme as an extension
      extensions: <ThemeExtension<dynamic>>[
        appTextTheme,
      ],
      
      // Define additional theme properties
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        centerTitle: true,
      ),
      
      // Card theme
      cardTheme: CardTheme(
        color: colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      
      // Button themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          textStyle: appTextTheme.speakupTypographyTextMdMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          elevation: 0,
        ),
      ),
      
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          textStyle: appTextTheme.speakupTypographyTextMdMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: BorderSide(color: colorScheme.outline),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        ),
      ),
      
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          textStyle: appTextTheme.speakupTypographyTextMdMedium,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
      ),
      
      // Input decoration
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surfaceContainerHighest,
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.error, width: 2),
        ),
        labelStyle: appTextTheme.speakupTypographyTextSmRegular?.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
        hintStyle: appTextTheme.speakupTypographyTextSmRegular?.copyWith(
          color: colorScheme.onSurfaceVariant.withOpacity(0.7),
        ),
      ),
      
      // Scaffold background color
      scaffoldBackgroundColor: colorScheme.surface,
      
      // Divider theme
      dividerTheme: DividerThemeData(
        color: colorScheme.outlineVariant,
        thickness: 1,
        space: 1,
      ),
    );
  }

  /// Create a dark theme with the given [colorScheme]
  static ThemeData darkTheme() {
    final appTextTheme = AppTextTheme.fallback();
    
    // Create a ColorScheme based on AppColors
    final colorScheme = ColorScheme(
      primary: AppColors.speakupNewRefPrimaryPrimary80,
      primaryContainer: AppColors.speakupNewRefPrimaryPrimary30,
      secondary: AppColors.speakupNewRefSecondarySecondary80,
      secondaryContainer: AppColors.speakupNewRefSecondarySecondary30,
      tertiary: AppColors.speakupNewRefTertiaryTertiary80,
      tertiaryContainer: AppColors.speakupNewRefTertiaryTertiary30,
      surface: AppColors.speakupNewRefNeutralNeutral10,
      surfaceContainerHighest: AppColors.speakupNewRefNeutralVariantNeutralVariant30,
      error: AppColors.speakupNewRefErrorError80,
      errorContainer: AppColors.speakupNewRefErrorError30,
      onPrimary: AppColors.speakupNewRefPrimaryPrimary20,
      onPrimaryContainer: AppColors.speakupNewRefPrimaryPrimary90,
      onSecondary: AppColors.speakupNewRefSecondarySecondary20,
      onSecondaryContainer: AppColors.speakupNewRefSecondarySecondary90,
      onTertiary: AppColors.speakupNewRefTertiaryTertiary20,
      onTertiaryContainer: AppColors.speakupNewRefTertiaryTertiary90,
      onSurface: AppColors.speakupNewRefNeutralNeutral90,
      onSurfaceVariant: AppColors.speakupNewRefNeutralVariantNeutralVariant80,
      onError: AppColors.speakupNewRefErrorError20,
      onErrorContainer: AppColors.speakupNewRefErrorError90,
      brightness: Brightness.dark,
      outline: AppColors.speakupNewRefNeutralVariantNeutralVariant60,
      outlineVariant: AppColors.speakupNewRefNeutralVariantNeutralVariant30,
      shadow: AppColors.speakupNewBlack,
      scrim: AppColors.speakupNewBlack,
      inverseSurface: AppColors.speakupNewRefNeutralNeutral90,
      onInverseSurface: AppColors.speakupNewRefNeutralNeutral20,
      inversePrimary: AppColors.speakupNewKeyColorsPrimary,
      surfaceTint: AppColors.speakupNewRefPrimaryPrimary80,
    );

    // Create the base theme using the colorScheme
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      
      // Apply text styles from our custom typography
      textTheme: TextTheme(
        // Display styles
        displayLarge: appTextTheme.speakupTypographyText3xlBold?.copyWith(color: colorScheme.onSurface),
        displayMedium: appTextTheme.speakupTypographyText2xlBold?.copyWith(color: colorScheme.onSurface),
        displaySmall: appTextTheme.speakupTypographyTextXlBold?.copyWith(color: colorScheme.onSurface),
        
        // Headline styles
        headlineLarge: appTextTheme.speakupTypographyTextLgBold?.copyWith(color: colorScheme.onSurface),
        headlineMedium: appTextTheme.speakupTypographyTextLgSemibold?.copyWith(color: colorScheme.onSurface),
        headlineSmall: appTextTheme.speakupTypographyTextBaseBold?.copyWith(color: colorScheme.onSurface),
        
        // Title styles
        titleLarge: appTextTheme.speakupTypographyTextBaseSemibold?.copyWith(color: colorScheme.onSurface),
        titleMedium: appTextTheme.speakupTypographyTextMdSemibold?.copyWith(color: colorScheme.onSurface),
        titleSmall: appTextTheme.speakupTypographyTextSmSemibold?.copyWith(color: colorScheme.onSurface),
        
        // Body styles
        bodyLarge: appTextTheme.speakupTypographyTextBaseRegular?.copyWith(color: colorScheme.onSurface),
        bodyMedium: appTextTheme.speakupTypographyTextMdRegular?.copyWith(color: colorScheme.onSurface),
        bodySmall: appTextTheme.speakupTypographyTextSmRegular?.copyWith(color: colorScheme.onSurface),
        
        // Label styles
        labelLarge: appTextTheme.speakupTypographyTextMdMedium?.copyWith(color: colorScheme.onSurface),
        labelMedium: appTextTheme.speakupTypographyTextSmMedium?.copyWith(color: colorScheme.onSurface),
        labelSmall: appTextTheme.speakupTypographyTextXsMedium?.copyWith(color: colorScheme.onSurface),
      ),
      
      // Add the custom text theme as an extension
      extensions: <ThemeExtension<dynamic>>[
        appTextTheme,
      ],
      
      // Define additional theme properties
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        centerTitle: true,
      ),
      
      // Card theme
      cardTheme: CardTheme(
        color: colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      
      // Button themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          textStyle: appTextTheme.speakupTypographyTextMdMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          elevation: 0,
        ),
      ),
      
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          textStyle: appTextTheme.speakupTypographyTextMdMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: BorderSide(color: colorScheme.outline),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        ),
      ),
      
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          textStyle: appTextTheme.speakupTypographyTextMdMedium,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
      ),
      
      // Input decoration
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surfaceContainerHighest,
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorScheme.error, width: 2),
        ),
        labelStyle: appTextTheme.speakupTypographyTextSmRegular?.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
        hintStyle: appTextTheme.speakupTypographyTextSmRegular?.copyWith(
          color: colorScheme.onSurfaceVariant.withOpacity(0.7),
        ),
      ),
      
      // Scaffold background color
      scaffoldBackgroundColor: colorScheme.surface,
      
      // Divider theme
      dividerTheme: DividerThemeData(
        color: colorScheme.outlineVariant,
        thickness: 1,
        space: 1,
      ),
    );
  }
}
