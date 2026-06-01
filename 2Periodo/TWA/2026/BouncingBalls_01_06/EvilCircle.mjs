import { Shape } from "./Shape.mjs"
import { width,height } from "./Utils.mjs"

class EvilCircle extends Shape {
    constructor(x, y) {
        super(x, y, 20, 20)
        this.size = 10
        this.color = 'white'
    }

    draw(ctx) {
       ctx.beginPath()
       ctx.strokeStyle = this.color
       ctx.arc(this.x, this.y, this.size, 0, 2 * Math.PI)
       ctx.lineWidth = 3
       ctx.stroke()
    }

    checkBounds() {
        if ((this.x - this.size) <= 0) {
            this.x += this.size
        }

        if ((this.x + this.size) >= width) {
            this.x -= this.size
        }

        if ((this.y - this.size) <= 0) {
            this.y += this.size
        }

        if ((this.y + this.size) >= height) {
            this.y -= this.size
        }
    }

    setControls() {
        var _this = this
        window.onkeydown = function (e) {
            if (e.key === 'a') {
                _this.x -= _this.velX
            }

            if (e.key === 'd') {
                _this.x += _this.velX
            }

            if (e.key === 'w') {
                _this.y -= _this.velY
            }

            if (e.key === 's') {
                _this.y += _this.velY
            }
        }
    }

    collisionDetect(balls) {
        for (const ball of balls) {
            if (ball.exists) {
                const dx = this.x - ball.x
                const dy = this.y - ball.y
                const distance = Math.sqrt(dx * dx + dy * dy)

                if (distance < (this.size + ball.size)) {
                    if (ball.size < this.size) {
                        ball.exists = false
                        this.size += ball.size
                        count--
                        if (count == 0) {
                            alert("Você ganhou!")
                            window.location.reload()

                        }
                    } else {
                        alert("Você perdeu!")
                        window.location.reload()
                    }
                }
            }
        }
    }
}



export default EvilCircle




