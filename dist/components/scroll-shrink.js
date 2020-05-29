class ScrollShrink extends HTMLElement {
    constructor() {
        super()

        this.attachShadow({ mode: 'open' })
            .innerHTML = '<slot></slot>'
    }

    connectedCallback() {
        this.style.transformOrigin = 'bottom'
        this.style.display = 'block'
        window.addEventListener('scroll', this.handleScroll.bind(this))
    }

    disconnectedCallback() {
        window.removeEventListener('scroll', this.handleScroll)
    }

    handleScroll() {
        const pos = this.offsetTop - window.pageYOffset + this.offsetHeight
        const transform = (pos < 200 && pos > -1) ? `scale(${pos / 200})` : null
        this.style.transform = transform
    }
}

customElements.define('dm-scroll-shrink', ScrollShrink)
