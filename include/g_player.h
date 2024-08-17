#include "mt_vec.h"

struct s_player {

   // ik this is misspelled but idc
   //       ||
   //       vv
   // XY coordinet of player 
   s_fvec2 position;

   // active velocity, used for physics calculations
   s_fvec2 velocity;
   //since we can only rotate one axis, only a float is needed
   float angle;

   enum {
      PL_IDLE,
      PL_MOVING,
      PL_DEAD,
      PL_MENU,
      PL_FREEZE
   } state;
   

};

void 
