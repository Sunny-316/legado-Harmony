@Component
export default struct BookMark {
  isBackground: boolean = true
  @Prop title:string
  @Prop currentIndex:number
  @Prop index:number

  build() {
    Column() {
      if (this.isBackground) {
        Text(this.title)
          .fontColor(this.currentIndex === this.index ? 'rgba(0, 0, 0, 1.00)' : 'rgba(0,0,0,0.5)')
          .fontSize(this.currentIndex === this.index ? 25 : 16)
          .fontWeight(this.currentIndex === this.index ? 700 : 500)
          .lineHeight(30)
          .zIndex(999)
          .backgroundImage(this.currentIndex === this.index ? $r('app.media.underline') : '')
          .backgroundImageSize(this.currentIndex === this.index ? { width: '100%', height: 15 } : {})
          .backgroundImagePosition(Alignment.Center)
          .animation({
            duration: 200,
          })
      } else {
        Text(this.title)
          .fontColor(this.currentIndex === this.index ? 'rgba(0, 0, 0, 1.00)' :  'rgba(0,0,0,0.5)')
          .fontSize(this.currentIndex === this.index ? 25 :  16)
          .fontWeight(this.currentIndex === this.index ? 700 : 500)
          .lineHeight(30).zIndex(999)
          .animation({
            duration: 200,
          })
      }
    }
    .margin(this.index !== 0 ? { left: 20 } : {
      left: 0,
      right: 0
    })
  }
}