# Features

## Object Tracker

feature-object_tracker-sort_by_proximity = Ordenar por proximidad: {$is_enabled ->
    [0] Desactivado
    *[1] Activado
  }
feature-object_tracker-read_selected_object = {$object_name} {$only_tile ->
    [0] está a {$distance} al {$direction}
    *[1] {EMPTYSTRING()}
  } en {$object_x}-{$object_y}, jugador en {$player_x}-{$player_y}
feature-object_tracker-read_selected_coordinates = Coordenadas {$coordinates} {$only_tile ->
    [0] está a {$distance} {$direction}
    *[1] {EMPTYSTRING()}
  } jugador en {$player_x}-{$player_y}

feature-object_tracker-moving_to = Moviendo a {$object_x}-{$object_y}.
feature-object_tracker-could_not_find_path = No se pudo encontrar un camino hacia el objeto.
feature-object_tracker-no_objects_found = No se han encontrado objetos.
feature-object_tracker-no_categories_found = No se han encontrado categorías.
feature-object_tracker-end_of_list = Fin de lista.
feature-object_tracker-start_of_list = Inicio de lista.
feature-object_tracker-no_object = Sin Objeto
feature-object_tracker-no_category = Sin categoría
feature-object_tracker-no_selected_object = No hay objeto seleccionado
feature-object_tracker-read_favorite = Favorito {$favorite_number} es {$target_object} ({$target_category})
feature-object_tracker-read_favorite_stack  = Bloque de favoritos {$stack_number}
feature-object_tracker-save_coordinates_toggle = Guardar coordenadas: {$is_enabled ->
    [0] Desactivado
    *[1] Activado
  }
feature-object_tracker-favorite_unset = Favorito {$favorite_number} eliminado
feature-object_tracker-favorite_save = Guardando {$selected_object} ({$selected_category}) en {$location_name} favorito {$favorite_number}
feature-object_tracker-favorite_save_coordinates = Guardando coordenadas {$coordinates} en {$location_name} favorito {$favorite_number}
feature-object_tracker-favorite_cleared = {$location_name} favorito {$favorite_number} eliminado
feature-object_tracker-favorite_set_as_default = Guardando favoritos actuales como predeterminados
feature-object_tracker-favorite_default_cleared = Favoritos predeterminados eliminados
feature-object_tracker-no_destination_selected = No hay destino seleccionado

## Tile Viewer

feature-tile_viewer-relative_cursor_lock_info = Bloqueo del cursor relativo: {$is_enabled ->
    [0] Desactivado
    *[1] Activado
  }
feature-tile_viewer-moving_to = Moviendo a {$tile_x}-{$tile_y}.
feature-tile_viewer-cannot_move_to = No se pudo mover a {$tile_x}-{$tile_y}.
feature-tile_viewer-stopped_moving = Movimiento detenido
feature-tile_viewer-reached = Destino alcanzado
feature-tile_viewer-blocked_tile_name = bloqueado
feature-tile_viewer-empty_tile_name = vacío

## Read Tile

feature-read_tile-manually_triggered_info = {$tile_name}, Categoría: {$tile_category}
feature-read_tile-no_tile_found = No se han encontrado casillas en las coordenadas especificadas
feature-read_tile-tile_indexes = Índices de casillas:

## Other

feature-speak_selected_slot_item_name = {$slot_item_name} Seleccionado
feature-speak_location_name = Entrando a {$location_name}
feature-speak_health_n_stamina-in_percentage_format = Tu salud está al {$health} % y tu Energía está al {$stamina} %
feature-speak_health_n_stamina-in_normal_format = {$health} salud y {$stamina} energía
feature-speak_money = Tienes {$money} oro
feature-speak_time_and_season = Son las {$time_of_day} y hoy es {$day} {$date} de {$season}
feature-speak_position = {$verbose_coordinates ->
    [0] {$x_pos}, {$y_pos}
    *[1] X: {$x_pos}, Y: {$y_pos}
  }
