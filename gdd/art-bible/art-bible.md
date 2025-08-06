# ROCKET RIFT (Art Bible)

## Table of content

- [Other Design Documents](#other-design-documents)
- [Art Style](#art-style)
	- [General](#general)
	- [Visual Hook](#visual-hook)
	- [2D](#2d)
- [Characters](#characters)
- [Entities](#entities)
- [Environments](#environments)
- [UI](#ui)
	- [General](#general-4)
	- [Main Menu](#main-menu)
	- [Settings Menu](#settings-menu)
	- [Pause Menu](#pause-menu)
	- [Slot Machine](#slot-machine)
	- [End Screen](#end-screen)
- [Camera](#camera)
- [Marketing](#marketing)
	- [General](#general-6)
	- [Internal](#internal)
	- [External](#external)
- [Technical Guidelines](#technical-guidelines)
	- [Software](#software)
	- [File Formats](#file-formats)
	- [Restrictions](#restrictions)
	- [Naming Conventions](#naming-conventions)
	- [Workflows](#workflows)

### Other Design Documents:

- [GDD](../game-design-document/gdd.md)
- [LDD](../level-design-document/ldd.md)
- [ADD](../audio-design-document/add.md)

# Art Style

## General

The art style will will first take inspiration of the original, but still be original.

I will also try to get my nephew in somehow, maybe as the main character.

### Original

#### Start screen:

![start_screen](./assets/start_screen.jpg)

#### Gameplay:

![gameplay](./assets/gameplay.jpg)

#### Collecting coins:

![collecting_coins](./assets/coins.jpg)

## Visual Hook

It will be pixel art as the original.

## 2D

- 2D sidescrolling
- Colorful
- Cartoony

# Characters

## Isaac Jordan

![barry_full_sprite_sheet](./assets/barry_full_sprite_sheet.jpg)

# Entities

## Obstacles

![obstacles_sprites](./assets/obstacles_sprites.png)

### Zappers

![zappers](./assets/zappers.jpg)

### Missiles

![missiles](./assets/missiles.jpg)

### Lasers

![lasers](./assets/lasers.png)

# Environments

## The remake

To keep the scope down this remake is only going to have a simple room included.

### Menu section

The first section is the menu part and where the player collects the jetpack. The resolution is 1920x1080.

![](../../stages/parallax_background/sections/section_0/section_0.png)

### Endless section

The other section is the same image repeating endlessly. It's squared (1080x1080 or 1:1), and similar tiles can be created to randomize the background a bit.

![](../../stages/parallax_background/sections/section_1/section_1_part_0.png)

# UI

## General

Buttons and windows in the original Jetpack Joyride are pretty squared and metallic.

## Main Menu

![main_menu](./assets/main_menu.jpg)

## Settings Menu

![settings_menu](./assets/settings_menu.jpg)

## Pause Menu

![pause_menu](./assets/pause_menu.jpg)

## Slot machine

![slot_machine](./assets/slot_machine.jpg)

## End screen

![end_screen](./assets/end_screen.jpg)

## The Stash (store)

![stash_menu](./assets/stash_menu.jpg)

![stash_list](./assets/stash_list.png)

# Camera

Side-scrolling camera.

# Marketing

## General

Should aim to be similar to the original art style for marketing.

## Internal

### Icons

#### Original:

![icon_original](./assets/icon_original.jpg)

![icon](./assets/icon.jpg)

#### The remake:

![temp_icon](../../assets/icon.svg)

### Loading Screen

![loading_screen](./assets/loading_screen.jpg)

## External

### Banners

![banner](./assets/banner.jpg)

# Technical Guidelines

## Software

- `Krita`
- `Aseprite`

## File Formats

- 2D assets: `.png`

## Restrictions

Keep the size of the files as small as possible.

One limitation is GitHub's size limit for single files: 100MB.

The base resolution is 1920x1080 (16:9), and all game assets that covers the whole screen should be in this size.

## Naming Conventions

As Godot's naming convention: [snake_case](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html#naming-conventions).

## Workflows

What are the workflows for creating any assets mentioned in this art bible?
