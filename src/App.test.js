const fs = require('fs');

const path = require('path');
 
const html = fs.readFileSync(path.resolve(__dirname, '../app.js'), 'utf8');
 
document.documentElement.innerHTML = html.toString();

test('hello world text', () => {
 
    const linkElement = document.querySelector('h2');
 
    expect(linkElement.textContent).toBe('Hello to Cody and the rest of the world out there!');

});