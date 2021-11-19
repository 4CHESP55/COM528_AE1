# Test Plan
This test plan provides a set of steps to test the use cases against the delivered solution.


## Test Case Mapping
For full details of the test cases see [Use Cases](UseCases.md).

| Test Case | Use Case                           | 
| :---      | :---                               | 
|   TC1     | Owner Login                        |
|   TC2.0   | Accepted transaction               |
|   TC2.1   | Rejected Transaction               |
|   TC3     | No Wifi/Internet                   |
|   TC4     | Customer/Owner cancels transaction |
|   TC5.0   | Refund of transation               |
|   TC5.1   | Refund of transation failed        |
|   TC6     | Shop owner logout                  |


## Test Steps
Below are the full steps to test all of the use cases.

<table>
    <thead>
        <tr>
            <th>Step</th>
            <th>Input</th>
            <th>Expected Result</th>
            <th>Pass/Fail</th>
            <th>Notes</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="5">Test Case: TC1 - Owner Login</td>
        </tr>
        <tr>
            <td>1</td>
            <td>Open Card Reader Page</td>
            <td>Card Reader shown prompting for login</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>2</td>
            <td>Enter Login number by clicking on the number pad</td>
            <td>input is displayed on the screen</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>3</td>
            <td>Submit login number by pressing on the green enter key</td>
            <td>input is accepted and pin is asked</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>4</td>
            <td>Enter PIN by clicking on the number pad</td>
            <td>PIN is displayed on the screen</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>5</td>
            <td>Submit PIN by pressing on the green enter key</td>
            <td>input is accepted and confirmation of login</td>
            <td>FAIL</td>
            <td>Login function not implemented</td>
        </tr>
        <tr>
            <td colspan="5">Test Case: TC2.0 - Accepted transaction</td>
        </tr>
        <tr>
            <td>6</td>
            <td>Enter a valid amount and click on the green enter button</td>
            <td>Amount can be seen on screen and prompt for card number after clicking enter</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>7</td>
            <td>Enter a valid card nuber and click on the green enter button</td>
            <td>Card number can be seen on the sreen and prompt for CVV</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>8</td>
            <td>Enter the CVV and click on the green enter button</td>
            <td>CVV can be seen on the screen and prompt for expiry</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>9</td>
            <td>Enter the expiry date and click on the green enter button</td>
            <td>Expiry date can be seen on the screen and promt for issue number</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>10</td>
            <td>Enter issue number and click on the green enter button</td>
            <td>Issue number can be seen and prompt for confirmation</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>11</td>
            <td>click on the green enter button</td>
            <td>Page refreshes and shows success message</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td colspan="5">Test Case: TC2.1 - Rejected transaction</td>
        </tr>
        <tr>
            <td>12</td>
            <td colspan="2">Repeat step 6</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>13</td>
            <td>Enter an invalid card nuber and click on the green enter button</td>
            <td>Card number can be seen on the sreen and prompt for CVV</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>14</td>
            <td>Repeat steps 8 - 11</td>
            <td>Page refreshes and shows fail message</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td colspan="5">Test Case: TC3 - No Wifi/Internet</td>
        </tr>
        <tr>
            <td>15</td>
            <td>Turn device on airplane mode</td>
            <td>No access to internet</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>16</td>
            <td>Repeat steps 6-11</td>
            <td>Error showing Failed due to no connection</td>
            <td>FAIL</td>
            <td>Not yet implemented</td>
        </tr>
        <tr>
            <td colspan="5">Test Case: TC4 - Customer/Owner cancels transaction</td>
        </tr>
        <tr>
            <td>17</td>
            <td colspan="2">Repeat steps 6-10</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>18</td>
            <td>Click Cancel button</td>
            <td>Message confirming transaction cancelled</td>
            <td>FAIL</td>
            <td>Not yet implemented. can only clear current input or reload page to start a new transaction</td>
        </tr>
        <tr>
            <td colspan="5">Test Case: TC5.0 - Refund of transation</td>
        </tr>
         <tr>
            <td>19</td>
            <td>enter "/" followed by an amount and click on the green enter button</td>
            <td>Amount can be seen on screen and prompt for card number after clicking enter</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>20</td>
            <td colspan="2">Repeat steps 6-11</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td colspan="5">Test Case: TC5.1 - Refund of transation failed</td>
        </tr>
        <tr>
            <td>21</td>
            <td colspan="2">Repeat step 19</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td>22</td>
            <td colspan="2">Repeat steps 13-14</td>
            <td>PASS</td>
            <td></td>
        </tr>
        <tr>
            <td colspan="5">Test Case: TC6 - Shop owner logout</td>
        </tr>
        <tr>
            <td>23</td>
            <td>Click logout button</td>
            <td>Logout complete, screen displays login</td>
            <td>FAIL</td>
            <td>Not yet implemented</td>
        <tr>
    </tbody>
</table>
