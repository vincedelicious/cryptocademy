import { Controller } from "@hotwired/stimulus";
import swal from "sweetalert";

// Connects to data-controller="quiz"
export default class extends Controller {
  static targets = [
    "questions",
    "choices",
    "progressText",
    "score",
    "progressBarFull",
    "info",
    "userLessonId"
  ];

  connect() {
    this.currentQuestion = {};
    this.acceptingAnswers = true;
    this.score = 0;
    this.questionCounter = 0;
    this.availableQuestions = [];

    this.questions = JSON.parse(this.infoTarget.innerText);

    this.points = 50;
    this.max_questions = this.questions.length;

    this.startGame();
  }

  startGame(e) {
    this.questionCounter = 0;
    this.score = 0;
    this.availableQuestions = this.questions;
    this.getNewQuestions();
  }

  getNewQuestions() {
    if (this.availableQuestions.length != 0) {
      this.questionCounter++;
      this.progressTextTarget.innerText = `Question ${this.questionCounter} of ${this.max_questions}`;
      this.progressBarFullTarget.style.width = `${(this.questionCounter / this.max_questions) * 100
        }%`;

      this.questionsIndex = 0;

      this.currentQuestion = this.availableQuestions[this.questionsIndex];
      this.questionsTarget.innerText = this.currentQuestion.question;

      this.choicesTargets.forEach((choice) => {
        this.number = choice.dataset["number"];
        choice.innerText = this.currentQuestion["choice" + this.number];
      });
      this.availableQuestions.splice(this.questionsIndex, 1);
      this.acceptingAnswers = true;
    } else {
      console.log("here");
      this.url = `/user_lessons/${this.userLessonIdTarget.innerText}/add_points`;
      fetch(this.url, {
        method: "PATCH"
      }).then((e) => {
        swal("Quiz Completed!", "Return to lessons.", "success").then(
          function () {
            window.location = "/lessons";
          }
        );
      });
    }
  }

  checkAnswer(e) {
    if (!this.acceptingAnswers) return;

    this.acceptingAnswers = false;
    this.selectedChoice = e.target;
    this.selectedAnswer =
      this.selectedChoice.querySelector(".choice-text-quiz").dataset["number"];
    this.classToApply =
      this.selectedAnswer == this.currentQuestion.answer
        ? "correct-quiz"
        : "incorrect-quiz";

    if (this.classToApply === "correct-quiz") {
      this.incrementScore(this.points);
    }

    this.selectedChoice.classList.add(this.classToApply);

    setTimeout(() => {
      this.selectedChoice.classList.remove(this.classToApply);
      this.getNewQuestions();
    }, 1000);
  }

  incrementScore(num) {
    this.score += num;
    this.scoreTarget.innerText = this.score;
  }
}
