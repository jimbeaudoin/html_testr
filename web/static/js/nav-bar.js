let NavBar = {

  init(element) {
    if(!element) { return; }
    let userMenu = document.getElementById("user-menu");
    let userSubMenu = document.getElementById("sub-menu");

    userMenu.addEventListener("click", e => {
      userSubMenu.style.display = "block";
    })
  }
}

export default NavBar;
