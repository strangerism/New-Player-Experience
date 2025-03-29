# New Player Experience

**NPE** is a mod framework that allows **modders** to add specific content in Anomaly. By itself it's just an empty husk.

The content added is in the form of structured text and texture based UI panels that is played only upon on defined gameplay context and conditions

# What is this specific content?

The obvious content for which this mod was made is in the form of tutorial cards that are shown to the player, in the similar fashion to recent modern games. I used the Elder Ring game tutorial style as a reference. 

It can be used in generic fashion as well, let's say create event based messages that are displayed with full UI dialog (as opposite to pda news notifications). 

For example, books/notes to read related to quests that can be presented with a simple UI where each page is right side text / left side image

# How it works?

**NPE** is composed of a main module (**NPE**) which purpose is to manage the content that is added to it, such as **NPE Modules**.

You will be creating these **NPE modules** which can be, for example, the tutorials if you want to do those
**NPE** modules can then be installed in **MO2** alongside **NPE** and will register automatically in game to the **NPE manager**, enabling them  

# What is an NPE Module?

Such module contains a so-called **deck**, which contains a number of **sets**.

A **set** is the playable tutorial. A **set** must contain a number of cards (pages of the tutorial) which reference **game string** and **textures**

A **set** also contains a **context**, which define the condition under which the **set** is shown to the player in the game, e.g. player injured, stash opened, item found, etc.

Is it possible to add advanced features to sets and cards, like triggers for actions (custom code for spawning items, creating tasks, etc.) and sounds (chimes, voice overs, etc)

# How to create an NPE Module

It's simple as to define a table (deck) in a script file which extend the MCM menu, you also need to create 

- a localization xml files which contains all the strings referenced in the deck's cards
- textures used for the images referenced by the same cards
- a texture descr file to define the textures ids referenced in the cards 
- (optional) sound assets
- (optional) custom code

# NPE Module's developers documentation

Install (see below) the template module to access inline documentation directly from template files

# How to install

## Requirements

- It needs new **MrDemonized** custom exes edited by me

    This is the PR request https://github.com/themrdemonized/xray-monolith/pull/46 that describe the patch

    You can download a build of mine of these new exes https://drive.google.com/file/d/1gKbBW75dKZ3ZpGPy1zgKU9Q8mdbpshkZ/view?usp=drive_link but it's recommended you use the latest **MrDemonized** exes https://github.com/themrdemonized/xray-monolith/releases

- **MCM menu**

    https://www.moddb.com/mods/stalker-anomaly/addons/anomaly-mod-configuration-menu

## Download the addon

https://drive.google.com/file/d/1U4OYp3D7nPsruJnOd8RfWPKQ1nQVK9rU/view?usp=drive_link

## Installation options

- You need to install the main mod, **NPE** - this by itself does nothing beside showing its own tutorial

- You can also install a demo NPE Module, **New Player Experience Examples**, that shows several example of tutorials with the purpose of teaching development of new modules 

    > These are not proper tutorial but rather have been made to show the end-user experience

- You can also install a template module which can be used as reference documentation and starting project to create your own NPE Module

# Credits
This mod was made thanks to the contribution of 

**MrDemonized**
**Catspaw**
**RavenAscendant**

# License

Everything contained in this addon is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0). https://creativecommons.org/licenses/by-nc-sa/4.0/

This means you're allowed to redistribute and/or adapt the work, as long as you respect the following criteria:

Attribution - You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.

NonCommercial - You may not use the material for commercial purposes (this includes donations).

ShareAlike - If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.

