Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E68C4516285
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  1 May 2022 09:54:37 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C9DB080E79;
	Sun,  1 May 2022 09:54:36 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4CCB880705
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  1 May 2022 09:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1651391672;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GHvmsR81zG6k7nyKqQ6sEHzqoUnE9vGqqOeQtwuzmCk=;
	b=MqWJAsdtWGwmMefD8v7QfRGBAXUsOzFRt3aI2gpvi8B/Pr9X9SChnOvELHnXaMQSx/3ecN
	KU3C5oYHm3PrXjkoXFSdbfP2cDXJNXBMg7/5U4P87w6baaTOwPf4uFkmqkJgmxghEz8iDu
	1TJDZ6/UstKe2vsabPpt/7/Ck8Oet4s=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] alfred: notify event listener via unix socket
Date: Sun, 01 May 2022 09:54:26 +0200
Message-ID: <3246469.CvshgyVVUE@sven-l14>
In-Reply-To: <20220430105647.340588-1-mareklindner@neomailbox.ch>
References: <20220430105647.340588-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2884461.XNjEgDIyLQ"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1651391673; a=rsa-sha256;
	cv=none;
	b=xPgJKtMoeD0Eteq+8c3iHfMlyJtfbFTHfdhc9mdM1nPjvZ9/Qa69lhBs650DiNRkvDdrUE
	HoCgu3g95tTiWORHvzpyTDyTi8SgAkdIVp84Xw6a3OLq9zj4RcgfZp5yOfQtLyrhR1YNeJ
	78xcT1hR1m9lW56McviAMMZaX7MuEEA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=MqWJAsdt;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1651391673;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=GHvmsR81zG6k7nyKqQ6sEHzqoUnE9vGqqOeQtwuzmCk=;
	b=L6uqDcBJ2k1gH/ZOEcWNQBHwJ/p8FkL0xs/aVkH0pIoBO2aihNN4fV3HTRXgQis9SQAOEY
	cQ4I+LCo9cO3nhkXaeQBaWj+EO3YwTgxCdPO20jrPzIOVs4pPV3eTPZUC4f6ixQZTEHGf1
	vlzGC/ypTZV8SlARouMa5YOb/EXiKlo=
Message-ID-Hash: 5QAL3IFWZJG3LW377N2N22VX45G3BRB3
X-Message-ID-Hash: 5QAL3IFWZJG3LW377N2N22VX45G3BRB3
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5QAL3IFWZJG3LW377N2N22VX45G3BRB3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2884461.XNjEgDIyLQ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH] alfred: notify event listener via unix socket
Date: Sun, 01 May 2022 09:54:26 +0200
Message-ID: <3246469.CvshgyVVUE@sven-l14>
In-Reply-To: <20220430105647.340588-1-mareklindner@neomailbox.ch>
References: <20220430105647.340588-1-mareklindner@neomailbox.ch>

On Saturday, 30 April 2022 12:56:47 CEST Marek Lindner wrote:
> The alfred server instance accepts event notification registration
> via the unix socket. These notification sockets only inform
> registered parties of the availibility of an alfred datatype change.

availability


> +int alfred_client_event_monitor(struct globals *globals)
> +{
[...]
> +		fprintf(stdout, "Event: type = %d\n", event_notify.type);

event_notify.type is unsigned and not signed.


> diff --git a/main.c b/main.c
> index 68d6efd..98bf64d 100644
> --- a/main.c
> +++ b/main.c
> @@ -39,6 +39,7 @@ static void alfred_usage(void)
>  	printf("  -I, --change-interface [interface]  change to the specified interface(s)\n");
>  	printf("  -B, --change-bat-iface [interface]  change to the specified batman-adv interface\n");
>  	printf("  -S, --server-status                 request server status info such as mode & interfaces\n");
> +	printf("  -E, --event-monitor                 monitor alfred data record update eventss\n");

events

>  	printf("\n");
>  	printf("server mode options:\n");
>  	printf("  -i, --interface                     specify the interface (or comma separated list of interfaces) to listen on\n");
> @@ -164,6 +165,7 @@ static struct globals *alfred_init(int argc, char *argv[])
>  		{"change-interface",	required_argument,	NULL,	'I'},
>  		{"change-bat-iface",	required_argument,	NULL,	'B'},
>  		{"server-status",	required_argument,	NULL,	'S'},
> +		{"event-monitor",	required_argument,	NULL,	'E'},


Why does it require an argument but the usage doesn't describe the argument? 
See also getopt_long which also doesn't expect an argument


> @@ -138,10 +140,17 @@ static int unix_sock_add_data(struct globals *globals,
>  			free(dataset);
>  			goto err;
>  		}
> +		new_entry_created = true;
>  	}
>  	dataset->data_source = SOURCE_LOCAL;
>  	clock_gettime(CLOCK_MONOTONIC, &dataset->last_seen);
>  
> +	/* check that data was changed */
> +	if (new_entry_created ||
> +	    dataset->data.header.length != data_len ||
> +	    memcmp(dataset->buf, data->data, data_len) != 0)
> +		unix_sock_event_notify(globals, data->header.type);
> +

