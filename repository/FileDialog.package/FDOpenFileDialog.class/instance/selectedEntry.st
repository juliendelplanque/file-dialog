accessing
selectedEntry
	self isForMultipleSelection
		ifTrue: [ 
			self error: 'The widget is configured for multiple files selection, please use #selectedEntries instead.' ].
	
	^ filesList selectedItem