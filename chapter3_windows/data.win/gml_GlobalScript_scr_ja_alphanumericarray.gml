function scr_ja_alphanumericarray() {
	var alphanumericarray = ["ア", "イ", "ウ", "エ", "オ", "カ", "キ", "ク", "ケ", "コ", "ガ", "ギ", "グ", "ゲ", "ゴ", "サ", "シ", "ス", "セ", "ソ", "ザ", "ジ", "ズ", "ゼ", "ゾ", "タ", "チ", "ツ", "テ", "ト", "ダ", "ヂ", "ヅ", "デ", "ド", "ナ", "ニ", "ヌ", "ネ", "ノ", "ハ", "ヒ", "フ", "ヘ", "ホ", "バ", "ビ", "ブ", "ベ", "ボ", "パ", "ピ", "プ", "ペ", "ポ", "マ", "ミ", "ム", "メ", "モ", "ヤ", "ユ", "ヨ", "ラ", "リ", "ル", "レ", "ロ", "ワ", "ヲ", "ン"];
	return alphanumericarray;
}

function scr_ja_alphanumericarray_check(arg0 = "ア") {
	var found = -4;
	var _alphanumericarray = scr_ja_alphanumericarray();
	
	for (var i = 0; i < array_length(_alphanumericarray); i++) {
		if (arg0 == _alphanumericarray[i]) {
			found = i;
			break;
		}
	}
	
	return found;
}