I am wondering now if it could be interesting for the listener whether the 
data is from us or some remote (for example via the source mac). Does anyone 
else have an opinion about that?




> +static int unix_sock_register_listener(struct globals *globals, int client_sock)
> +{
> +	struct event_listener *listener;
> +	int ret;
> +
> +	ret = fcntl(client_sock, F_GETFL, 0);
> +	if (ret < 0) {
> +		perror("failed to get file status flags");
> +		goto err;
> +	}
> +
> +	ret = fcntl(client_sock, F_SETFL, ret | O_NONBLOCK);
> +	if (ret < 0) {
> +		perror("failed to set file status flags");
> +		goto err;
> +	}
> +
> +	listener = malloc(sizeof(*listener));
> +	if (!listener)
> +		goto err;
> +
> +	listener->fd = client_sock;
> +	INIT_LIST_HEAD(&listener->list);
> +	list_add_tail(&listener->list, &globals->event_listeners);

INIT_LIST_HEAD (of the prev/next pointer) is not necessary when you just 
overwrite the next/prev pointer in the next line via list_add_tail

> +
> +static void unix_sock_event_listener_free(struct event_listener *listener)
> +{
> +	list_del_init(&listener->list);
> +	close(listener->fd);
> +	free(listener);

list_del_init has no benefit (only downsides) when you free the memory anyway 
at the end of the function


> +int unix_sock_events_select_prepare(struct globals *globals, fd_set *fds,
> +				    fd_set *errfds, int maxsock)
> +{
> +	struct event_listener *listener;
> +
> +	list_for_each_entry(listener, &globals->event_listeners, list) {
> +		if (listener->fd < 0)
> +			continue;
> +
> +		FD_SET(listener->fd, fds);
> +		FD_SET(listener->fd, errfds);
> +
> +		if (maxsock < listener->fd)
> +			maxsock = listener->fd;
> +	}
> +
> +	return maxsock;
> +}

I should really rewrite the socket mainloop using epoll.... but this is just a 
side note and not a problem in your patch.

Kind regards,
	Sven
--nextPart2884461.XNjEgDIyLQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmJuPLIACgkQXYcKB8Em
e0YE2w/+OuzbG95KeZ+rGKz+/JsHl3qwJZjlt7MWNoorBNUG8CXata8kJHcT9x8S
9mfUbalzzLnqncyYd7nzcJTx++gHe10PCTOgtUqAh76erD6GqnzvE013/1pryAD9
YjyiAtczIVfCkIibtFb9HIOW/8BgY7QUSkUZDSg9gDosq/JClVhiJtuNJHDM5NI1
/JgxGluCktIoWgT1iqwr6p6kN4MOlV2EbrtBN/jtub3BXHc5TLOPNyQis04hix+s
7sHTdr6Ll8LJ5auYSoN96jaEI5iWzs2Mmvtt0xcDjsyT8VJvBep5jSLNbsKyec6S
XJZlxIAN/gwHMh9j04IjJ+p0VXHKLEqOSMVpExn8V+WGk16z8WipNsL/1hBY3raI
5x8YklJAc4cV2klubI6Z40zbs6M114+WBNJuguRvS0kyL5rAt59YIawYdXGHVb9L
kpld/N8pLw2CBln3rJqKolzm7cRgtiT17VuwQqDK8y8KB0QhD+ULmQpS2SXB/+3C
H7Il7gU2ZI8c9E2nGZy5cHAsK2JvrYnMtHlHqSsOxXEzelihVv4PpA6maCUuuxIw
N3sRVQn8S7LLQzGRqmur4pwrn7kdYnCROnbqBI+wT5QvfOq+/2OibrhsChUCx44k
FYRHXa/ojy50vQ6hefM0avmEaRtq2MXyKbKRftgMvDa2DgbTfkI=
=nxxw
-----END PGP SIGNATURE-----

--nextPart2884461.XNjEgDIyLQ--


