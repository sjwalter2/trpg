/*this is a WIP
my plan is to have this be a catch-all "apply damage"

by centralizing it in one method, we can do checks for things like invincibility, map-wide effects,
temporary or indefinite damage modification, etc, and do it all in one method!!

currently, things like the fireball and etc do not have any logic for taking these into effect;
the more complex we might get, the more annoyiung it'll be, especially if we have cards that have
unique damage logic

longterm i think we should move towards using this :P
*/
target = argument0
damageToApply = argument1

target.currentHealth -= damageToApply