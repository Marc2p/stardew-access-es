# Menus

## Common Stuff

### Common UI elements

common-ui-ok_button = Aceptar botón
common-ui-cancel_button = Cancelar botón
common-ui-confirm_button = Confirmar botón
common-ui-drop_item_button = Soltar objeto botón
common-ui-trashcan_button = Cubo de basura
common-ui-organize_inventory_button = Organizar inventario botón
common-ui-community_center_button = Centro comunitario botón
common-ui-scroll_up_button = Desplazar hacia arriba botón
common-ui-scroll_down_button = Desplazar hacia abajo botón
common-ui-next_page_button = Página siguiente botón
common-ui-previous_page_button = Página anterior botón
common-ui-close_menu_button = Cerrar menú botón
common-ui-back_button = Atrás botón
common-ui-forward_button = Adelante botón
common-ui-equipment_slots = Ranuras de vestimenta equipable{$slot_name ->
    [hat] Sombrero
    [left_ring] Anillo izquierdo
    [right_ring] Anillo derecho
    [boots] Botas
    [shirt] Camisa
    [pants] Pantalones
    *[other] {EMPTYSTRING()}
  } ranura{$is_empty ->
    [0] : {$item_name}, {$item_description}
    *[1] {EMPTYSTRING()}
  }

### Options Element

options_element-button_info = botón_información {$label} botón
options_element-text_box_info = {$label} cuadro de edición{$value ->
    [null] {EMPTYSTRING()}
    *[other] : {$value}
  }
options_element-checkbox_info = {$is_checked ->
    [0] Desactivado
    *[1] Activado
  } {$label} casilla de verificación
options_element-dropdown_info = {$label} desplegable, opción {$selected_option} seleccionado
options_element-slider_info = {$slider_value}% {$label} deslizador
options_element-plus_minus_button_info = {$selected_option} seleccionado de {$label}
options_element-input_listener_info = {$label} está vinculado a {$buttons_list}. Click izquierdo para cambiar.

## Custom Menus

### Tile Info Menu

menu-tile_info-mark_tile = Marcar esta casilla
menu-tile_info-select_marking_index = Seleccionar valor
menu-tile_info-add_to_user_tiles_data = Añadir esta casilla a la información de casillas del usuario
menu-tile_info-detailed_tile_info = Verbalizar información detallada de la casilla
menu-tile_info-data_exists = Ya existe información para esta casilla, deseas...
menu-tile_info-edit_existing_data = Editarla?
menu-tile_info-delete_existing_data = Borrarla?

### Tile Data Entry Menu

menu-tile_data_entry-none = Ninguna
menu-tile_data_entry-heading_label = Casilla {$tile_x}x {$tile_y}y en {$location_name}
menu-tile_data_entry-tile_name_text_box_label = Nombre de la casilla
menu-tile_data_entry-tile_name_empty = El nombre de la casilla no puede ser un valor nulo
menu-tile_data_entry-categories_drop_down_label = Categoría
menu-tile_data_entry-mod_dependency_drop_down_label = Dependencia del mod
menu-tile_data_entry-event_check_box_label = Comprobar si actual es  {$is_festival ->
    [0] {$is_wedding ->
        [0] evento,
        *[1] casamiento,
      }
    *[1] festival: {$festival_name},
  } id: {$event_id}
menu-tile_data_entry-farm_type_check_box_label = Verifique el tipo de granja actual: {$farm_type}
menu-tile_data_entry-farm_house_upgrade_level_drop_down_label = Verifique el nivel actual de mejora de la casa
menu-tile_data_entry-quest_drop_down_label = Comprobar si el jugador posee algúna misión
menu-tile_data_entry-quest_drop_down-manual_entry_option = Introduzca manualmente el id de la misión
menu-tile_data_entry-manual_quest_id_text_box_label = Id de la misión
menu-tile_data_entry-joja_member_checkbox_label = Revisar si el jugador es un miembro de la corporación Joja

