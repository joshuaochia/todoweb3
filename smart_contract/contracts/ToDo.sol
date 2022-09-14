// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


contract ToDo {

    struct Task{
        string task;
        bool isDone;
    }

    mapping (address => Task[]) private Users;

    function addTask(string memory task) public {
        Users[msg.sender].push(Task(task, false));
    }

   function getTask(uint _taskIndex) external view returns(Task memory){
       Task storage task = Users[msg.sender][_taskIndex];
       return task;
   } 

   function updateTask(uint _taskIndex, bool _status) public {
       Users[msg.sender][_taskIndex].isDone = _status;
   }


    function deleteTask(uint256 _taskIndex) external{
       delete Users[msg.sender][_taskIndex];
   }

   
    function getTaskCount() external view returns (uint256)
    {
    return Users[msg.sender].length;
    } 


}  
