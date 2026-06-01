import { Ball } from "./Ball.mjs";
import  EvilCircle  from "./EvilCircle.mjs";
import { width, height,random } from "./Utils.mjs";

// setup canvas

const canvas = document.querySelector("canvas");
const ctx = canvas.getContext("2d");

canvas.width = width;
canvas.height = height;



let balls = []

let count = 25

while (balls.length < count) {
  const size = random(5, 15)
  balls.push(
    new Ball(
      ctx,
      random(size, width - size),
      random(size, height - size),
      random(-7, 7),
      random(-7, 7),
      size
    )
  )
}

let evilCircle = new EvilCircle(ctx, random(0, width), random(0, height))
evilCircle.setControls()

function loop() {
  ctx.fillStyle = 'rgba(0,0,0,.25)'
  ctx.fillRect(0, 0, width, height)

  for (const ball of balls) {
    if (ball.exists) {
      ball.draw(ctx)
      ball.update()
      ball.collisionDetect(balls)
    }
  }

  evilCircle.checkBounds()
  evilCircle.draw(ctx)
  evilCircle.collisionDetect(balls,count)

  requestAnimationFrame(loop)
}

loop()