## Bundle Menus

### Common

menu-bundle-completed-prefix = Completado {$content}

### JoJa CD Menu

menu-joja_cd-project_info = {$name}, Costo: {$price}g, Descripción: {$description}
menu-joja_cd-project_name = {$project_index ->
    [0] Bus
    [1] Carros mineros
    [2] Puente
    [3] Invernadero
    [4] Bateo
    *[other] Desconocido
  } Project

### Junimo Note Menu

menu-junimo_note-scrambled_text = Texto codificado
menu-junimo_note-current_area_info-prefix = área: {$area_name}, {$completion_reward}, 
menu-junimo_note-bundle_open_button = {$bundle_name} Manojo
menu-junimo_note-input_slot = Ranura De Entrada {$index}
menu-junimo_note-collect_rewards = Recoger recompensas
menu-junimo_note-next_area_button = Siguiente área botón
menu-junimo_note-previous_area_button = área anterior botón
menu-junimo_note-back_button = Botón atrás
menu-junimo_note-purchase_button = Comprar botón

## Donation Menus

menu-donation_common-donatable_item_in_inventory-prefix = Puede ser donado {$content}

### Field Office Menu

# TODO maybe make a range function
menu-field_office-incomplete_slot_names = {$slot_index ->
   [0] Center skeleton
   [1] Esqueleto central
   [2] Esqueleto central
   [3] Esqueleto central
   [4] Esqueleto central
   [5] Esqueleto central
   [6] Serpiente
   [7] Serpiente
   [8] Serpiente
   [9] Murciélago
   [10] Rana
   *[other] Donation
  } slot
menu-field_office-completed_slot_info = Ranura {$slot_index} finalizada: {$item_name_in_slot}

### Museum Menu

menu-museum-slot_info = Ranura {$x_position}x {$y_position}y

## Game Menus

menu-game_menu-tab_names = {$tab_name} Pestaña {$is_active ->
    [0] {EMPTYSTRING()}
    *[1] Activa
  }

### Inventory Page

menu-inventory_page-money_info_key = {$farm_name}, {$current_funds}, {$total_earnings}{SIGNOFNUMBER($festival_score) ->
    [positive] , Puntuación en el  festival:: {$festival_score}
    *[other] {EMPTYSTRING()}
  }{SIGNOFNUMBER($golden_walnut_count) ->
    [positive] , Nuez dorada: {$golden_walnut_count}
    *[other] {EMPTYSTRING()}
  }{SIGNOFNUMBER($qi_gem_count) ->
    [positive] , Qi gemas: {$qi_gem_count}
    *[other] {EMPTYSTRING()}
  }{SIGNOFNUMBER($qi_club_coins) ->
    [positive] , Qi club coins: {$qi_club_coins}
    *[other] {EMPTYSTRING()}
  }

### Social Page

menu-social_page-npc_info = {$name}{$has_talked ->
    [0] , no le hablaste aún
    *[1] {EMPTYSTRING()}
    [2] , sin conocer
  }{$relationship_status ->
    [null] {EMPTYSTRING()}
    *[other] , {$relationship_status}
  }, {$heart_level} {$heart_level ->
    [1] corazón
    *[other] corazones
  }, {$gifts_this_week} {$gifts_this_week ->
    [1] regalo
    *[other] regalos
  } Dados esta semana.

menu-social_page-player_info = {$name}{$relationship_status ->
    [null] {EMPTYSTRING()}
    *[other] , {$relationship_status}
  }

### Collections Page
menu-collections_page-tabs = {$tab_name} pestaña {$is_selected ->
    [0] {EMPTYSTRING()}
    *[1] seleccionada
  }
menu-collections_page-unachieved = Sin desbloquear
menu-collections_page-uncaught = Por recoger
menu-collections_page-uncooked = Crudo
menu-collections_page-unfound = Aún no encontrada
menu-collections_page-unshipped = Sin enviar

### Crafting Page

