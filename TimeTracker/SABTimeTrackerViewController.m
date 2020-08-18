//
//  SABTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Stephanie Ballard on 8/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SABTimeTrackerViewController.h"
#import "SABTimedTask.h"
#import "SABTimedTaskController.h"

@interface SABTimeTrackerViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTextField;
@property (weak, nonatomic) IBOutlet UITextField *timeWorkedTextField;
@property (weak, nonatomic) IBOutlet UITextField *clientTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) SABTimedTaskController *timedTaskController;
@property (nonatomic) NSString *client;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;

@end

@implementation SABTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    //* ask about this tomorrow
//    In order to be able to access the TimedTaskController property you created, we must give it an instance of the model controller. Defining the property does not give it a value. In the viewDidLoad, set the property to a new instance of your model controller.
    self.timedTaskController = [[SABTimedTaskController alloc] init];
}

//In the logTime action, pull out each value from the 4 text fields and pass them in to the model controller's createTimedTaskWith method. After that, reload the table view and set the text fields' text to be an empty string.
- (IBAction)logTimeButtonTapped:(UIButton *)sender {
    self.client = self.clientTextField.text;
    self.summary = self.summaryTextField.text;
    self.hourlyRate = [self.hourlyRateTextField.text doubleValue];
    self.hoursWorked = [self.timeWorkedTextField.text doubleValue];
    
    [self.timedTaskController createTimedTaskWithClient:self.client
                                                summary:self.summary
                                             hourlyRate:self.hourlyRate
                                            hoursWorked:self.hoursWorked];
    
    // *ask why this needs []
    [self.tableView reloadData];
    
    self.clientTextField.text = @"";
    self.summaryTextField.text = @"";
    self.hourlyRateTextField.text = @"";
    self.timeWorkedTextField.text = @"";
}

//Implement the numberOfRowsInSection and cellForRowAtIndexPath methods just as you would in Swift. The cell's text label should show the TimedTask's client, and the detail text label should show the total. Try to format the total so it has the same format as $231.40.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timedTaskController.timedTask.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    SABTimedTask *timedTask = [self.timedTaskController.timedTask objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"$0.2f", timedTask.total];
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
