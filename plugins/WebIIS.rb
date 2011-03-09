##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "WebIIS" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-03-10
version "0.1"
description "WebIIS - Mini ASP Web Server [Chinese]"

# ShodanHQ results as at 2010-03-10 #
# 933 for WebIIS: Mini ASP Web WebIIS
# Most (931) results are from China

# Examples #
examples %w|
116.207.210.251
222.88.75.37
123.165.84.110
123.189.48.76
123.146.137.107
110.244.103.37
|

# Passive #
def passive
	m=[]

	# HTTP WebIIS Header
	m << { :string=>"ASP" } if @meta["webiis"] =~ /^Mini ASP Web WebIIS$/

	# Return passive matches
	m
end

end