menu-crafting_page-recipe_info = {$produce_count} {$name}, {$is_craftable ->
    [0] no es fabricable
    *[1] fabricable
  }, Ingredientes: {$ingredients}, Descripción: {$description}, {$buffs}
menu-crafting_page-unknown_recipe = Receta desconocida
menu-crafting_page-previous_recipe_list_button = Receta anterior en lista botón
menu-crafting_page-next_recipe_list_button = Receta siguiente en lista botón

### Exit Page

menu-exit_page-exit_to_title_button = Salir al menú principal Botón
menu-exit_page-exit_to_desktop_button = Salir al escritorio botón

### Skills Page

menu-skills_page-player_info = {$name}, {$title}{$golden_walnut_count ->
    [0] {EMPTYSTRING()}
    [1] , 1 Nuez Dorada
    *[other] , {$golden_walnut_count} Nueces Doradas
  }{$qi_gem_count ->
    [0] {EMPTYSTRING()}
    [1] , 1 Gema Qi
    *[other] , {$qi_gem_count} Gemas Qi
  }{$house_upgrade_level ->
    [1] {EMPTYSTRING()}
    [2] , Casa mejorada al segundo nivel
    [3] , casa mejorada al tercer nivel
    [4] , casa mejorada al cuarto nivel
    *[other] , casa mejorada al nivel {$house_upgrade_level}
  }{$lowest_mine_level ->
    [0] {EMPTYSTRING()}
    *[other] , Nivel más bajo de la mina alcanzado: {$lowest_mine_level}
  }{$stardrop_count ->
    [0] {EMPTYSTRING()}
    [1] , 1 fruta estelar
    *[other] , {$stardrop_count} Frutas estelares
  }{$mastery_level ->
    [-1] {EMPTYSTRING()}
    *[other] , Nivel de maestría {$mastery_level}, {$current_mastery_points} de {$required_mastery_points} puntos
  }
menu-skills_page-skill_info = {$name} en nivel {$level},
  {$buffs}

### Animal Page

menu-animal_page-animal_info = {$name}, {$type}{$heart_count ->
    [-1] {EMPTYSTRING()}
    [1] , 1 corazón
    *[other] , {$heart_count} corazones
  }{$has_been_pet ->
    [0] , no ha sido acariciado aún
    *[other] {EMPTYSTRING()}
  }{$has_received_animal_cracker ->
    [0] {EMPTYSTRING()}
    *[other], Ha comido galleta para animal
  }

## Menus With Inventory

### Forge Menu

menu-forge-start_forging_button = Comenzar a forjar botón
menu-forge-unforge_button = Revertir forjado botón
menu-forge-weapon_input_slot = {$is_empty ->
    [0] Ranura para el arma: {$item_name}
    *[1] Coloca el arma, herramienta o anillo aquí
  }
menu-forge-gemstone_input_slot = {$is_empty ->
    [0] Ranura para la gema slot: {$item_name}
    *[1] Coloca la gema o el anillo aquí
  }

### Geode Menu

menu-geode-geode_input_slot = Deposita aquí la geoda
menu-geode-received_treasure_info = Recibido {$treasure_name}

### Item Grab Menu

menu-item_grab-last_shipped_info = último envío: {$shipped_item_name}
menu-item_grab-add_to_existing_stack_button = Agregarlo a las pilas existentes Botón
menu-item_grab-special_button = Especial botón
menu-item_grab-color_picker_button = Selector de color: {$is_enabled ->
    [0] Desactivado
    *[1] Activado
  }
menu-item_grab-chest_colors =
  {$index ->
   [0] Color del cofre: Marrón (por defecto)
   [1] Azul
   [2] Azul claro
   [3] Verde Azulado
   [4] Agua
   [5] Verde
   [6] Verde Lima
   [7] Amarillo
   [8] Naranja Claro
   [9] Naranja
   [10] Rojo
   [11] Rojo Oscuro
   [12] Rosa Suave
   [13] Rosa
   [14] Magenta
   [15] Púrpura
   [16] Púrpura oscuro
   [17] Gris Oscuro
   [18] Gris
   [19] Gris Suave
   [20] Blanco
   *[other] Sin Color Definido
  } {$is_selected ->
  [0] {EMPTYSTRING()}
  *[1] seleccionado
  }

