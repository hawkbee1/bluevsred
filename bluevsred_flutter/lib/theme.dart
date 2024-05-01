import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nes_ui/nes_ui.dart';

import 'package:flame/palette.dart';

/// A palette of colors to be used in the game.
///
/// The reason we're not going with something like Material Design's
/// `Theme` is simply that this is simpler to work with and yet gives
/// us everything we need for a game.
///
/// Games generally have more radical color palettes than apps. For example,
/// every level of a game can have radically different colors.
/// At the same time, games rarely support dark mode.
///
/// Colors here are implemented as getters so that hot reloading works.
/// In practice, we could just as easily implement the colors
/// as `static const`. But this way the palette is more malleable:
/// we could allow players to customize colors, for example,
/// or even get the colors from the network.
class Palette {
  static PaletteEntry get seed => const PaletteEntry(Color(0xFF0050bc));
  static PaletteEntry get text => const PaletteEntry(Color(0xee352b42));
  static PaletteEntry get backgroundMain =>
      const PaletteEntry(Color(0xffa2fff3));
  static PaletteEntry get backgroundLevelSelection =>
      const PaletteEntry(Color(0xffffcd75));
  static PaletteEntry get backgroundPlaySession =>
      const PaletteEntry(Color(0xffa2fff3));
  static PaletteEntry get backgroundSettings =>
      const PaletteEntry(Color(0xffbfc8e3));
}

ThemeData get theme => flutterNesTheme().copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Palette.seed.color,
        background: Palette.backgroundMain.color,
      ),
      textTheme: GoogleFonts.pressStart2pTextTheme().apply(
        bodyColor: Palette.text.color,
        displayColor: Palette.text.color,
      ),
    );
