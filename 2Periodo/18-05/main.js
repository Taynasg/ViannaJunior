// setup canvas

const canvas = document.querySelector("canvas");
const ctx = canvas.getContext("2d");

const width = (canvas.width = window.innerWidth);
const height = (canvas.height = window.innerHeight);

// function to generate random number

function random(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

// function to generate random color

function randomRGB() {
  return `rgb(${random(0, 255)},${random(0, 255)},${random(0, 255)})`;
}

function Ball(x, y, velx, vely, size) {
  this.x = x
  this.y = y
  this.velx = velx
  this.vely = vely
  this.color = randomRGB()
  this.size = size
}

Ball.prototype.draw = function () {
  ctx.beginPath()
  ctx.fillStyle = this.color
  ctx.arc(this.x, this.y, this.size, 0, 2 * Math.PI)
  ctx.fill()
}


Ball.prototype.update = function () {
  if ((this.x - this.size) <= 0) {
    this.velx = this.velx * -1
  }

  if ((this.x + this.size) >= width) {
    this.velx = this.velx * -1
  }

  if ((this.y - this.size) <= 0) {
    this.vely = this.vely * -1
  }

  if ((this.y + this.size) >= width) {
    this.vely = this.vely * -1
  }

  this.x = this.x + this.velx
  this.y = this.y + this.vely
}

Ball.prototype.collisionDetect = function () {
  for (const ball of balls)
    if ((ball != this)) {
      dx = this.x - ball.x
      dy = this.y - ball.y
      distance = Math.sqrt(dx * dx + dy * dy)

      if (distance < (this.size + ball.size)) {
        this.velx *= -1
        this.vely *= -1
        ball.velx *= -1
        ball.vely *= -1
      }
    }
  }


let balls = []

while (balls.length < 25) {
  const size = random(10, 20)
  balls.push(
    new Ball(
      random(size, width - size),
      random(size, width - size),
      random(-7, 7),
      random(-7, 7),
      size
    )
  )
}

function loop() {
  ctx.fillStyle = 'rgba(0,0,0,.25)'
  ctx.fillRect(0, 0, width, height)
  for (const ball of balls) {
    ball.draw()
    ball.update()
    ball.collisionDetect()
  }

  requestAnimationFrame(loop)
}

loop()