### Shop menu

menu-shop-buy_price_info = Precio de compra: {$price}g
menu-shop-recipe_ingredients_info = Ingredientes: {$ingredients_list}
menu-shop-pet_license-suffix = {$content} licencia

### Tailoring Menu

menu-tailoring-start_tailoring_button = Comenzar sastrería botón
menu-tailoring-cloth_input_slot = {$is_empty ->
    [0] Ranura para la prenda: {$item_name}
    *[1] Pon aquí la prenda o ropa teñible
  }
menu-tailoring-spool_slot = {$is_empty ->
    [0] Carrete: {$item_name}
    *[1] Pon los materiales aquí
  }

## Misc Patches

### Dialogue Box

menu-dialogue_box-npc_dialogue_format = {$is_appearing_first_time ->
    [0] {EMPTYSTRING()}
    *[1] {$npc_name} dijo,
  } {$dialogue}

## Other Menu Patches

### Animal Query Menu

menu-animal_query-animal_info =
  {$name}, {$is_baby ->
    [0] {$type}
    *[1] Cría {$type}
  }, {$heart_count ->
    [1] 1 corazón
    *[other] {$heart_count} corazones
  }, {$age ->
    [1] 1 mes
    *[other] {$age} meses
  } antiguo{$parent_name ->
    [null] {EMPTYSTRING()}
    *[other] Dueño: {$parent_name}.
  }, {$mood}{$has_received_animal_cracker ->
    [0] {EMPTYSTRING()}
    *[other], ha comido galleta para animal
  }
menu-animal_query-confirm_selling_button = Confirmar venta del animal botón
menu-animal_query-cancel_selling_button = Cancelar la venta del animal botón
menu-animal_query-selling_button = Vender al precio de  {$price}g botón
menu-animal_query-move_home_button = Mudarlo de edificio botón
menu-animal_query-text_box = Nombre del animal cuadro de edición
menu-animal_query-allow_reproduction_button =
  {$checkbox_value ->
    [0] Desactivada
    *[1] Activada
  } Permitir reproducción botón

### Building Skin Menu

# Cabin skins: [0 = default] [1 = plank] [2 = log] [3 = neighbour] [4 = rustic] [5 = beach] [6 = trailer]
# Pet bowl skins: [0 = default] [1 = stone] [2 = hay]

menu-building_skin-skin_info = {$type ->
    [cabin] {$index ->
        [0] Cabaña predeterminada
        [1] {$id}
        [2] {$id}
        [3] {$id}
        [4] {$id}
        [5] {$id}
        [6] {$id}
        *[other] Skin de cabaña desconocido, id:{$id}, index:{$index}
      }
    [pet_bowl] {$index ->
        [0] Cuenco de mascota predeterminado
        [1] {$id}
        [2] {$id}
        *[other] Skin de cuenco de mascota desconocido, id:{$id}, index:{$index}
      }
    *[other] {$index}: {$id}
  }
menu-building_skin-next_skin_button = Siguiente Skin
menu-building_skin-previous_skin_button = Skin anterior

### Carpenter Menu

menu-carpenter-blueprint_info = {$name}, Precio: {$price} oro, Ingredientes: {$ingredients_list}, {$days ->
    [0] Se construye al instante
    [1] 1 día para construir
    *[other] {$days} días para construir
  }, Dimensiones: {$width} ancho y {$height} halto, Descripción: {$description}
