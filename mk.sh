#!/bin/sh
bin_path=`dirname $0`
cd $bin_path
find */LC_MESSAGES/messages.po | xargs -I{} sh -c 'cd `dirname {}`; msgfmt messages.po; cd ../..'

