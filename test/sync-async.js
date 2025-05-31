// --- Assume these functions are pre-defined ---

async function getUserData(userId) {

    return new Promise((resolve, reject) => {
    
    setTimeout(() => {
    if (userId === 1) {
     console.log(`(Simulating fetch) User data fetched for ID: ${userId}`);
     resolve({ id: userId, name: "Alice Wonderland", email: "alice@example.com" });
    } else if (userId === 2) {
     console.log(`(Simulating fetch) User data fetched for ID: ${userId}`);
     resolve({ id: userId, name: "Bob The Builder", email: "bob@example.com" });
    }
    else {
     reject(`Error: User with ID ${userId} not found.`);
    }
     700); // Simulate network delay
     });
    
    }
    
    
    
    async function getUserPosts(userId) {
    
    return new Promise((resolve, reject) => {
    
     setTimeout(() => {
        if (userId === 1) { // Alice has posts
         console.log(`(Simulating fetch) Posts fetched for user ID: ${userId}`);
         resolve([
         { postId: 101, title: "My First Adventure" },
          { postId: 102, title: "Exploring Wonderland" }
         ]);
        } else if (userId === 2) { // Bob has no posts
         console.log(`(Simulating fetch) Posts fetched for user ID: ${userId} (no posts found)`);
         resolve([]); // Resolve with an empty array if no posts
        } else {
         // This case might not be reached if getUserData already rejected for this userId
         reject(`Error: Could not fetch posts for user ID ${userId}.`);
        }
        }, 900); // Simulate network delay
       });
    
    }
    
    // --- End of pre-defined functions ---
    
    
    
    // TODO: Implement the async function displayUserProfileAndPosts(userId) below
    
    async function displayUserProfileAndPosts(userId) {
    
        try {
            // Wait for the fetchUserProfile Promise to resolve, then assign its value to 'user'.
            const user = await getUserData(userId);
            console.log("User Name (async/await):", user.name); // user.name would be "Ali Veli"
        
            // If we had another asynchronous operation:
            // const userPosts = await fetchUserPosts(user.id);
            // console.log("User posts:", userPosts);
        
          } catch (error) {
            // If fetchUserProfile (or fetchUserPosts, if it existed) rejects, this block will run.
            // 'error' could be "Kullanıcı bulunamadı."
            console.error("Error (async/await):", error);
          } finally {
            console.log("User display attempt finished (async/await).");
          }
    }
    

    // Example calls to test your function (you can uncomment them):

    console.log("Test case 1 (ID!)")
    displayUserProfileAndPosts(1);      

    console.log("Test case 2 (ID 2)")
    displayUserProfileAndPosts(2);

    console.log("Test case 3 (ID 3)")
    displayUserProfileAndPosts(3);


    // Alternative way to implement the function:
   async function displayUserProfileAndPosts(userId) {
      try {
        // 1. Get user data by awaiting the promise from getUserData
        const userData = await getUserData(userId);
    
        // 2. Get user posts by awaiting the promise from getUserPosts
        // We can use userData.id or directly userId if our mock getUserPosts uses userId
        const posts = await getUserPosts(userData.id); 
    
        // 3. Log the user's name and the number of posts
        console.log(`User: ${userData.name}, Posts: ${posts.length}`);
    
      } catch (error) {
        // 4. Log the error message (the 'error' variable holds the value from reject())
        console.error(`Error fetching data: ${error}`);
      } finally {
        // 5. Log the completion message, including the userId
        console.log(`Fetching process for user ${userId} completed.`);
      }
    }
    