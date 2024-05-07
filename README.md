**NPE** is a mod framework that allows **modders** to add specific content in Anomaly. By itself it's just an empty husk.

The content added is in the form of structured text and texture based UI panels that is played only upon on defined gameplay context and conditions

**What is this specific content?**
The obvious content for which this mod was made is in the form of tutorial cards that are shown to the player, in the similar fashion to recent modern games. I used the Elder Ring game tutorial style as a reference. 

It can be used in generic fashion as well, let's say create event based messages that are displayed with full UI dialog (as opposite to pda news notifications). 
For example, books/messages to read related to quests that can be presented with a simple UI where each page is right side text / left side image

**How it works?**
**NPE** is composed of a main module (**NPE**) which purpose is to manage the content that is added to it, such as **NPE Modules**
You will be creating these **NPE modules** which can be, for example, the tutorials if you want to do those
**NPE** modules can then be installed in **MO2** alongside **NPE** and will register automatically in game to the **NPE manager**, enabling them  

**What is an NPE Module?**
Such module contains a so-called **deck**, which contains a number of **sets**.

A **set** is the playable tutorial. A **set** must contain a number of cards (pages of the tutorial) which reference **game string** and **textures**

A **set** also contains a **context**, which define the condition under which the **set** is shown to the player in the game, e.g. player injured, stash opened, item found, etc.

How to create an NPE Module
It's simple as to define a table (deck) in a script file which extend the MCM menu, you also need to create 

- a localization xml files which contains all the strings referenced in the deck's cards
- textures used for the images referenced by the same cards
- a texture descr file to define the textures ids referenced in the cards 

**How to install**

**Requirements**

- It needs new **MrDemonized** custom exes edited by me

    This is the PR request https://github.com/themrdemonized/xray-monolith/pull/46 that describe the patch

    You can download a build of mine of these new exes https://drive.google.com/file/d/1gKbBW75dKZ3ZpGPy1zgKU9Q8mdbpshkZ/view?usp=drive_link

- **MCM menu**

**Download the addon**

https://drive.google.com/file/d/1U4OYp3D7nPsruJnOd8RfWPKQ1nQVK9rU/view?usp=drive_link

**Installation options**

- You need to install the main mod, **NPE** - this by itself does nothing beside showing its own tutorial

- You can also install a demo **NPE Module** that shows some example of tutorials with the purpose of teaching: **New Player Experience Examples**. 

> These are not proper tutorial but rather to show the end-user experience

- You can also install a template module which can be used as reference documentation and starting point to create your own NPE Module

**Work in Progress**

I am sharing this for people who want to try this thing and are interested in creating such content, for their mod or for other mods or just to add to the game such type of stuff

and to gather feedback



