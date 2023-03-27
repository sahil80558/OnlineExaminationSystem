*,
*::before,
*::after {
box-sizing: border-box;
font-family: Gotham Rounded;
padding: 0;
margin: 0;
}

.header {
width: 100vw;
height: 7vh;
display: flex;
align-items: center;
justify-content: space-between;
background-image: linear-gradient(to  right, rgb(0, 32, 3),rgb(255, 250, 253));
color: rgb(6, 44, 28);
}

#Test-name {
margin-left: 100px;
padding: 5px;
font-size: 25px;
font-weight: bold;
background-color:inherit;
color: white;

}

#attempt {
display: flex;
color:rgb(6, 44, 28);
font-size: large;
font-weight: bold;
color: white;

}

#Timer {
margin-right: 100px;
padding: 5px;
font-size: 25px;
font-weight: bold;
border: 2px solid rgb(12, 4, 22);
border-radius: 5px;
background-color: white;
color: black;
}

#reset {
text-align: center;
position: relative;
font-weight: bold;
font-size: medium;
width: 100px;
height: 35px;
cursor: pointer;
padding: 7px;

margin-right: 20px;

border: 2px solid rgb(47, 0, 255);
border-radius: 10px;
display: none;
}

#reset:hover {
border: 2px solid rgb(255, 255, 255);
color: rgb(255, 255, 255);
background-color:rgb(4, 0, 255);
}

#submit {
text-align: center;
position: relative;
font-weight: bold;
font-size: medium;
width: 100px;
height: 35px;
cursor: pointer;
padding: 7px;

margin-right: 5px;
background-color:inherit;
color: rgb(6, 44, 28);
border: 2px solid rgb(47, 0, 255);
border-radius: 10px;
}

#submit:hover {
border: 2px solid rgb(255, 255, 255);
color: rgb(255, 255, 255);
background-color:rgb(4, 0, 255);
}



.mid {
display: flex;
/* background-color: rgb(14, 27, 209); */
/* background-image: linear-gradient(to bottom , rgb(124, 250, 40), rgb(226, 217, 84)); */
background-image: url("green_mock.jpg");
/* background-image: linear-gradient(to bottom right, rgb(17, 240, 103), rgb(255, 255, 255)); */

}

.sidebar {
width: 9vw;
height: 93vh;
display: block;
overflow-y: scroll;
background-color: inherit;
}

/* #index {
width: 3vw;
margin: 5px;
padding: 5px 5px 5px 5px;
border: 2px solid rgb(36, 33, 235);
font-weight: bold;
font-size: small;
cursor: pointer;
background-color: white;
}
#index:hover {
background-color: rgba(78, 204, 236, 0.356);
border: 2px solid rgb(0, 0, 0);
} */

.question_no_sidebar {
width: 3vw;
margin: 10px 0px 10px 13px;
padding: 5px 5px 5px 5px;
border: 1px solid rgb(116, 129, 148);
font-weight: bold;
font-size: small;
cursor: pointer;
background-color: white;
}

.question_no_sidebar:hover {
background-color: rgba(209, 181, 19, 0.356);
border: 2px solid rgb(0, 0, 0);
}

.container {
width: 90vw;
height: 93vh;
display: flex;
flex-direction: column;
align-items: center;
}

#question {
margin: 50px 50px 10px 50px;
padding: 100px;
font-size: large;
font-weight: bold;
width: 60%;
height: 270px;
border: 2px solid gray;
border-radius: 1px;
background-color: white;
display: flex;
}

#qno {
margin-right: 10px;
}

#keys {
width: 60%;
height: 310px;
border: 2px solid gray;
display: flex;
flex-direction: column;
border-radius: 1px;
background-color: white;
}

.option {
width: 40%;
margin: 15px 10px 5px 110px;
padding: 15px;
display: flex;
font-size: large;
font-weight: bold;
border-radius: 5px;
background-color: rgba(178, 78, 236, 0.356);
cursor: pointer;
}

.option:hover {
background-color: rgb(36, 33, 235);
color: white;
margin-left: 8em;
}


#no {
padding: 1px 0px 1px 15px;
margin-right: 25px;
border-radius: 1px;
color: blanchedalmond;
background-color: rgb(20, 10, 29);
padding-right: 15px;

}

#nxt-prev {
width: 60%;
height: 100px;
margin: 15px;
border: 2px solid gray;
display: flex;
justify-content: space-between;
border-radius: 10px;
background-color: white;
}

.np {
width: 100px;
height: 45px;
margin: auto;
display: flex;
align-items: center;
justify-content: center;
border: 2px solid rgb(82, 50, 121);
border-radius: 20px;
cursor: pointer;
}

.np:hover {
background-color: rgb(82, 50, 121);
color: white;

}

#prev:hover {
margin-bottom: 1.76em;
}

#next:hover {
margin-bottom: 1.76em;
}

#save:hover {
margin-bottom: 1.76em;
}

#clear:hover {
margin-bottom: 1.76em;
}