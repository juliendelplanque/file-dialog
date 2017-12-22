initialization
initializeFilesList
	super initializeFilesList.
	
	self filesList
		whenSelectedItemChanged: [ :entry | 
			(entry isNotNil and: [ self filesList selectedItems size = 1 ])
				ifTrue:[ 
					entry isDirectory
						ifTrue: [ self openFolder: entry ]
						ifFalse: [ self selectFile: entry ] ] ];
		whenSelectionChanged: [ 
			|selected|
			selected := (self filesList selectedItems ifNil: [ #() ]) reject: #isNil.  "wraping around spec bugs"
			(self isForMultipleSelection
				and: [ selected size > 1
					and: [ selected noneSatisfy: #isDirectory ] ])
				ifTrue: [ self selectFiles: selected ] ].