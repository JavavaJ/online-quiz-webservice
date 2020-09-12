const url = 'http://localhost:8080/api/v1/question/articles/7';
const get = 'GET';

let quizData = undefined;

var request = new XMLHttpRequest();
request.open(get, url, true);

request.onload = function() {
    quizData = JSON.parse(this.response);
    console.log('Request status: ' + request.status);
    if (request.status >= 200 && request.status < 400) {
        loadQuiz();
    } else {
        alert('Failed to load data');
    }
}

// const quizData = [
//     {
//         "question": "The capital of France",
//         "a": "Rome",
//         "b": "Moscow",
//         "c": "Paris",
//         "d": "Prague",
//         "rightAn": "c"
//     },
//     {
//         "question": "Brazilians speak ",
//         "a": "Italian",
//         "b": "Portugese",
//         "c": "French",
//         "d": "Spanish",
//         "rightAn": "b"
//     }
// ]

const quiz = document.getElementById("quiz");
const answersOptions = document.querySelectorAll(".answer"); // radio buttons

const questionEl = document.getElementById('question');
const a_text = document.getElementById('a_text');
const b_text = document.getElementById('b_text');
const c_text = document.getElementById('c_text');
const d_text = document.getElementById('d_text');

const submitBtn = document.getElementById('submit');

let currentQuiz = 0;
let score = 0;

// loadQuiz();

function loadQuiz() {
    deselectAnswers();
    const currentQuizData = quizData[currentQuiz];

    questionEl.innerText = currentQuizData.question;
    a_text.innerText = currentQuizData.a;
    b_text.innerText = currentQuizData.b;
    c_text.innerText = currentQuizData.c;
    d_text.innerText = currentQuizData.d;
}

function getSelected() {
    let answer = undefined;

    answersOptions.forEach(answerOption => {
        if (answerOption.checked) {
            answer = answerOption.id;
        }
    });

    return answer;
}

function deselectAnswers() {
    answersOptions.forEach(answerEl => {
        if (answerEl.checked) {
            answerEl.checked = false;
        }
    });
}

submitBtn.addEventListener('click', () => {
    const answer = getSelected();

    console.log(answer);

    if (answer) {
        if (answer === quizData[currentQuiz].rightAn) {
            score++;
        }

        currentQuiz++;
        if (currentQuiz < quizData.length) {
            loadQuiz();
        } else {
            quiz.innerHTML = `<h2>You answered correctly ${score}/${quizData.length} questions.</h2>
            
            <button onclick="location.reload()">Reload</button>`
        }
    }
})

request.send();