feature-speak_youve_got_mail = Tienes correo!
feature-speak_cheater = Eres un sucio tramposo!
feature-warnings-health = ¡Cuidado! Tu salud está al {$value} porciento
feature-warnings-stamina = ¡Cuidado! tu Energía está al {$value} porciento
feature-warnings-time = ¡Cuidado! Son las {$value}
feature-grid_movement_status = Movimiento por casillas: {$is_active ->
    [0] Inactivo
    *[1] Activo
  }


# Building operations

building_operations-move_building-under_construction = No se puede mover ese edificio. Está en construcción.
building_operations-move_building-no_permission = No tienes permiso para mover ese edificio.
building_operations-move_building-cannot_move = No se puede mover el edificio a {$x_position}x {$y_position}y
building_operations-move_building-building_moved = {$building_name} movido a {$x_position}x {$y_position}y
building_operations-no_building_to_demolish = No hay edificio para demoler.
building_operations-building_failed = Construcción fallida.


# FIXME update naming convention
prefix-repair = Reparar {$content}

suffix-building_door = {$content} Puerta
suffix-map_entrance = {$content} Entrada
suffix-mill_input = {$content} Enrada
suffix-mill_output = {$content} Salida

# Tiles

tile_name-bridge = Puente
tile_name-boat_hull = Casco del bote
tile_name-boat_anchor = Ancla del bote
tile_name-diggable_spot = Lugar para cavar
tile_name-panning_spot = Lugar de bateo
tile-resource_clump-large_stump-name = Gran tronco
tile-resource_clump-hollow_log-name = Tronco hueco
tile-resource_clump-meteorite-name = Meteorito
tile-resource_clump-boulder-name = Roca
tile-resource_clump-mine_rock-name = Roca de mina
tile-resource_clump-giant_cauliflower-name = Coliflor gigante
tile-resource_clump-giant_melon-name = Melón gigante
tile-resource_clump-giant_pumpkin-name = Calabaza gigante
tile-resource_clump-unknown = Grupo de recursos desconocido {$id}
tile-water-name = Agua
tile-cooled_lava-name = Lava enfriada
tile-lava-name = Lava
tile-fertile_weed_name = Maleza fértil
tile-grass-name = {$grass_type ->
    *[1] Hierba
    [2] Hierba de cueva
    [3] Hierba congelada
    [4] Hierba de lava
    [5] Hierba de cueva
    [6] Telaraña
    [7] Hierba Azul
  }
tile-twig-name = {$described ->
    [0] Twig
    *[other] {$qualified_item_id ->
        [O294] Difurcada 
        [O295] en racimo 
        *[other] {EMPTYSTRING()}
      }Ramita
  }
tile-stone-name = {$described ->
    [0] {$qualified_item_id ->
        [O46] Mística 
        [O343] {EMPTYSTRING()} 
        [O450] {EMPTYSTRING()} 
        [O668] {EMPTYSTRING()} 
        [O670] {EMPTYSTRING()} 
        [O845] {EMPTYSTRING()} 
        [O846] {EMPTYSTRING()} 
        [O847] {EMPTYSTRING()} 
        *[other] Colorida 
      }Piedra
    *[other] {$qualified_item_id ->
        [O32] Piedra lisa con puntas marrones
        [O34] Montículo de piedras grises
        [O36] Piedra gris ovalada
        [O38] Piedra marrón con grumos
        [O40] Piedra cálida lisa marrón
        [O42] Piedra dividida rústica marrón
        [O46] piedra mística púrpura con remolinos azules
        [O48] Piedra azul puntiaguda
        [O50] Piedra azul lisa
        [O52] Piedra turquesa ovalada
        [O54] Acuamarina grumosa
        [O56] Piedra roja puntiaguda
        [O58] Piedra roja con forma de llamarada
        [O343] Piedra gris pequeña
        [O450] Piedra gris extrusiva
        [O668] Piedra gris con forma de semilla
        [O670] Piedra gris redonda
        [O760] Piedra gris oscuro grumosa
        [O762] Piedra lisa gris oscuro
        [O845] Piedra abultada gris oscuro
        [O846] Montículo de piedras gris oscuro azulado
        [O847] Piedra púrpura oscuro extrusiva
        *[other] Piedra
      }
  }
