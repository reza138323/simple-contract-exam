//jalase 2 class solidity

pragma solidity 0.8.14;


contract rez {

   
   struct ETHpayAmount{
        uint Amount;   
        bool isPaid; 
     }
 
    mapping(address=>ETHpayAmount)private _ETHpay;

    //  string private err = 'its low Amount. please input Amount Above 1';

    function Payment (uint _Amount) public{
        if(_Amount <= 3 ){
            //   _ETHpay[msg.sender].Amount = _err;
             _ETHpay[msg.sender].isPaid = false ;   
        }
        else{
            _ETHpay[msg.sender].Amount = _Amount ;
            _ETHpay[msg.sender].isPaid = true ; 
        }
    }


    function PaymentAmount() public view returns(uint){
        return _ETHpay[msg.sender].Amount;
    }

    function PaymentStatus() public view returns(bool){
        return _ETHpay[msg.sender].isPaid;
    }

 }
