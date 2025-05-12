const wrapper = document.createElement('div')

const studioProHeader = document.createElement('h1')
studioProHeader.textContent = 'Mendix Studio Pro Extension';

const helloParagraph = document.createElement('p');
helloParagraph.textContent = 'Hello from a pure JS extension!';

wrapper.append(studioProHeader, helloParagraph);

const root = document.getElementById("root");
root.append(wrapper);