tile-sprinkler-pressure_nozzle-prefix = Presurizado {$content}
tile-sprinkler-enricher-prefix = Enriqueciendo {$content}
tile-fence_gate-suffix = {$name} {$is_open ->
    [0] {$less_info ->
      [0] Cerrada
      *[1] {EMPTYSTRING()}
    }
    *[1] Abierta
  }
tile-building_animal_door-suffix = {$name} puerta corral {$is_open ->
    [0] {$less_info ->
      [0] Cerrada
      *[1] {EMPTYSTRING()}
    }
    *[1] Abierta
  }
tile-mine_shaft-coal_bag = Bolsa
tile-mine_shaft-dirt = Tierra
tile-mine_shaft-duggy_hole = Agujero de un Cavadorín
tile-pet_bowl-prefix = {$is_in_use ->
    [0] No usado
    *[1] {$is_empty ->
      [0] {EMPTYSTRING()}
      *[1] Vacío
    }
  } {$name}

## Interactable Tiles

tile_name-ticket_machine = Máquina de boletos
tile_name-movie_ticket_machine = Máquina de boletos de cine
tile_name-missed_reward_chest = Cofre de recompensa perdida
tile_name-traveling_cart = Carro ambulante
tile_name-traveling_cart_pig = Cerdo del carro ambulante
tile_name-feeding_bench = {$is_empty ->
    [1] Vacío
    *[0] {EMPTYSTRING()}
  } Banco de alimentación
tile_name-special_quest_board = Tablón de misiones especiales
tile-museum_piece_showcase-suffix = {$content} vitrina
tile_name-fridge = Refrigerador
tile_name-mail_box = Buzón
tile-mail_box-unread_mail_count-prefix = {$mail_count} {$mail_count ->
    [1] una carta sin leer en el
    *[0] Cartas sin leer en el
  } {$content}
tile_name-stove = Cocina
tile_name-sink = Fregadero
tile-railroad-witch_statue-name = Estatua de bruja
dynamic_tile-qi_nut_room-collection_box = Caja de colección
dynamic_tile-farm-grandpa_shrine = Altar del Abuelo{SIGNOFNUMBER($candles) ->
    [positive] : {$candles} {$candles -> 
      [1] Vela
      *[other] Velas
    } encendidas
    *[other] {EMPTYSTRING()}
  }
tile-bundles-suffix = {$content} lote
tile-harvestable-prefix = Cosechable {$content}
tile-busy-prefix = Ocupado {$content}
tile_name-stepping_stone = Camino de piedras
tile_name-pathway = Camino
tile_name-flooring = Suelo
tile-volcano_dungeon-pressure_pad = Botón de presión
tile-volcano_dungeon-gate = Puerta

## Entrances

tile-mine_ladder-name = Escalera
tile-mine_up_ladder-name = Escalera hacia arriba
tile-mine_shaft-name = Pozo
tile-mine_elevator-name = Ascensor
tile-town_festival_exit-name = Salida del festival
entrance_name-secret_woods_entrance = Entrada al bosque secreto
tile-entrance = Entrada
tile-door = Puerta
tile-door_state-opened = Abierta
tile-door_state-closed = Cerrada
tile-interior_door = Puerta interior

# Items

item_name-log = Tronco
item_name-magic_ink = Tinta mágica
item-haley_bracelet-name = Brazalete de Haley
item-lost_book-name = Libro perdido
item-suffix-book = {$content} Libro
item-suffix-not_usable_here = {$content}, no se puede usar aquí
item-quality_type = Calidad {$quality_index -> 
    [1] Plata
    [2] Oro
    [3] Oro
    *[4] Iridio
  }
