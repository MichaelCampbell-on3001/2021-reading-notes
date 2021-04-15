


# Day 4 Forms 

## [React Docs - Forms](https://reactjs.org/docs/forms.html)
HTML form elements work a little bit differently from other DOM elements in React, because form elements naturally keep some internal state. 
**Controlled Components**


In **HTML**, form elements such as input, textarea, and select typically maintain their own state and update it based on user input. In React, mutable state is typically kept in the state property of components, and only updated with **setState()**.

### Example of a form as a component


```
{

class NameForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {value: ''};

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({value: event.target.value});
  }

  handleSubmit(event) {
    alert('A name was submitted: ' + this.state.value);
    event.preventDefault();
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <label>
          Name:
          <input type="text" value={this.state.value} onChange={this.handleChange} />
        </label>
        <input type="submit" value="Submit" />
      </form>
    );
  }
}

}
```

### Handling Multiple Inputs

When you need to handle multiple controlled input elements, you can add a name attribute to each element and let the handler function choose what to do based on the value of event.target.name.

```
{
class Reservation extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isGoing: true,
      numberOfGuests: 2
    };

    this.handleInputChange = this.handleInputChange.bind(this);
  }

  handleInputChange(event) {
    const target = event.target;
    const value = target.type === 'checkbox' ? target.checked : target.value;
    const name = target.name;

    this.setState({
      [name]: value
    });
  }

  render() {
    return (
      <form>
        <label>
          Is going:
          <input
            name="isGoing"
            type="checkbox"
            checked={this.state.isGoing}
            onChange={this.handleInputChange} />
        </label>
        <br />
        <label>
          Number of guests:
          <input
            name="numberOfGuests"
            type="number"
            value={this.state.numberOfGuests}
            onChange={this.handleInputChange} />
        </label>
      </form>
    );
  }
}

}
```

### Additional Reading

[uncontrolled components ](https://reactjs.org/docs/uncontrolled-components.html)
[Fully-Fledged Solutions](https://formik.org/)



## [React Bootstrap - Forms](https://react-bootstrap.github.io/components/forms/)


**Forms**

The **<FormControl>** component renders a form control with *Bootstrap styling*. The **<FormGroup>** component wraps a form control with proper spacing, along with support for a label, help text, and validation state. To ensure accessibility, set controlId on **<FormGroup>**, and use **<FormLabel>** for the label.
  

**Form controls**

For **textual form controls** —like inputs, selects, and textareas—use the **FormControl** component. FormControl adds some additional styles for *general appearance, focus state, sizing, and more*.


**Sizing**

Use **size** on *<FormControl> and <FormLabel>* to change the size of inputs and labels respectively.
  

**Readonly**

Add the **readOnly** prop on an input **to prevent modification of the input's value**. Read-only inputs *appear lighter* (just like disabled inputs), but retain the standard cursor.


**Checkboxes and Radios**

For the *non-textual checkbox and radio controls*, FormCheck provides a single component for both types that adds some additional styling and improved layout. Their Default is stacked. Group checkboxes or radios on the same horizontal row by adding the inline prop.