menu-carpenter-previous_blueprint_button = Plano anterior
menu-carpenter-next_blueprint_button = Plano siguiente
menu-carpenter-move_building_button = Desplazar edificio
menu-carpenter-paint_building_button = Pintar edificio
menu-carpenter-appearance_button = Cambiar apariencia
menu-carpenter-demolish_building_button = Demoler edificio{$can_demolish ->
    [0] , no puedes demoler este edificio
    *[1] {EMPTYSTRING()}
  }
menu-carpenter-construct_building_button = Construir edificio{$can_construct ->
    [0] , no puedes construir este edificio
    *[1] {EMPTYSTRING()}
  }
### Choose From Icons Menu

menu-choose_from_icons-bobber_styles = {$bobber_id ->
    [locked] Bloqueado
    [id_1] Rojo
    [id_2] Azul
    [id_3] Verde
    [id_4] Amarillo
    [id_5] Rojo y azul
    [id_6] Verde y amarillo
    [id_7] Bola rosa
    [id_8] Carita sonriente
    [id_9] Cráneo
    [id_10] Pato
    [id_11] Perro
    [id_12] Bola azul claro
    [id_13] Arcilla
    [id_14] Savia
    [id_15] Junimo
    [id_16] Gato
    [id_17] Corazón
    [id_18] Joja Cola
    [id_19] Oso?
    [id_20] Gancho
    [id_21] Gato rosado
    [id_22] Fragata
    [id_23] Estrella de mar gelatinosa
    [id_24] Baúl
    [id_25] Ramita
    [id_26] Flor de loto
    [id_27] Béisbol
    [id_28] Hamburguesa
    [id_29] Azul claro y púrpura
    [id_30] Esfera verde?
    [id_31] Torta amarilla??
    [id_32] Duende del polvo con ojos azules?
    [id_33] Esmeralda
    [id_34] Bola de fuego verde
    [id_35] Bola de nieve
    [id_36] Crystal
    [id_37] Cabra? vaca?
    [id_38] Diamante
    [id_39] Fruta estrellada
    *[other] Unknown estilo de corcho de pesca con {$bobber_id}
  } {$selected ->
    [0] {EMPTYSTRING()}
    *[1] Seleccionado
  }

### Choose From List Menu

menu-choose_from_list-ok_button = Seleccionar {$option} botón
menu-choose_from_list-previous_button = Opción anterior: {$option} botón
menu-choose_from_list-next_button = Opción siguiente: {$option} botón

### Confirmation Dialogue Menu

# TODO try this
# menu-confirmation_dialogue-ok_button = {$dialogue_message}
#   {I18N("common-ui-ok_button", mod:"shoaib.stardewaccess")}
menu-confirmation_dialogue-ok_button = {$dialogue_message}
  Aceptar botón
menu-confirmation_dialogue-cancel_button = {$dialogue_message}
  Cancelar Botón
menu-confirmation_dialogue-copy_button = {$dialogue_message}
  Copiar al portapapeles botón

### Item List Menu

menu-item_list-ok_button = {$title}
  {$item_list}
  Página {$current_page} de {$total_pages}
  Aceptar botón

### Letter Viewer Menu

menu-letter_viewer-letter_message = {$message_content}{$is_money_included ->
    [0] {EMPTYSTRING()}
    *[1] 
      Obtuviste {$received_money} oro
  }{$learned_any_recipe ->
    [0] {EMPTYSTRING()}
    *[1] 
      Aprendiste {$learned_recipe} receta
  }{$is_quest ->
    [0] {EMPTYSTRING()}
    *[1] 
      Click izquierdo para aceptar la misión
  }
menu-letter_viewer-pagination_text-prefix = Página {$current_page} de {$total_pages}
  {$content}
