# Page Capture

This is a Rails API project for saving and storing all the content from the H1, H2 and H3 header tags on a given URL.

### Functionality

A Post request to ```localhost:3000/api/v1/pages/``` with a JSON key => value pair in the body such as  ```{"url" : "https://en.wikipedia.org/wiki/Canada"}``` will initiate the scrape and save.

A Get request to ```localhost:3000/api/v1/pages/``` will provide an index of all saved data.

### Rules

URL link must start with ```http://``` or ```https://```.

### Testing

Rspec is used on this project for testing. Once you have cloned this repo, use console to navigate to the main ```page_capture``` folder and from there you can run command `rspec`.
