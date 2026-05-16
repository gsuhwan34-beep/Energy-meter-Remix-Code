// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// 오픈제플린의 ERC20 표준 라이브러리를 불러옵니다.
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract WonToken is ERC20 {
    // 토큰 이름은 "Won", 심볼은 "WON"으로 설정합니다.
    constructor() ERC20("Won", "WON") {
        // 배포하는 순간, 배포를 진행한 지갑(msg.sender)으로 1억 개의 토큰을 발행(Mint)합니다.
        // 스마트 컨트랙트에서는 소수점 18자리를 기본으로 사용하므로 10**decimals()를 곱해줍니다.
        _mint(msg.sender, 100000000 * 10 ** decimals());
    }
}
