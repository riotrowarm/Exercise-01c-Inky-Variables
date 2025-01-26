/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/

VAR pet = ""
VAR butterfly = 0
VAR gift = ""

--> start
== start==

You crawl into bed and fall alseep, but when you wake up your not in your bed. When your eyes open you see that you are in a dark scary forset. But your not scared because you have your favorite stuffed animal with you. Who is your favorite?

*[Mr Kitty]
~ pet = "Mr Kitty"
->magic_fairy

*[king Rat]
~ pet = "King Rat"
->magic_fairy

*[Lady Fox]
~ pet = "Lady Fox"
->magic_fairy

== magic_fairy ==
You and {pet} walk through the woods together until a pink glowing light fly towards you. Its a fairy! She flys up to you with a warm smile.

Fairy: Hello Little girl, it appears you've found your self lost in these woods. From what I can tell the evil Dark Fairy has brought you here so that she can steal your skin, and use your body to enter the human world. You must go through the woods and find three golden butterflies to save you and {pet}. 

*[Who is this evil fairy?] -> evil_fairy

*[How do you know this all?] -> know_it_all

*[Where can I find the butterflies] -> find_butter

*[Can you come with me?]-> no

*[Look for the butterflies]-> looking

== evil_fairy ==
She is known as the Mistress of Darkness and she is evil incarnate who wants to take over the world. You must find the butterflies to defeat her!

{pet == "King Rat": King Rat: An evil Queen of the forset, how... original. | }

*[Go back]-> magic_fairy

== know_it_all ==
Im sorry I don't understand?

{pet == "Mr Kitty": Mr kitty: Don't bother the dev was to lazy to fix the plot holes.| }

*[okay nevermind]->magic_fairy

== find_butter ==
You can find the butterflies by following the voice in your heart!

{pet == "Lady Fox": Lady Fox: I wonder if these butterflies are tasty| }

*[Go back]->magic_fairy

== no ==
No.


*[uh okay]->magic_fairy

== looking ==
You walk deeper into the forset and find a clearing with a butterfly statue in the middle, this must be where I put the butterflies. 

+[Look for Butterflies] -> Butterflies

*{butterfly > 2 } [Place Butterflys]-> Statue

== Butterflies ==
In the clearing there are three paths, left, middle, right.

*[Go Left] -> left

*[Go Middle]-> Middle

*[Go Right]-> Right

+[Go back to clearing]-> looking


=== left ===
~ butterfly = butterfly + 1
You go down the left path with {pet} and you find a golden butterfly resting.

*[Take butterfly]-> Butterflies

=== Middle ===
~ butterfly = butterfly + 1
You go down the middle path with {pet} and you find a golden butterfly playing in the tree leafs.

*[Take butterfly]-> Butterflies

=== Right ===
~ butterfly = butterfly + 1
You go down the right path with {pet} and you find a golden butterfly flapping its wings without a care in the world.

*[Take butterfly]-> Butterflies

=== Statue ===
You place all the butterflies and they start to form a golden fairy

Golden fairy: Thank you for saving child, as a reward please choose one of these gifts. 

*[Sword]
~gift ="Sword"
->betrayal1

*[Glock]
~gift = "Glock"
-> betrayal1

*[RPG]
~gift = "RPG"
-> betrayal1

===betrayal1===
Golden fairy: Use your {gift} to defeat the evil fairy who is actully {pet}.

And like that she leaves.

*[Wait what?]-> betrayal2

=== betrayal2 ===
just then {pet} starts to violently shake, then jumps out of your arms. And transforms into an evil fairy, and tries to kill you.

*[ Use your {gift} to kill {pet}] -> ending1

*[No I love {pet} to much to kill them] -> ending2

=== ending1 ===
{gift == "Sword": You use your sword and slice {pet} head off. you then wake up from your dream see that {pet} is still in one piece and in your arms. What a crazy dream. | }

{gift == "Glock": You shoot at {pet} until they're dead. you then wake up from your dream see that {pet} is still in one piece and in your arms. What a crazy dream. | }

{gift == "RPG": You use your RPG on {pet} but it ends up killing both of you and you never wake up. You are dead now | }.

->END

=== ending2 ===
{pet} brutally murders you. 

->END










