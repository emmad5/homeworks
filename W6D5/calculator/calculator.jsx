import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {result: 0};
    this.setNum1 = this.setNum1.bind(this);
  }

  setNum1(e) {
    return this.setState({ result: this.state.result + 1 });
  }


  render(){
    return (
      <div>
        <h1>{this.state.result}</h1>
        <button onClick = { () => this.setNum1()}>Add 1</button>
        CODE
      </div>
    );
  }
}

export default Calculator;