item-stamina_and_health_recovery_on_consumption = {SIGNOFNUMBER($stamina_amount) ->
    [positive] +{$stamina_amount} Energía y {SIGNOFNUMBER($health_amount) ->
        [positive] +{$health_amount} Salud
        *[other] {EMPTYSTRING()}
      }
    [negative] -{$stamina_amount} Energía
    [zero] {SIGNOFNUMBER($health_amount) ->
        [positive] +{$health_amount} Salud
        *[other] {EMPTYSTRING()}
      }
    *[other] {EMPTYSTRING()}
  }
item-required_item_info = Requiere {$name}
item-sell_price_info = Precio de venta: {$price} oro
# In some cases we can't get the count of the dropped items and it is returned `0`
item-dropped_item-info = Objeto soltado: {$item_count ->
    [0] {$item_name}
    [1] 1 {$item_name}
    *[other] {$item_count} {$item_name}s
  }
item-crafting_recipe_info = {$name} {$is_cooking_recipe ->
    [0] (fabricando)
    *[1] (cocinando)
  } {$description}

building_name-shipping_bin = Contenedor de envíos
building-parrot_perch-required_nuts = El loro requiere {$item_count ->
    [1] 1 nuez
    *[other] {$item_count} nueces
  }
building-parrot_perch-upgrade_state_idle = Percha del loro vacía
building-parrot_perch-upgrade_state_start_building = Los loros comenzaron la solicitud de construcción
building-parrot_perch-upgrade_state_building = Solicitud de construcción a los loros
building-parrot_perch-upgrade_state_complete = Solicitud completada

# NPCs

npc_name-old_mariner = Viejo Marinero
npc_name-island_trader = Comerciante isleño
npc_name-emerald_gem_bird = Pájaro de esmeralda
npc_name-aquamarine_gem_bird = Pájaro de aguamarina
npc_name-ruby_gem_bird = Pájaro de rubí
npc_name-amethyst_gem_bird = Pájaro de amatista
npc_name-topaz_gem_bird = Pájaro de topacio
npc_name-gem_bird_common = Pájaro de gema común
npc-farm_animal_info = {$name}, {$type}, {$age} {$age ->
    [1] mes
    *[other] meses
  }
npc_name-horse_with_no_name = Caballo sin nombre
monster_name-armored = {$monster_name} blindado
monster_name-big_slime = gran {$colorful ->
    [0] {EMPTYSTRING()}
    *[1] {$color} 
  }Baba{$holding ->
    [0] {EMPTYSTRING()}
    *[1] sosteniendo {$item_name}
  }
monster_name-dangerous = Peligroso {$monster_name}
monster_name-flying_purple_shorts = Calzones púrpura voladores
monster_name-mage = {$monster_name} Mago
monster_name-mutant = {$monster_name} mutante
monster_name-slime = Baba
monster_name-truffle_crab = Cangrejo de trufas

# Event Tiles

event_tile-egg_festival_shop-name = Tienda del Festival del Huevo
event_tile-flower_dance_shop-name = Tienda del Baile de las Flores
event_tile-soup_pot-name = Olla de sopa
event_tile-spirits_eve_shop-name = Tienda del Espíritu de la Noche
event_tile-stardew_valley_fair_shop-name = Tienda de la Feria de Stardew Valley
event_tile-slingshot_game-name = Minijuego del tirachinas
event_tile-purchase_star_tokens-name = Comprar fichas estrella
event_tile-the_wheel-name = La Ruleta
event_tile-fishing_challenge-name = Minijuego de pesca
event_tile-fortune_teller-name = Tienda de la vidente
event_tile-grange_display-name = Exposición agrícola
event_tile-strength_game-name = Juego de fuerza
event_tile-free_burgers-name = Hamburguesas gratis
event_tile-feast_of_the_winter_star_shop-name = Fiesta de la estrella de invierno

