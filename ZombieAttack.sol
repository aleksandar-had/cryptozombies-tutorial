pragma solidity >=0.5.0 <0.6.0;

import "./ZombieHelper.sol";

contract ZombieAttack is ZombieHelper {
    uint randNonce = 0;
    uint attackVictoryProbability = 70;

    /** 
     * Although prone to a dishonest attack via its faulty
     * randomness, for the purpose of learning, the current
     * RNG could be accepted. solution...oracles
    */
    function randMod(uint _modulus) internal returns (uint) {
        randNonce++;
        return uint(keccak256(abi.encodePacked(now, msg.sender, randNonce))) % _modulus;
    }

    function attack(uint _zombieId, uint _targetId) external ownerOf(_zombieId) {

    }
    
}