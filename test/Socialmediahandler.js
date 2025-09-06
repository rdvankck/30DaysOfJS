<script>
  let socialHandleCounter = 0;
  const addedPlatforms = new Set();
  function addSocialHandle(platform, platformName) {
    if (addedPlatforms.has(platform)) {
      return;
    }
    addedPlatforms.add(platform);
    socialHandleCounter++;
    const container = document.getElementById('socialHandlesContainer');
    const handleDiv = document.createElement('div');
    handleDiv.className = 'social-handle-item';
    handleDiv.id = `social-handle-${socialHandleCounter}`;
    handleDiv.innerHTML = `
<div class="social-handle-header">
<span class="social-platform-name">${platformName}
  </span>
<button type="button" class="remove-handle-btn" data-id="${socialHandleCounter}" data-platform="${platform}">×</button>
  </div>
<div class="social-handle-inputs">
<div>
<label class="form-label">Handle/Username</label>
<input type="text" class="form-control shadow" name="social_handle_${platform}"
placeholder="@username" onchange="checkText()">
  </div>
<div>
<label class="form-label">Profile URL (Optional)</label>
<input type="url" class="form-control shadow" name="social_url_${platform}"
placeholder="https://" onchange="checkText()">
  </div>
  </div>
`;
    container.appendChild(handleDiv);
    // Add event listener to the remove button
    const removeBtn = handleDiv.querySelector('.remove-handle-btn');
    const currentId = socialHandleCounter;
    // Capture current value
    removeBtn.addEventListener('click', function() {
      removeSocialHandle(currentId, platform);
    }
                              );
    checkText();
  }
  function removeSocialHandle(id, platform) {
    console.log('removeSocialHandle called:', id, platform);
    const handleElement = document.getElementById(`social-handle-${id}`);
    console.log('handleElement:', handleElement);
    if (handleElement) {
      handleElement.remove();
      addedPlatforms.delete(platform);
      checkText();
      console.log('Element removed successfully');
    }
    else {
      console.log('Element not found');
    }
  }
</script>
