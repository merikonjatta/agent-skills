---
name: chord-notation
description: Writing and editing chord and lyrics sheets in plain text
---

# Chord Notation

## Common rules

- Use `b` for flat (not `♭`) and `#` for sharp (not `♯`).
- When transposing:
  - Use b or # in a sensible way given the key.
  - Adjust the corresponding lyrics line spacing to match.
- When converting across formats:
  - Prefer converting manually (only use one-off scripts if manual conversion did not work).

## "Obsidian Chord Sheets" Format

```chords
Play key: [C]

[Intro]
Cadd9         | G/B          | Am7              | Cadd9
FM7           | Dm7/G        | Cadd9     G7sus4 | C
[A]
C             | G/B           | Am7             | Cadd9
最後          | の   キスはた | ば   このflavor |   がした   に
FM7           | Dm7/G         | C       G7sus4  | C
がくて     せ | つない香り    | -               |-
[B]
Am7   CM7     | Am7/G         | FM7             | G7/D
明日の     今 | 頃には        | あなたはどこに  |   いるんだろう
Am7           | Em7           | FM7             | %
誰を     想っ | てるん   だろ | う              | -
```

Format used by the [Obsidian Chord Sheets](https://community.obsidian.md/plugins/chord-sheets) plugin.

Wrap music in fenced code blocks marked as `chords`.
Lyrics and chords are typically written on alternating lines, but
chord lines can appear consecutively on instrumental sections.

The plugin auto-detects chord lines and lyrics lines. You can explicitly mark a
line as a chord line by apending `/c`, or as a lyrics line by appending `/l`.

Chord symbols can also be written inline with brackets:

```
[C] 最後 [G/B] のキスはた [Am7] このflavor [Cadd9] がした
```

Bar lines `|` separate measures. Leading and traling bar lines are optional,
and are usually left out to save space.
Chord symbols and lyrics are spaced out roughly according to
which beat in the measure they are played.

Prefer `CM7` over `Cmaj7` for brevity.

Additional features and limitations:
- `%` indicates that the previous chord is repeated.
- `-` means no lyrics for that bar.
- `NC` means no chord.
- `[Section Name]` on a line by its own marks optional section names.
- Does not support `Bm7-5`: use `Bm7b5` or `Bø` instead.
- Define specific guitar chord voicings using brackets:
  - `F/G[xx0010]`
  - `Dm6[4|x2x132]` (capo on 4)
  - `C°[x34_242_]` (barre on G, B and E strings)
  - `C*[0 10 10 12 8 8]` or `C*[0,10,10,12,8,8]` for higher up the neck


## "OneMotion Chord Player" format

```
4Cadd9  4G/B  4Am7  4Cadd9
4FMaj7  4Dm7/G  3Cadd9  1G7sus4  4C
```

Format used by [OneMotion Chord Player](https://onemotion.com/chord-player).

Precede the chord symbol with the number of beats it is to be played for.

Whitespace is purely for readability.

Additional features and limitations:
- This format does not support lyrics or section names.
- Major 7th must be written as `FMaj7`, not `FM7` (which will be interpreted as minor 7th).


## "ChordPro" / "ChordWiki" / "LeadSheet" format

```
[Cadd9]- - - - | [G/B]- - - - | [Am7]- - - - | [Cadd9]- - - - |
[FM7]- - - - | [Dm7/G]- - - - | [Cadd9]- - - [G7sus4]- | [C]- - - - |
[C]最後 [G/B]のキスはタ [Am7]バコの flavor [Cadd9]がした
ニ [Fm7]ガくてせ [Dm7/G]つない香り | [C]- - - [G7sus4]- |[C]- - - - |
```

Notation defined by [ChordPro](https://www.chordpro.org/chordpro/chordpro-introduction/) and
used in [ChordWiki](https://ja.chordwiki.org) among other platforms.

See the official website for full feature reference.

In ChordWiki, hyphens and bar lines are used to indicate rhythm.
Note duration for a single hyphen depends on context.

Insert spaces appropriately before chord symbols for legibility in plain text state.
