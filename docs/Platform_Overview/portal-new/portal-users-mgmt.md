---
title: Portal Users Management
description: Portal Users Management for Administrators
tags:
    - portal
---

## Overview
This guide is for customers who have an administrator role. These customers are able to manage users in their organisation, including creating new users, modifying existing users' accesses, and deleting users.

### Getting into the administration console
1. [Log in](./portal-login.md) to the Portal with your account that has administration privileges.
   
2. On the left sidebar, click the **People** tab.
   
   ![People tab](./assets/users-mgmt-1.png)

3. A new tab will open that takes you to the administration console.

    ![Admin console](./assets/users-mgmt-2.png)

### Adding A New User
1. Click **Users**.

    ![Users tab](./assets/users-mgmt-3.png)

1. The **Users** page will open, with a list of users and some controls. Click the **Add user** button.

    ![Add user](./assets/users-mgmt-4.png)

1. The website will navigate to the **Create user** screen.

1. Set any **required user actions** you want the new user to perform using the dropdown menu.
  
   - 'Verify email' sends an email to the user to verify their email address. 
   - 'Update profile' requires user to enter in new personal information. 
   - 'Update password' requires user to enter in a new password. 
   - 'Configure OTP' requires setup of a mobile password generator.

    ![Required user actions](./assets/users-mgmt-req-actions.png)
    ![Required user actions](./assets/users-mgmt-req-actions-2.png)

 1. Enter the new user's email into the **Email** field. Please note this email must not already belong to a Portal user.

    ![Email](./assets/users-mgmt-new-email.png)

1. Choose whether the new account's email is verified. Selecting **No** will force the user to verify their email when they first log in.

    ![Email verified](./assets/users-mgmt-email-verified.png)

1. Enter the new user's **First** and **Last names**.

    ![First and Last names](./assets/users-mgmt-first-last-name.png)

1. The Groups section covers VCD permissions. Please refer to [this]() section for more information.

1. Click **Create**.

    ![Create](./assets/users-mgmt-new-user-create.png)

1. The new user will have been created and the website will navigate to that user's details page.

&nbsp;

### Editing a User's Details
#### Getting to the User Details page
1. Click **Users**.

    ![Users tab](./assets/users-mgmt-3.png)

1. The **Users** page will open, with a list of users and some controls. Click the username of the user you wish to edit.

    ![Select user](./assets/users-mgmt-select-user.png)

1. The website will navigate to that user's details page.

#### Change personal details
1. Once on the [user's details page](#getting-to-the-user-details-page), to change **required actions, email, email verified status, First name and Last name**, enter the new details in the relevant fields of this page and press **Save**.

    ![Edit user details](./assets/edit-user-details.png)

1. A toast will pop up informing you of the successful operation.

    ![Successful new password](./assets/users-mgmt-edit-details-success.png)

#### Change password
1. To change a user's **password**, click the **Credentials** tab.

    ![Credentials tab](./assets/users-mgmt-credentials-tab.png)

2. Click **Reset password**.

    ![Reset password](./assets/users-mgmt-reset-password.png)

3. Type the user's new password in the **Password** and **New password confirmation** input fields.

    ![New password](./assets/users-mgmt-new-password.png)

4. By default, the **Temporary** toggle is on. Leaving this as **On** will force the user to reset their password upon logging in with the new password you have set in the step above.

    ![Temporary toggle](./assets/users-mgmt-temporary.png)

5. Click **Save**.

    ![Save](./assets/users-mgmt-save-new-password.png)

6. A confirmation dialog will pop up. To proceed, click **Reset password**.

    ![Reset password](./assets/users-mgmt-reset-password-confirm.png)

7. A toast will pop up informing you of the successful operation.

    ![Successful new password](./assets/users-mgmt-password-reset-success.png)