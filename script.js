function positionText() {
  const overlayText = document.getElementById('overlay-text');
  const image = document.getElementById('stretch-image');
  const rect = image.getBoundingClientRect();
  overlayText.style.left = `${rect.left + rect.width / 2}px`; // Adjust this to position the text over the black square
  overlayText.style.top = `${rect.top + rect.height / 2}px`; // Adjust this to position the text over the black square
}

// Initial positioning
positionText();

// Re-position on window resize
window.onresize = positionText;

