if (document.URL.match(/new/)){
  document.addEventListener('DOMContentLoaded', () => {
    const createImageHTML = (blob) => {  
      const imageElement = document.getElementById('new-image'); 
      const blobImage = document.createElement('img'); 
      blobImage.setAttribute('class', 'new-img') 
      blobImage.setAttribute('src', blob); 

      imageElement.appendChild(blobImage);
    }; 

    document.getElementById('favorite_thing_image').addEventListener('change', (e) =>{
      const imageContent = document.querySelector('#new-image > img');
      if (imageContent){
        imageContent.remove();
      }

      const file = e.target.files[0];  
      const blob = window.URL.createObjectURL(file); 
      createImageHTML(blob); 
    });
  });
}