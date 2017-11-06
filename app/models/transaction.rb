class Transaction < ApplicationRecord
  belongs_to :user


  scope :trans_user_name                 , -> (name) { joins(:user ).where( "lower(name) like ?", "%#{name.downcase}%" ) }
  scope :trans_amount                    , -> (amount                          ) { where "amount                       = ?", amount                       }
  scope :trans_phoneNumber               , -> (phoneNumber                     ) { where "phoneNumber like               ?", "%#{phoneNumber}%"           }
  scope :trans_provider                  , -> (provider                        ) { where "provider                     = ?", provider                     }
  scope :trans_location                  , -> (location                        ) { where "location                     = ?", location                     }
  scope :trans_status                    , -> (status                          ) { where "status                       = ?", status                       }
  scope :trans_scheduledPickupStartDT    , -> (scheduledPickupStartDT          ) { where "scheduledPickupStartDT       = ?", scheduledPickupStartDT       }
  scope :trans_scheduledPickupEndDT      , -> (scheduledPickupEndDT            ) { where "scheduledPickupEndDT         = ?", scheduledPickupEndDT         }
  scope :trans_messagedPickupDT          , -> (messagedPickupDT                ) { where "messagedPickupDT             = ?", messagedPickupDT             }
  scope :trans_pickedUpDT                , -> (pickedUpDT                      ) { where "pickedUpDT                   = ?", pickedUpDT                   }
  scope :trans_rechargeDueDT             , -> (rechargeDueDT                   ) { where "rechargeDueDT                = ?", rechargeDueDT                }
  scope :trans_rechargedDT               , -> (rechargedDT                     ) { where "rechargedDT                  = ?", rechargedDT                  }
  scope :trans_remarks                   , -> (remarks                         ) { where "remarks                      = ?", remarks                      }


end
