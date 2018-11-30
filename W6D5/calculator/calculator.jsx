import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {result: 0};
    this.setNum1 = this.setNum1.bind(this);
  }

  setNum1(e) {
    // your code here
  }


  render(){
    return (
      <div>
        <h1>{this.state.result}</h1>
        <button onClick = { () => this.setNum1(e)}>SET NUM</button>
        CODE
      </div>
    );
  }
}

export default Calculator;
