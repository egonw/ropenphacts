# Copyright (C) 2013  Egon Willighagen <egon.willighagen@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details. 
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

.packageName <- "ropenphactslibs"

require(rJava, quietly=TRUE)

.onLoad <- function(lib, pkg) {
    dlp<-Sys.getenv("DYLD_LIBRARY_PATH")
    if (dlp!="") { # for Mac OS X we need to remove X11 from lib-path
        Sys.setenv("DYLD_LIBRARY_PATH"=sub("/usr/X11R6/lib","",dlp))
    }

	jars = c(
		"commons-logging-1.1.3.jar",
        	"httpclient-4.2.5.jar",
        	"httpcore-4.2.4.jar",
		"commons-io-2.4.jar",
		"ops4j-0.0.3-SNAPSHOT.jar"
	)
	.jpackage(pkg, jars=jars)
}
