actions
selectFiles: aFileList
	self filesList selectedItems = aFileList
		ifFalse: [ self filesList resetSelection ].
	nameText text: ((aFileList collect: #basename) joinUsing: ',')