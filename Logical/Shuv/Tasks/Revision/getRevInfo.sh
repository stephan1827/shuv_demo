#!/bin/sh
# The following line should be put into the pre-build step of any configuration that should run this script
# "$(AS_PROJECT_PATH)\Logical\Documentation\getRevInfo.sh" "$(AS_PROJECT_PATH)\Logical\Documentation" "${AS_CONFIGURATION}" "${AS_USER_NAME}"
# This script will update the revision and build information

# $1 = Path to script
# $2 = Configuration being built
# $3 = User who built configuration

cd  "$1" 

cat > RevInfo.var << EOF
(* RevInfo.var 2.0.0 *)
VAR CONSTANT
	revision : STRING[80] := '$(git describe --always --tags)';
	revisionDate : STRING[80] := '$(git show -s --date=default --pretty=format:%ci)';
	revisionAuthor : STRING[80] := '$(git show -s --pretty=format:%an)';
	branchName : STRING[80] := '$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')';
	uncommittedChanges : STRING[80] := '$(git diff --shortstat)';
	buildDate  : STRING[80] := '$(date +"%Y-%m-%d %H:%M:%S %z")';
	buildConfiguration : STRING[80] := '$2';
	builder : STRING[80] := '$3';
	versionId : STRING[80] := '$(git describe --always --tags)';
END_VAR
EOF

# Example implementation of RevInfo program:
#
# RevInfo/Variables.var:
#
# VAR RETAIN
# 	download : BOOL;
# END_VAR
# VAR
# 	dataOK : BOOL;
# 	reboot : BOOL;
#	i : UINT := 0;
# 	tempString : STRING[160];
# END_VAR
#
# RevInfo/Main.st:
#
# PROGRAM _INIT
#
# 	// Log revision information
#	//---------------------------------------------------------------
#	
#	logInfo('App', 0, '************ RevInfo Start ************', 0);
#
# 	// revision
# 	brsmemset(ADR(tempString), 0, SIZEOF(tempString));
# 	tempString := 'Revision: ';
# 	brsstrcat(ADR(tempString), ADR(revision));
# 	logInfo('App', 0, tempString, 0);
#
# 	// revisionDate
# 	brsmemset(ADR(tempString), 0, SIZEOF(tempString));
# 	tempString := 'Commit Date: ';
# 	brsstrcat(ADR(tempString), ADR(revisionDate));
# 	logInfo('App', 0, tempString, 0);
#
# 	// revisionAuthor
# 	brsmemset(ADR(tempString), 0, SIZEOF(tempString));
# 	tempString := 'Author: ';
# 	brsstrcat(ADR(tempString), ADR(revisionAuthor));
# 	logInfo('App', 0, tempString, 0);
#
#	// branchName
#	brsmemset(ADR(tempString), 0, SIZEOF(tempString));
#	tempString := 'Branch Name: ';
#	brsstrcat(ADR(tempString), ADR(branchName));
#	logInfo('App', 0, tempString, 0);
#
# 	// uncommittedChanges
# 	brsmemset(ADR(tempString), 0, SIZEOF(tempString));
# 	tempString := 'Uncommitted Changes: ';
# 	brsstrcat(ADR(tempString), ADR(uncommittedChanges));
# 	logInfo('App', 0, tempString, 0);
#
# 	// buildDate
# 	brsmemset(ADR(tempString), 0, SIZEOF(tempString));
# 	tempString := 'Build Date: ';
# 	brsstrcat(ADR(tempString), ADR(buildDate));
# 	logInfo('App', 0, tempString, 0);
#
# 	// buildConfiguration
# 	brsmemset(ADR(tempString), 0, SIZEOF(tempString));
# 	tempString := 'Configuration: ';
# 	brsstrcat(ADR(tempString), ADR(buildConfiguration));
# 	logInfo('App', 0, tempString, 0);
#
# 	// builder
# 	brsmemset(ADR(tempString), 0, SIZEOF(tempString));
# 	tempString := 'Builder: ';
# 	brsstrcat(ADR(tempString), ADR(builder));
# 	logInfo('App', 0, tempString, 0);
#
# 	logInfo('App', 0, '************ RevInfo End ************', 0);
#	
# END_PROGRAM
#
#
# PROGRAM _CYCLIC
#	
#	// Detect an AS transfer
# 	IF NOT download THEN
# 		download := TRUE;
# 		brsmemset(ADR(gDataValid), 0, SIZEOF(gDataValid));
# 		MessageBox_AddMsg(ADR('Download may have caused data loss. Please reboot to reload. If this was the first boot after a download, you may reset DataValid to maintain data.'), ADR('Reboot'), ADR(reboot), ADR('RESET DataValid'), ADR(dataOK));
# 	END_IF	
#	
# 	IF dataOK THEN	
# 		dataOK := FALSE;
#		FOR i := 0 TO SIZEOF(gDataValid)/SIZEOF(gDataValid[0]) - 1 BY 1 DO
#			gDataValid[i] := 1;
#		END_FOR
# 	END_IF
#	
# 	IF reboot THEN
# 		SYSreset(1,1);
# 	END_IF
#	
# END_PROGRAM