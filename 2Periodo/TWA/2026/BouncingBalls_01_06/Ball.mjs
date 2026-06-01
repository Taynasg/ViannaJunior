import { Shape } from "./Shape.mjs"
import { randomRGB } from "./Utils.mjs"
import { width,height } from "./Utils.mjs"

class Ball extends Shape {
    constructor(ctx, x, y, velX, velY, size) {
        super(x, y, velX, velY)
        this.color = randomRGB()
        this.size = size
        this.ctx = ctx
    }

    draw() {
        this.ctx.beginPath()
        this.ctx.fillStyle = this.color
        this.ctx.arc(this.x, this.y, this.size, 0, 2 * Math.PI)
        this.ctx.fill()
    }

    update() {

        if ((this.x - this.size) <= 0) {
            this.velX = this.velX * -1
        }

        if ((this.x + this.size) >= width) {
            this.velX = this.velX * -1
        }

        if ((this.y - this.size) <= 0) {
            this.velY = this.velY * -1
        }

        if ((this.y + this.size) >= height) {
            this.velY = this.velY * -1
        }

        this.x = this.x + this.velX
        this.y = this.y + this.velY
    }

    collisionDetect(balls) {
        for (const ball of balls) {
            if ((ball != this) && (ball.exists)) {
                const dx = this.x - ball.x
                const dy = this.y - ball.y
                const distance = Math.sqrt(dx * dx + dy * dy)

                if (distance < (this.size + ball.size)) {
                    this.velX *= -1
                    this.velY *= -1
                    ball.velX *= -1
                    ball.velY *= -1
                }

            }

        }
    }
}



export {Ball}
