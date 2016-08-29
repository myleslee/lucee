<cfscript>
source = expandPath("content.html");
target = expandPath("content.pdf");
cfexecute(name="wkhtmltopdf", arguments="#source# #target#", errorVariable="err");
dump(err);
</cfscript>

