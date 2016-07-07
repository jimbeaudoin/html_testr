let NavBar = {
  menuIsShown: false,

  init(element) {
    if(!element) { return; }
    let userMenu = document.getElementById("user-menu");
    let userSubMenu = document.getElementById("sub-menu");
    let appHtml = document.getElementById("app-html");

    userMenu.addEventListener("click", e => {
      if (this.menuIsShown === true) {
        userSubMenu.style.display = "none";
      }
      else {
        userSubMenu.style.display = "block";
      }
      this.menuIsShown = !this.menuIsShown;
      e.stopPropagation();
    }),

    appHtml.addEventListener("click", e => {
      if (this.menuIsShown === true) {
        userSubMenu.style.display = "none";
        this.menuIsShown = false;
      }
    })
  }
}

export default NavBar;
