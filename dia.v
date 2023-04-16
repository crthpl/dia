fn main() {
	println("
	<style>
		@font-face {
			font-family: 'Adobe NotDef';
			src: url('/home/theo/Downloads/adobe-notdef-1.001/AND-Regular.ttf');
		}
		@import url('http://fonts.cdnfonts.com/css/menlo');
		body {
			font-family: Menlo, Adobe NotDef;
			font-display: block;
		}
	</style>")
	println('<p>')
	for i in 0x300 .. 0x370 {
		a := rune(i)
		print('U+${i:x}: ')
		for j in `a` .. `z` + 1 {
			b := rune(j)
			print('$b$a')
		}
		for j in `A` .. `Z` + 1 {
			b := rune(j)
			print('$b$a')
		}
		println('<br><br><br>')
	}
	println('</p>')
}
