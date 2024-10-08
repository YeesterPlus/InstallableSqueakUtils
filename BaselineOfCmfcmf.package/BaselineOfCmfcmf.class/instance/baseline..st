baseline
baseline: spec
<baseline>
	spec for: #'common' do: [
		spec
			project: 'FFI' with: [
				spec
					className: 'ConfigurationOfFFI';
					repository: 'https://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository';
					versionString: (SystemVersion current isAlpha
						ifTrue: [#development]
						ifFalse: [#stable]);
					loads: #('Core')];
			package: 'Icons' with: [
				spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'];
			package: 'Cmfcmf-ToolBuilder';
			package: 'Cmfcmf-WinFFI' with: [spec requires: #('FFI')];
			package: 'Cmfcmf-Utils' with: [spec requires: #('Cmfcmf-WinFFI' 'Cmfcmf-ToolBuilder' 'Icons')].
		spec
			group: 'default' with: #('Cmfcmf-Utils');
			group: 'toolbuilder' with: #('Cmfcmf-ToolBuilder');
			group: 'winffi' with: #('Cmfcmf-WinFFI');
			yourself];    
	yourself
