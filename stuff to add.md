
# spawn a squad or single stalker someplace relative to the actor, e.g. behind or to the side so you won't see the spawing

```lua
function spawn_something()
    -- get position
    local fov = 100        -- outside of this fov
    local radius = rnd(30, 60)
    local dir = vector_rotate_y(db.actor:direction(), rnd(fov, 360 - fov))
    local gvid = db.actor:game_vertex_id()
    local pos = db.actor:position():add(dir:mul(radius))
    local lvid = level.vertex_id(pos)

    -- valid lvid
    if lvid >= 4294967295 then return end

    -- spawn and fill in phantom squad
    local squad = alife_create(spawn_sec, pos, lvid, gvid)
    if not squad then return end

    squad:create_npc(nil, pos, lvid, gvid)

    if squad.squad_members then
        for k in squad:squad_members() do
            local npc = k.object or k.id and alife_object(k.id)
            if npc then
                SIMBOARD:setup_squad_and_group(npc)
            end
        end
    end
end
```
# check if I have a certain task

```lua
task_manager.task_ini:section_for_each(function(task_id)
  if db.actor:get_task(task_id, true) then
    -- has
  end
end)
```

# when I get near a certain base or smart_area

```lua
local id = smart_terrain.nearest_to_actor_smart.id
local smart = id and alife_object(id)
if smart and smart:name() == "certain_base" then
  -- nearest
end
```
```lua
local id = smart_terrain.nearest_to_actor_smart.id
local smart = id and alife_object(id)
local dist = smart and smart.position:distance_to(db.actor:position())
if dist and dist < 50 then
```

# make spawned npc inert or aggressive - not sure if its possible considering factions hostility but I remember a mod that can turn captured enemies friendly and become your companion

last one, impossible, u can make enemy friend, but not friend enemy...
u can spawn a hostile faction squad, fill it with npcs from ur faction, use on_enemy_eval to make them friends all the time, and dont use on_enemy_eval when u want them to be enemies
cant think of anything else 


# add waypoints

So there are two ways to do this depending on what you want. If you just want to place the icon there and have no functionality, you can just add the mapspot itself to whatever object is in that spot.

If what you want is an actual quest marker the way a task would behave, then you need to create a dummy task for it similar to the way that PAW has done. There are other considerations to bear in mind for that, such as that ending that task will count towards player stats for task completion/failure if you don't account for it.

