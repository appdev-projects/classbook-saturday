# Classbook

In this project, we'll create our very first HTML page; a profile of ourselves. 

## Setup

 1. Unlike our usual workflow, don't fork to make your own copy. Create a Gitpod workspace based on this (my) repository.
 1. Then do the usual things; wait for the setup to complete, then `bin/server` and visit the homepage of your running application to make sure it worked.

## Structure with HTML

### Raw Content

We'll start by getting the raw content into the page, and ignore styling for now. There should be a link on the homepage of your app that says "Raghu Betina (first target)"; click on it. Your first goal will be to build a page like that, but with your own content instead of mine.

 1. Choose a URL for your page and define a route.
 1. Inside the action, we're going to do something new: rather than `render({ :plain => "hello" })`,

    ```ruby
    render({ :template => "people/hello_world.html" })
    ```

 1. Find the `app/views` folder and within it create a subfolder called `people`.
 1. Within the new `people` subfolder, create a file called `hello_world.html`.
 1. To honor an ancient tradition, first type `<h1>Hello, world!</h1>`.
 1. Visit the URL that you chose. Voila — your first HTML page!
 1. Type in your own content:
  - Your name
  - Where you're from
  - Some of your app ideas
  - Some of your prior experience (jobs, education), and your LinkedIn URL
  - The address of yourfavorite nearby haunt (coffee shop or restaurant or pub)

### Add Semantic Markup

Next, let's tag our content to let the browser know what each thing is. Useful HTML elements include:

 - Headings: `<h1>`, `<h2>`, ... , `<h6>`
 - Paragraph: `<p>`
 - Unordered list: `<ul>`
 - Ordered list: `<ol>`
 - List item: `<li>`
 - Link: `<a href="http://www.addressofsomepage.com/whatever">`

### Add Images

Let's add some images to the page:

 - A profile photo (you can grab a fake one from [UIFaces](http://uifaces.com/authorized))
 - A cover photo (you can grab a stock one from [Stock Up](http://www.sitebuilderreport.com/stock-up))
 - A few of your photos (you can grab fakes ones from [Stock Up](http://www.sitebuilderreport.com/stock-up))

Save the images into the `public/` folder.

 - `[first name]-[last-initial]-profile.jpg`
 - `[first name]-[last-initial]-cover.png`
 - `[first name]-[last-initial]-1.png`
 - `[first name]-[last-initial]-2.jpg`
 - `[first name]-[last-initial]-3.png`
 - `[first name]-[last-initial]-4.jpg`

Then, add them into your document using the `img` tag:

```html
<img src="/whatever.jpg">
```

Or, if it's located somewhere out on the internet rather than in our own `public/` folder:

```html
<img src="http://www.somewhere.com/whatever.jpg">
```

### Tables

Let's put your experience data into a table. In HTML, the `<table>` element is used to represent two dimensional data. A simple table looks like this:

```html
<table>
  <tr>
    <td>First</td>
    <td>Last</td>
  </tr>
  <tr>
    <td>John</td>
    <td>Doe</td>
  </tr>
  <tr>
    <td>Jane</td>
    <td>Doe</td>
  </tr>
</table>
```

which would produce this:

<table>
  <tr>
    <td>First</td>
    <td>Last</td>
  </tr>
  <tr>
    <td>John</td>
    <td>Doe</td>
  </tr>
  <tr>
    <td>Jane</td>
    <td>Doe</td>
  </tr>
</table>

The things to keep in mind about tables are:

 - Every piece of data must reside within a cell, a `<td>` (table data) element.
 - Every `<td>` element must reside within a row, a `<tr>` element.
 - Every `<tr>` must have the same number of cells, or things get out of whack.

Despite this last rule, you can, however, "merge" cells using the `colspan` attribute:

```html
<table>
  <tr>
    <td colspan="2">People</td>
  </tr>
  <tr>
    <td>John</td>
    <td>Doe</td>
  </tr>
  <tr>
    <td>Jane</td>
    <td>Doe</td>
  </tr>
</table>
```

produces:

<table>
  <tr>
    <td colspan="2">People</td>
  </tr>
  <tr>
    <td>John</td>
    <td>Doe</td>
  </tr>
  <tr>
    <td>Jane</td>
    <td>Doe</td>
  </tr>
</table>

You can see that we've merged two cells in the first row together; the `colspan="2"` on the first cell ensures that we don't violate the "every `<tr>` must have the same number of cells" rule.

**Your task:** Try to create a "What I've Done" section similar to [the one you see here](http://appdevspring16.github.io/friendbook/intermediate.html).

### Embedding Objects

 - Add a Google Map of your favorite nearby haunt
 - Add a YouTube video that you like

## Styling with CSS

Now that we have our content showing up, and we've added some basic structure with HTML, it's time to customize the styling of the page.

The basic syntax of CSS looks like this:

```html
<h1 class="greeting">Hi there</h1>

<style>
  .greeting {
    font-size: 24px;
    color: darkgrey;
  }
</style>
```

The rest is just practice, and expanding our vocabulary of what CSS properties are available to us.

Below are some resources that might be helpful as we go along:

 - [Google Web Fonts](https://www.google.com/fonts)
 - Google Web Font showcases: [Beautiful Web Type](http://hellohappy.org/beautiful-web-type) and [Typographic Project](http://femmebot.github.io/google-type/)

 - Hero unit with cover image:

```css
.top-cover {
  background: url("cover.jpg") no-repeat center bottom;
  background-size: cover;
  height: 300px;
}
```

- [Material-Design](https://www.google.com/design/spec/material-design/introduction.html)-style box shadow:

```css
.some-thing {
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.2s ease-in-out;
}

.some-thing:hover {
  box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
}
```

- [HTML5 Element List](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)

- An abbreviated list of other useful CSS properties and example values:

```css
/* Typography */

color: orange;
font-family: 'Playfair Display', serif;
font-size: 18px;
font-weight: bold;
letter-spacing: 0.4em;
line-height: 1.86;
text-align: center;
text-decoration: none;
text-transform: uppercase;

/* Box Model */

border-color: rgb(240, 240, 240);
border-style: solid;
border-width: 5px;
border: thick white solid;
height: 200px;
margin: auto;
padding-bottom: 20px;
padding-left: 20px;
padding-right: 20px;
padding: 20px;
width: 100%;

/* Table */

border-spacing: 10px;
vertical-align: top;

/* Other */

background-color: rgba(0, 0, 0, 0.5)
box-shadow: 0 1px 3px rgba(0,0,0,0.12);
list-style-type: square;
```

