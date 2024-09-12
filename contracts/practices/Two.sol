// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.27;

contract Two {
    string public str;
    string[] public strings;

    uint256 public num;

    address public addr;

    bytes public b;

    bool public boolean;

    // Function to set values for all state variables
    function setValues(
        string memory _str,
        uint256 _num,
        address _addr,
        bytes memory _b,
        bool _boolean
    ) public {
        str = _str;
        num = _num;
        addr = _addr;
        b = _b;
        boolean = _boolean;
    }

    function addValue(string memory _str) public {
        strings.push(_str);
    }

    function readStrings() public view returns (string[] memory) {
        return strings;
    }

    function getBytesFromNumber(
        uint256 _num
    ) public pure returns (bytes memory) {
        return abi.encodePacked(_num);
    }

    function getBytesFromString(
        string memory _str
    ) public pure returns (bytes memory) {
        return bytes(_str);
    }

    function compareStrAndNumOld(
        string memory _str,
        uint256 _num
    ) public pure returns (bool) {
        // Convert both _str and _num to bytes
        bytes memory strBytes = bytes(_str);
        bytes memory numBytes = abi.encodePacked(_num);

        // Compare their length first (quick check)
        if (strBytes.length != numBytes.length) {
            return false;
        }

        // Compare each byte
        for (uint256 i = 0; i < strBytes.length; i++) {
            if (strBytes[i] != numBytes[i]) {
                return false;
            }
        }
        return true;
    }

    function compareStrAndNum(
        string memory _str,
        uint256 _num
    ) public pure returns (bool) {
        // Convert the string to a uint256
        uint256 parsedNum = stringToUint(_str);

        // Compare the parsed number with the input number
        return parsedNum == _num;
    }

    function stringToUint(string memory _str) internal pure returns (uint256) {
        bytes memory _b = bytes(_str);
        uint256 result = 0;
        for (uint i = 0; i < _b.length; i++) {
            // Ensure each character is a digit (ASCII code between 48 and 57)
            require(
                _b[i] >= 0x30 && _b[i] <= 0x39,
                "Invalid character in string."
            );
            result = result * 10 + (uint256(uint8(_b[i])) - 48);
        }
        return result;
    }
}
