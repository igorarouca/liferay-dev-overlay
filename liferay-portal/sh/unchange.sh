#!/bin/sh

set -o errexit ; set -o nounset

cd ${LIFERAY_PORTAL_DIR}

git update-index --assume-unchanged .classpath
git update-index --assume-unchanged .ivy/cache/--default.xml
git update-index --assume-unchanged portal-impl/test/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-billion-laughs.xml
git update-index --assume-unchanged portal-impl/test/unit/com/liferay/portal/security/xml/dependencies/xml-bomb-quadratic-blowup.xml
git update-index --assume-unchanged modules/apps/bookmarks/bookmarks-api/.classpath
git update-index --assume-unchanged modules/apps/bookmarks/bookmarks-test/.classpath
git update-index --assume-unchanged modules/apps/bookmarks/bookmarks-test/ivy.xml
git update-index --assume-unchanged modules/apps/dynamic-data-lists/dynamic-data-lists-test/.classpath
git update-index --assume-unchanged modules/apps/wiki/wiki-service/.classpath
git update-index --assume-unchanged modules/apps/wiki/wiki-test/.classpath
git update-index --assume-unchanged modules/apps/wiki/wiki-web/.classpath
git update-index --assume-unchanged modules/core/portal-bootstrap/.classpath
git update-index --assume-unchanged modules/core/registry-impl/.classpath
git update-index --assume-unchanged modules/portal/portal-search-elasticsearch/.classpath
git update-index --assume-unchanged modules/util/source-formatter/.classpath

cd ${LIFERAY_PLUGINS_DIR}

if [ -e "apps/content-targeting" ] 
then
	git update-index --assume-unchanged apps/content-targeting
fi
git update-index --assume-unchanged shared/solr4-shared/.classpath
git update-index --assume-unchanged shared/solr4-shared/lib/portal-compat-shared.jar
git update-index --assume-unchanged webs/solr4-web/.classpath