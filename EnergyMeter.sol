// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnergyMeter {
    // 트랜잭션이 성공하면 블록체인에 영구히 박제될 이벤트 로그
    event EnergyDataRecorded(address indexed device, uint256 powerValue, uint256 timestamp);

    // 라즈베리파이에서 이 함수를 호출해서 전력량(숫자)을 보낼 거야
    function recordEnergy(uint256 _powerValue) public {
        // 값을 저장하는 대신, 가스비를 아끼기 위해 이벤트로 바로 방출(emit)
        emit EnergyDataRecorded(msg.sender, _powerValue, block.timestamp);
    }
}
