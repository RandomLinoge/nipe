#!/usr/bin/perl

#########################################################
# Nipe developed by Heitor Gouvêa                       #
# This work is licensed under MIT License               #
# Copyright (c) 2015-2017 Heitor Gouvêa                 #
#                                                       #
# [+] AUTOR:        Heitor Gouvêa                       #
# [+] EMAIL:        hgouvea@protonmail.com              #
# [+] SITE:         http://heitorgouvea.me              #
# [+] GITHUB:       https://github.com/GouveaHeitor     #
# [+] TWITTER:      https://twitter.com/GouveaHeitor    #
# [+] FACEBOOK:     https://fb.com/GouveaHeitor         #
# [+] TELEGRAM:     @GouveaHeitor                       #
#########################################################

package Nipe::Device;

my $operationalSystem = `cat /etc/os-release | grep 'ID' | cut -d '=' -f 2`;

sub getUsername {
	my $username;

	if ($operationalSystem =~ /[U,u]buntu/) {
		$username = "debian-tor";
	}

	elsif ($operationalSystem =~ /[D,d]ebian/) {
		$username = "debian-tor";
	}

	elsif ($operationalSystem =~ /[F,f]edora/) {
		$username = "toranon";
	}

	elsif ($operationalSystem =~ /[A,a]rch/) {
		$username = "tor";
	}

	else {
		$username = "tor";
	}

	return $username;
}

1;
