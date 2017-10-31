#!/bin/bash
echo "checking file $1"
if [[ $(cat $1 | aspell list -t -d en_GB -p ./.aspell.en.pws | wc -l) -eq 0 ]]
then
  exit 0
else
  echo "spellcheck of $1 failed due to:"
  cat $1 | aspell list -t -d en_GB -p ./.aspell.en.pws | tee -a spelling-mistakes.txt
  exit 1
fi

# lb-aspell, my addition of aspell to the LHCb document template
# Copyright (C) 2017  Paul Seyfert <pseyfert@cern.ch>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.

# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
