pragma solidity >=0.4.16 <0.8.0;

contract RockPaperScissors {
    
    address payable private player1;
    address payable private player2;
    string private choiceOfPlayer1;
    string private choiceOfPlayer2;
    bool private hasPlayer1Draw;
    bool private hasPlayer2Draw;
    
    function join(string calldata _playerChoice) external payable
    {
        if (!hasPlayer1Draw && msg.value == 1000) {
            player1 = msg.sender;
            hasPlayer1Draw = true;
            choiceOfPlayer1 = _playerChoice;
        } else if (!hasPlayer2Draw && msg.value == 1000) {
            player2 = msg.sender;
            hasPlayer2Draw = true;
            choiceOfPlayer2 = _playerChoice;
        }
        
        if (hasPlayer1Draw && hasPlayer2Draw) {
            if (checkWinner(choiceOfPlayer1,choiceOfPlayer2)==) {
                player1.transfer(address(this).balance);
            } else {
                player2.transfer(address(this).balance);
            }
        }
    }
    
    function checkWinner(string memory _player1Choice, string memory _player2Choice) internal returns (string)
    {
        // check winner //
    }
}
    