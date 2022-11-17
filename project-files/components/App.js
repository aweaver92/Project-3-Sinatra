// npm install && json-server -p 3001 --watch db.json && npm start

import React, {useState} from "react";
import Admin from './components/Admin';

function App() {
  let [name, setName] = useState('')

  function addMeal (event, newName) {
    event.preventDefault()

    const baseUrl = "http://localhost:3001/"
    const adminUrl = baseUrl + "admin/"

    let postRequest = {
      method: 'POST',
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json'
      },
      body: JSON.stringify({
        "name":newName
      })
    }
    fetch(adminUrl, postRequest)
    .then( r => r.json())
    .then( response => {
      setName(newName)
    })
  }

  return (
    <div className="App">    
      {<MenuPage />}
    </div>
  );
}

export default App;