menu-letter_viewer-grabbable_item_text = Click izquierdo para recolectar {$name}
menu-letter_viewer-image_note = {$note_id ->
    [11] Imagen de una joven Marnie cogida de la mano del niño Jas. Están rodeados de animales de granja en un rancho. .
    [16] Un mapa de tesoro que señala una gran roca al noroeste del ferrocarril. Una x de color rojo se encuentra ubicada en  el lado derecho de la piedra.
    [17] Un mapa de tesoro señalando el río al norte del mercado joja con una gran X roja  dibujada en la esquina  más al noreste
    [18] Un mapa de tesoro señalando  un banco en la esquina sureste del desertio Calico, hay una X de color rojo hacia el suroeste.
    [19] Una representación de  Willow Lane con una serie de flechas. Un cuadrado marca el espacio frente a la puerta de entrada. La secuencia puede leerse como: izquierda, arriba, derecha, arriba, derecha, abajo, izquierda, abajo, izquierda, abajo, verificar marca.
    [20] una representación  de la plaza del pueblo con una serie de flechas. Se encuentra delimitada un área en el centro del cuadrado. La secuencia es la siguiente, derecha, abajo, derecha, arriba, derecha, arriba, derecha, abajo, izquierda, arriba, izquierda, arriba, derecha, arriba, izquierda, arriba, izquierda, verificar.
    [21] Una representación del gran arbusto al noroeste del puente hacia la playa, parece ser de noche. Un reloj señala la hora: 12:40.
    *[other] Imagen sin descripción {$note_id}
  }

### Level Up Menu

menu-level_up-profession_chooser_heading = {$title}. Selecciona una nueva clase.
menu-level_up-profession_chooser_button = Seleccionada: {$profession_description_list}
  Click izquierdo para elegir.
menu-level_up-ok_button = {$title}, {$extra_info}, Recetas aprendidas: {$learned_recipes}, Click izquierdo para cerrar.

### Mastery Menus

menu-mastery-pedestial_info = {$final_path_text} {$current_points} de {$required_points},
  {$stars ->
    [1] 1 estrella
    *[other] {$stars} estrellas
  }
menu-mastery-walls-claim_button = {$name},
  {$rewards},
  Reclamar bottón

### Naming Menu

menu-naming-done_naming_button = Hecho botón
menu-naming-random_button = Aleatorio botón


### Number Selection Menu

menu-number_selection-button-left_button = Disminuir valor botón
menu-number_selection-button-right_button = Incrementar valor botón
menu-number_selection-value_and_price_info = {$value} {$price ->
    [0] {EMPTYSTRING()}
    *[other] Precio: {$price}
  }

### Pond Query Menu

menu-pond_query-change_netting_button = Cambiar red botón
menu-pond_query-empty_pond_button = Estanque EMPTYSTRING botón
menu-pond_query-pond_info = {$pond_name}, {$population_info}, {$required_item_info}, Estado: {$status}

### Prize Ticket Menu

menu-prize_ticket-collect_prize_button = Premios actuales: {$prize_items}
  Tienes {$prize_ticket_count ->
    [1] 1 ticket de premio
    *[other] {$prize_ticket_count} tickets de premio
  }, Recoger premio botón

### Purchase Animal Menu

menu-purchase_animal-animal_info = {$name}, Precio: {$price}g, Descripción: {$description}
menu-purchase_animal-first_time_in_menu_info = Ingresa el nombre del animal en el cuadro de edición de nombre.
menu-purchase_animal-random_name_button = Nombre Aleatorio botón
menu-purchase_animal-animal_name_text_box = Cuadro de edición de nombre{$value ->
    [null] {EMPTYSTRING()}
    *[other] , Valor: {$value}
  }

### Title Text Input Menu

menu-title_text_input-paste_button = Pegar botón

### Shipping Menu

menu-shipping-total_money_received_info = Recibido {$money}g en total. Click izquierdo para almacenar.
menu-shipping-money_received_from_category_info = {$money}g recibido de la categoría {$category_name}.

## Quest Patches

### Billboard Menu

menu-billboard-calendar-day_info = {$is_current ->
    [0] {EMPTYSTRING()}
    *[1] Actual
  } Day {$day ->
    [1] {$day} de {$season} año {$year}
    *[other] {$day}
  }{$extra_info ->
    [null] {EMPTYSTRING()}
    *[other] , {$extra_info}
  }
