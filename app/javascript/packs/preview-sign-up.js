if (document.URL.match(/sign_up/)){
  document.addEventListener('DOMContentLoaded', () => {
    const createImageHTML = (blob) => {  
      const imageElement = document.getElementById('sign-up-image'); 
      const blobImage = document.createElement('img'); 
      blobImage.setAttribute('class', 'sign-up-img') 
      blobImage.setAttribute('src', blob); 

      imageElement.appendChild(blobImage);
    }; 

    document.getElementById('user_image').addEventListener('change', (e) =>{
      const imageContent = document.querySelector('#sign-up-image > img');
      if (imageContent){
        imageContent.remove();
      }

      const file = e.target.files[0];  
      const blob = window.URL.createObjectURL(file); 
      createImageHTML(blob); 
    });
  });
}