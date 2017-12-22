actions
confirm
	self isForSingleSelection
		ifTrue: [ ^ super confirm ].
		
	self selectedEntries
		ifNotNil: [ :entry | 
			onConfirmBlock value: entry.
			self delete ]