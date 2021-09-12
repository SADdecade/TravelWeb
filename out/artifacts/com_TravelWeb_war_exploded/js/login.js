let registerBtn = document.querySelector('#register-btn');
let loginForm = document.querySelector('.login-form-container');
let registerForm =document.querySelector('.register-form-container');
let formClose = document.querySelector('#form-close');
let registerClose=document.querySelector('#register-close');

window.onscroll = () =>{
    loginForm.classList.remove('active')
    registerForm.classList.remove('active');
}

registerBtn.addEventListener('click',() =>{
    loginForm.classList.add('active');
    registerForm.classList.add('active');
})

registerClose.addEventListener('click',() =>{
    registerForm.classList.remove('active');
    loginForm.classList.remove('active')
})