const host = 'https://online-quiz-webservice.herokuapp.com';
// const host = 'http://localhost:8080';
const endpoint = '/api/v1/topic/all';

const guiEndpoint = '/gui'

let url = host + endpoint;
const method = 'GET';

const linkUrl = '/api/v1/question/';

const numOfQueions = '7';

var request = new XMLHttpRequest();
request.open(method, url, true);

let topicDTOs = undefined;
let topics = undefined;
let tags = undefined;

request.onload = function() {
    topicDTOs = JSON.parse(this.response);
    console.log('Request status: ' + request.status);
    if (request.status >= 200 && request.status < 400) {
        topics = topicDTOs.map(element => {
            return element.fullName;
        });
        tags = topicDTOs.map(element => {
            return element.tag;
        })
        fillDropDown();
    } else {
        alert('Failed to load data');
    }
}


function fillDropDown() {
    var parent = document.getElementById("drop-down");

    for (var i = 0; i < topics.length; i++) {
        var optionText = topics[i];
        var curTag = tags[i];
        var el = document.createElement("option");

        var li_item = document.createElement("li");

        var link = document.createElement("a");
        link.textContent = optionText;
        link.href = host + guiEndpoint + '/' + curTag;

        li_item.appendChild(link);
        parent.appendChild(li_item);
    }
}

request.send();