patch-trash_bear-wanted_item = ¡{$trash_bear_name} quiere {$item_name}!

# Terrain Utils

terrain_util-forage_crop_types = {$type ->
    [1] Cebolleta
    [2] Jengibre
    *[other] cultivo recolectable
  }
terrain_util-fruit_tree_growth_stage = {$stage ->
    [0] semilla
    [1] brote
    [2] plantón
    [3] arbusto
    *[other] árbol
  }
terrain_util-tree_type = {$type ->
    [1] Roble
    [2] Arce
    [3] Pino
    [4] Roble
    [5] Arce
    [6] Palmera
    [7] Champiñón
    [8] Caoba
    [9] Palmera
    [10] Verde frondoso
    [11] Verde con hojas
    [12] Verde pálido
    [13] Místico
    *[other] Tipo de árbol desconocido {$type}
  }
terrain_util-tree-seedling = seedling
terrain_util-tree-stump = Tronco
terrain_util-tree-mossy = Musgoso
terrain_util-tree_growth_stage = {$stage ->
    [1] brote
    [2] plantón
    [3] arbusto
    [4] arbusto
    *[other] árbol
  }
terrain_util-bush_type = {$type ->
    [0] Pequeño
    [1] Mediano
    [2] Grande
    [3] Té {$has_matured ->
      [0] Plantón
      *[1] Arbusto
    }
    [4] Nuez de oro 
    *[other] desconocido
  }
terrain_util-bush = Arbusto
terrain_util-bush-town = Ciudad
terrain_util-bush-greenhouse = Invernadero
terrain_util-tent = Tienda de campaña
terrain_util-tent_entrance = Entrada de la tienda de campaña
terrain_util-crop-watered = Regado
terrain_util-crop-unwatered = Sin regar
terrain_util-crop-dead = Muerto
terrain_util-crop-soil = Tierra
terrain_util-harvestable = Cosechable
terrain_util-fertilized = Fertilizado


# Object Categories

object_category-animal = Animal
object_category-bridge = Puente
object_category-building = Edificio
object_category-buildings = Consturcciones
object_category-bundle = Lote
object_category-bush = Arbusto
object_category-container = Contenedor
object_category-containers = Contenedores
object_category-crop = Cultivo
object_category-crops = Cultivos
object_category-debris = Escombros
object_category-decoration = Decoración
object_category-door = Puerta
object_category-doors = Puertas
object_category-dropped_item = Objeto soltado
object_category-farmer = Granjero
object_category-fishing = Pesca
object_category-fishpond = Estanque de peces
object_category-flooring = Suelo
object_category-furniture = Mueble
object_category-interactable = Interactivo
object_category-interactables = Interactivos
object_category-machine = Máquina
object_category-machines = Máquinas
object_category-mine_item = Objeto de la mina
object_category-mine_items = Objetos mineros
object_category-npc = NPC
object_category-pending = Pendiente
object_category-quest_items = Objetos de misiones
object_category-ready = Listo
object_category-resource_clumps = Grupos de recursos
object_category-trees = Árboles
object_category-water = Agua
object_category-unknown = Desconocido
object_category-other = Otro

direction-north = Norte
direction-south = Sur
direction-east = Este
direction-west = Oeste
direction-north_west = Noroeste
direction-north_east = Noreste
direction-south_west = Suroeste
direction-south_east = Sureste
direction-current_tile = casilla actual

inventory_util-empty_slot = Ranura vacía

common-unknown = Desconocido

# The $name will be in the respective language i.e., it will be in french for french translation and so on. So use the language specific name in the square brackets except for the one with '*', that can have any value. Variants with '*' are marked as default.
common-util-pluralize_name = {$item_count} {PLURALIZE($item_count, $name)}
