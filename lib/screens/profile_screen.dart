<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Profile</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f4f4f4;
      margin: 0;
      padding: 40px;
    }

    .profile-container {
      max-width: 500px;
      margin: 0 auto;
      background: #fff;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    }

    h2 {
      text-align: center;
      color: #333;
    }

    label {
      display: block;
      margin-top: 20px;
      font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    textarea {
      width: 100%;
      padding: 10px;
      margin-top: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
      resize: vertical;
    }

    textarea {
      min-height: 80px;
    }

    button {
      margin-top: 25px;
      width: 100%;
      padding: 12px;
      background: #007BFF;
      color: white;
      border: none;
      font-size: 16px;
      border-radius: 4px;
      cursor: pointer;
    }

    button:hover {
      background: #0056b3;
    }

    .message {
