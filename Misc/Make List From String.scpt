JsOsaDAS1.001.00bplist00�Vscript_se = Application('System Events')
se.includeStandardAdditions = true;

function splitText(text, delimiter) {
	if(delimiter.toLowerCase() == "newline" || delimiter.toLowerCase() == "nl") {
		splitList = text.split("\n")
	} else {
		splitList = text.split(delimiter)
	}
	
	returnText = ""
	
	for(i = 0; i < splitList.length; i++) {
		itemStr = '\"' + splitList[i].trim() + '\", '
		if(itemStr != '\"\", ') {
			returnText += itemStr;
		}
	}
	
	return returnText.substring(0, returnText.length - 2)
}

storeClipboard = se.theClipboard()

output = se.displayDialog("Input string: ", {defaultAnswer: ""})
delimiterString = se.displayDialog("Input delimiter: ", {defaultAnswer: ","})

formattedList = splitText(output.textReturned, delimiterString.textReturned)
se.setTheClipboardTo(formattedList)

                              / jscr  ��ޭ