menu-billboard-daily_quest-accept_quest-suffix =
  Click izquierdo para aceptar la misión.

### Quest Log Menu (Journal Menu)

menu-quest_log-cancel_quest_button = Cancelar misión botón
menu-quest_log-reward_button = Recoger recompensa botón
menu-quest_log-quest_brief = {$name} {$is_completed ->
    [0] {SIGNOFNUMBER($days_left) ->
      [positive] , {$days_left} {$days_left ->
        [1] día
        *[other] días
      } restante
      *[other] {EMPTYSTRING()}
    }
    *[1] completado!
  }
menu-quest_log-quest_detail = {$name} {$is_completed ->
    [0] , Descripción: {$description}, Objetivos: {$objectives_list} {SIGNOFNUMBER($days_left) ->
      [positive] , {$days_left} {$days_left ->
        [1] día
        *[other] días
      } restante
      *[other] {EMPTYSTRING()}
    }
    *[1] completado! {$has_received_money ->
      [0] {EMPTYSTRING()}
      *[1] Tomar {$received_money}g
    }
  }

### Special Orders Board Menu

menu-special_orders_board-quest_details = {$name}, Descripción: {$description}, Objetivos: {$objectives_list}{$is_timed ->
    [0] {EMPTYSTRING()}
    *[1] , Tiempo: {$days} {$days ->
      [1] día
      *[other] días
    }
  }{$has_money_reward ->
    [0] {EMPTYSTRING()}
    *[1] , Recompensa: {$money}
  }
menu-special_orders_board-accept_button = {$is_left_quest ->
    [0] Derecha
    *[1] Izquierda
  } misión: {$quest_details}
  Click izquierdo para tomar esta misión.
menu-special_orders_board-quest_in_progress = En progreso: {$quest_details}
menu-special_orders_board-quest_completed = Misión {$name} completada! Abre el diario para recoger tu recompensa.

## Title Menus

### Title Menu

menu-title-stardew_access_loaded = Se ha cargado Stardew Access versión {$version} {$cheats ->
    [1] con trampa activada
    *[0] {EMPTYSTRING()}
  }
menu-title-click_to_skip = Click izquierdo para saltar presentación del título
menu-title-new_game_button = Nueva partida botón
menu-title-load_button = Cargar partida botón
menu-title-co_op_button = Modo cooperativo botón
menu-title-language_button = Idioma botón
menu-title-about_button = Acerca de botón
menu-title-mute_music_button = Silenciar música botón
menu-title-fullscreen_button = Pantalla completa: {$is_enabled ->
    [0] desactivada
    *[1] activada
  }
menu-title-exit_button = Salir botón
menu-title-invite_button = Invitar botón

### Load Game Menu

menu-load_game-delete_farm_button = Borrar la granja {$name}
menu-load_game-delete_farm_confirmation_text = ¿Seguro que quieres borrar la granja?
menu-load_game-farm_details = {$index ->
    [-1] {EMPTYSTRING()}
    *[other] {$index}
  } Granja {$farm_name}, {$farmer_name}, {$money ->
    [-1] {EMPTYSTRING()}
    *[other] {$money}g
  }, {$date}, {$hours_played} horas jugadas

### Co-op Menu

menu-co_op-join_lan_game_button = Unirse a una partida en la red local...
menu-co_op-host_new_farm_button = Crear nueva granja...
menu-co_op-refresh_button = Actualizar botón
menu-co_op-join_tab_button = Unirse pestaña {$is_selected ->
    [0] {EMPTYSTRING()}
    *[1] seleccionada
  }
menu-co_op-host_tab_button = Anfitrión {$is_selected ->
    [0] {EMPTYSTRING()}
    *[1] seleccionada
  }
menu-co_op-friend_hosted_farm_details = {$farm_name}, Propietario: {$owner_name}, {$date}
