pragma solidity 0.8.7;


contract mappings{
   mapping(address => uint) saldos;
   mapping(address => uint[]) pontuacao;

   function depositar() external payable{
       saldos[msg.sender] += msg.value;
   }

   function verSaldo() external view returns(uint){
       return saldos[msg.sender];
   }

   function salvarPontuacao(uint _pontuacao) external{
       pontuacao[msg.sender].push(_pontuacao);
   }

   function premioEmToken() external view returns(uint){
       uint somaPontuacao;

       for(uint i; i<pontuacao[msg.sender].length;i++){
           somaPontuacao+=pontuacao[msg.sender][i];

       }
       return somaPontuacao;
   }
}