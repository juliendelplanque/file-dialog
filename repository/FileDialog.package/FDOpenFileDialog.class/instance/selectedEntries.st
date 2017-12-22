accessing
selectedEntries
	self isForSingleSelection
		ifTrue: [ 
			self error: 'The widget is configured for single files selection, please use #selectedEntry instead.' ].
	
	^ filesList selectedItems