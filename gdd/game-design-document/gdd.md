# ROCKET RIFT (Game Design Document)

## Table of content

- [Overview](#overview)
  - [Skills](#skills)
- [Gameplay](#gameplay)
  - [Gameplay Hook](#gameplay-hook)
  - [Loops](#loops)
  - [Entities](#entities)
  - [Progression](#progression)
  - [Losing](#losing)
- [Assets](#assets)
  - [Sensory Hook](#sensory-hook)
  - [Art](#art)
  - [Level Design](#level-design)
  - [Audio](#audio)
- [Technical](#technical)
  - [Platform](#platform)
  - [Tools](#tools)
- [Marketing & funding](#marketing--funding)
  - [Target](#target)
  - [Localization](#localization)

## Overview

Rocket Rift is a side-scrolling endless runner action video game, that takes inspiration of Jetpack Joyride.

[Great talk from the creators of the original Jetpack Joyride](https://www.gdcvault.com/play/1015527/Depth-in-Simplicity-The-Making)

### Skills

- Reaction
- Aim
- Speed

## Gameplay

[_Gameplay from the original Jetpack Joyride_](https://www.youtube.com/watch?v=OhU7tLtOIgE)

### Gameplay Hook

Travel as far as possible, collect coins, and avoid hazards.

When the player presses anywhere on the touchscreen, the jetpack fires and the player rises.
When the player lets go, the jetpack turns off, and the player falls.

Because he is continually in motion, the player does not control his speed, simply his movement along the vertical axis.

### Loops

Travel as far as you can without dying.
When you die you can play again to beat the highest score.

### Entities

#### Player

By tapping/holding your finger to the screen, the player rises with the jetpack.
When no input is given the player falls down to the floor and runs.

The player always move from left to right automatically, and the speed increases while you play.

Upon hitting obstacles, the player dies.

#### Evil Scientists

They either walk or run on the labority floor.

They don't affect the player, but if they're hit by the player or explosions they will fall to the floor.

#### Obstacles

- Zappers
- Missiles
- Lasers

#### Collectables

- Coins

### Progression

Run endlessly from left to right while the speed increases.
The score increments by the distance you travel and the goal is to get the highest score possible.

### Losing

Contact with any of obstacles results in instant death.

## Assets

### Sensory Hook

Juicy, punchy SFX, together with plenty of explosions and particle effects.

### Art

[Art Bible](../art-bible/art-bible.md)

### Level Design

[Level Design Document](../level-design-document/ldd.md)

### Audio

[Audio Design Document](../audio-design-document/add.md)

## Technical

### Platform

- Windows
- Mac
- Linux
- Web

The target resolution for the remake will is 1920x1080 (16:9).
It's then overridden to 1280x720 (16:9) by default.

### Tools

- Godot
- Git
- Github

## Marketing & funding

Promoted and available for free on:  
 [![Itch.io](https://img.shields.io/badge/Itch-%23FF0B34.svg?style=for-the-badge&logo=Itch.io&logoColor=white)](https://brallex.itch.io/)  
 [![youtube](https://img.shields.io/badge/youtube-FF0000?style=for-the-badge&logo=YouTube&logoColor=white)](https://youtube.com/@bbitofficial)  
 [![github](https://img.shields.io/badge/GitHub-000000?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/Alexander-Jordan)  
 [![the 20 game challenge](https://img.shields.io/badge/The_20_Games_Challenge-205375?style=for-the-badge&logoColor=white)](https://20_games_challenge.gitlab.io/)  

### Target

Jetpack Joyride entusiasts and gamedevs.

### Localization

English
