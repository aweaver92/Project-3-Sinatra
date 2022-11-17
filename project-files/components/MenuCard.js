import React, {useState, useEffect} from "react";
import MenuPage from "./MenuPage";

function MenuCard(props) {
    const [isShown, setIsShown] = useState(true)
    const handleClick = event => {
      setIsShown(isShown => !isShown);
      console.log(isShown)
    };
  
    const {meal} = props
    return (
    <>
    <div class="mealcard">
      <span class="cardimg">
          <img src="/assets/squirtle.jpg"/>
      </span>
      <h3>
          BREAKFAST MENU
      </h3>
      <h2>
          SQUIRTLE STEW
      </h2>
      <div class="divider"></div>
        <div class="review-stars">
          
          <img src="/assets/star-filled.jpg"/>
          <img src="/assets/star-filled.jpg"/>
          <img src="/assets/star-filled.jpg"/>
          <img src="/assets/star-filled.jpg"/>
          <img src="/assets/star-blank.jpg"/> 
        </div>
      <p> 
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiu smod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. 
      </p>
      <button class="btn">ADD TO CART</button>
    </div> 
                
        <li className="card">
          <img src={meal.image} alt={plant.name} />
          <h4>{meal.review}</h4>
          <p>Price: {plant.price}</p>
          {isShown ? (
            <button onClick={handleClick} className="primary">Show Reviews</button>
          ) : (
            (
              
            <button onClick={handleClick}>Hide Reviews</button>
            )
          )}
        </li>
      </>
    );
  }


export default MenuCard;