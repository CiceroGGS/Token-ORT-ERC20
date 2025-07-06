// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    
    // getters \\
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns(uint256);    

    // functions \\
    function transfer(address recipient, uint256 amount) external returns(bool);
    function approve(address  spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns(bool);

    // events \\
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address  indexed spender, uint256 value);

}

contract OricoToken is IERC20 {

    string public constant name = "Orico Token";
    string public constant symbol = "ORT";
    uint8 public constant decimals = 18;

    mapping (address => uint256) balances;
    mapping (address => mapping (address => uint256)) allowed;

    uint256 totalSupply_ = 100 ether;

    constructor(){
        balances[msg.sender] = totalSupply_;
    }

    function totalSupply() public override view returns (uint256) {
        return totalSupply_;
    }

    function balanceOf(address tokenOwner) public override view returns (uint256) {
        return balances[tokenOwner];
    } 

    function transfer(address recipient, uint256 amount) public override  returns(bool){
        require(balances[msg.sender] >= amount, "Saldo insuficiente");
        
        balances[msg.sender] -= amount;
        balances[recipient]  += amount;

        emit Transfer(msg.sender, recipient, amount);
        
        return true;
    } 

    function approve(address spender, uint256 amount) public override returns(bool) {
        allowed[msg.sender][spender] = amount;
    
        emit Approval(msg.sender, spender, amount);

        return true;
    }

    function allowance(address owner, address spender) public override view returns(uint256) {
        return allowed[owner][spender];
    }

    function transferFrom(address sender, address recipient, uint256 amount) public override returns(bool) {
        require(balances[sender] >=  amount, "Saldo Insuficiente");
        require(allowed[sender][msg.sender] >= amount, "Sem permissao suficiente");

        balances[sender] -= amount;
        balances[recipient] += amount;

        allowed[sender][msg.sender] -= amount;

        emit Transfer(sender, recipient, amount);

        return true;
    }
}