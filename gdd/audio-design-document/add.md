# ROCKET RIFT (Audio Design Document)

## Table of content

- [Other Design Documents](#other-design-documents)
- [Outline/Objectives](#outlineobjectives)
- [Implementation](#implementation)
- [Content List](#content-list)
- [Technical Guidelines](#technical-guidelines)
  - [Software](#software)
  - [File Formats](#file-formats)
  - [Restrictions](#restrictions)
  - [Naming Conventions](#naming-conventions)
  - [Workflows](#workflows)

## Other Design Documents

- [GDD](../game-design-document/gdd.md)
- [Art Bible](../art-bible/art-bible.md)
- [LDD](../level-design-document/ldd.md)

## Outline/Objectives

The audio should be punchy, immersive, and cocky, as in the original.

### File formats, compression, and size

#### Lossless uncompressed

Size: Big
Quality: Best
Formats: `WAV`, `AIFF`

#### Lossless compressed

Size: Medium
Quality: High
Formats: `FLAC`, `WMA Lossless`, `ALAC`

#### Lossy compression

Size: Small
Quality: Low
Formats: `OGG`, `MP3`, `AAC`, `WMA`

#### OPUS (for dialog)

Size: Small
Quality: High
Formats: `OPUS`

As of writing this, [Godot supports 3 audio formats](https://docs.godotengine.org/en/stable/tutorials/assets_pipeline/importing_audio_samples.html):

- WAV
- OGG Vorbis
- MP3

According to [Audio File Formats | Godot Basics Tutorial | Ep 59](https://www.youtube.com/watch?v=ChJIKW2Y_U8) and [several comments online](https://www.reddit.com/r/godot/comments/s0p6ik/music_file_type_and_size/), the best practice is to use:

- `OGG` for game music or long runtime sounds
- `WAV` for sfx or short sounds

According to one of the comments in the above Redit post the MP3 format should be avoided for short audio files, such as SFX, since it could lag/delay.

## Implementation

### General

There should be 3 audio busses:

- Master
- Music
- SFX

### Music

Toggles for music will either enable or disable the music, which is played throughout the game.

#### Main Menu

The music in the main menu should be played before the game starts or when the player returns to the menu.

#### In-game

The theme music should be played as soon as the game starts and the player runs. Maybe the music lowers in volume when entering the pause menu or the end screen. And when running the music should go back to normal volume.

When going back to the main menu the music transitions to that music.

### SFX

Toggles for SFX will either enable or disable the music.

There should be SFX for when the player runs on the floor, flies, obstacles, explosions, and alarms/warnings. Also maybe some state SFX like when the game starts or ends.

### UI

UI SFX are controlled by the same toggles for SFX, and are under the same bus.

There should be SFX for clicking buttons at least, but maybe even some more.

## Content List

### Music list

| Type | Name |
|---|---|
| Menu | Main menu music |
| Game | Main game music |

### SFX list

| Type | Name |
|---|---|
| Obstacle | Zapper |
| Obstacle | Missile |
| Obstacle | Warning for missile |
| Obstacle | Hurt by the zapper |
| Obstacle | Hurt by the missile |
| Environment | Explosion |
| Player | Running |
| Player | Flies |
| Collectable | Coins |

### UI list

| Type | Name |
|---|---|
| Button | Button click |

## Technical Guidelines

### Software

- [Audacity](https://www.audacityteam.org/) (collecting and editing audio)
- [Pro SFXR](https://pro.sfxr.me/) (generating SFX)
- [Bosca Ceoil: The Blue Album](https://yurisizov.itch.io/boscaceoil-blue) (creating music)
- [1BITDRAGON](https://1bitdragon.com/) (creating music)

### File Formats

- **Music:** .ogg
- **SFX:** .wav

### Restrictions

Keep the size of the files as small as possible.

One limitation is GitHub's size limit for single files: 100MB.

### Naming Conventions

As Godot's naming convention: [snake_case](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html#naming-conventions).

### Workflows

What are the workflows for creating any audio mentioned in this ADD?
