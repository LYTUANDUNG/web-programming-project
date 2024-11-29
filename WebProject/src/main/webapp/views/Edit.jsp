<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Profile</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/EditStyle.css">

</head>
<body>
  <div class="form-container">
    <h1>
      <span class="underline">Up</span>pdate Profile
    </h1>
    <form>
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" id="name" placeholder="Enter your name" />
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" placeholder="Enter your password" />
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" placeholder="Enter your email" />
      </div>
      <div class="form-group">
        <label for="phonenumber">Phone Number</label>
        <input type="text" id="phonenumber" placeholder="Enter your phone number" />
      </div>
      <div class="form-group">
        <label for="birthday">Birthday</label>
        <input type="date" id="birthday" />
      </div>
      <div class="form-group">
        <label for="address">Address</label>
        <input type="text" id="address" placeholder="Enter your address" />
      </div>
      <div class="button-container">
        <button type="submit" class="btn update-btn">Update</button>
        <button type="button" class="btn exit-btn">Thoát</button>
      </div>
    </form>
  </div>
</body>
</html>
