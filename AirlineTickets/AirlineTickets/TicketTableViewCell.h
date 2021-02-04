//
//  TicketTableViewCell.h
//  AirlineTickets
//
//  Created by Rodion Molchanov on 20.01.2021.
//

#import <UIKit/UIKit.h>
#import "DataManager.h"
#import "APIManager.h"
#import "Ticket.h"
#import "AirlineTickets-Swift.h"

NS_ASSUME_NONNULL_BEGIN

@interface TicketTableViewCell : UITableViewCell
@property (nonatomic, strong) Ticket *ticket;
@property (nonatomic, strong) FavoriteTicket *favoriteTicket;
@end

NS_ASSUME_NONNULL_END
