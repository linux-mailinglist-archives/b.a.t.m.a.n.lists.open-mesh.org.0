Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E7251635A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  1 May 2022 11:10:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D393F8237A;
	Sun,  1 May 2022 11:10:31 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3DE08805C1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  1 May 2022 11:10:29 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] alfred: notify event listener via unix socket
Date: Sun, 01 May 2022 11:10:13 +0200
Message-ID: <1831000.Ehg04xY5OU@rousseau>
In-Reply-To: <3246469.CvshgyVVUE@sven-l14>
References: <20220430105647.340588-1-mareklindner@neomailbox.ch> <3246469.CvshgyVVUE@sven-l14>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4033685.LUA7YngkGV"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1651396229; a=rsa-sha256;
	cv=none;
	b=wY0R86mOhfL6ZIpJppacFc/WwRZnyDnZI3Fz9X4eFQM/NaHA+LJbjRX3fp4R1K50NR0PXQ
	j/Sj0yvwgxymfmpEfPAUFlXfHMra829VaBgdwpId+m9t8AjB7QwDj0lJVIlAN2W1jKpvM0
	0YkpaltVKlqJ8t4AribE1ShpPs2uVho=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1651396229;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ZcX9sT3Vz7R/bnNC/Dhx98XTQtUF8RGTdiY3+P+44QU=;
	b=Q/LHqar+D2uw0tPogd3tCCWkVwUC6MqWHjU942Q2Vz97j0Lj6Z734Huh59D/2UL5BCGg6C
	muXwzWdGcam3+psHrfurRBhc2EA/g3GPSLCCJW4wI9lorqEgrrFkcrxKv4PiWbiver3EHv
	dBSArcfqxwpEsPyqqmQurxRnLLwmAfo=
Message-ID-Hash: BZYOXG5IQ52LV6FTWYLBUO7NQUK6HNUD
X-Message-ID-Hash: BZYOXG5IQ52LV6FTWYLBUO7NQUK6HNUD
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BZYOXG5IQ52LV6FTWYLBUO7NQUK6HNUD/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4033685.LUA7YngkGV
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] alfred: notify event listener via unix socket
Date: Sun, 01 May 2022 11:10:13 +0200
Message-ID: <1831000.Ehg04xY5OU@rousseau>
In-Reply-To: <3246469.CvshgyVVUE@sven-l14>
References: <20220430105647.340588-1-mareklindner@neomailbox.ch> <3246469.CvshgyVVUE@sven-l14>

On Sunday, 1 May 2022 09:54:26 CEST Sven Eckelmann wrote:
> >  	printf("\n");
> >  	printf("server mode options:\n");
> >  	printf("  -i, --interface                     specify the interface 
(or
> >  	comma separated list of interfaces) to listen on\n");> 
> > @@ -164,6 +165,7 @@ static struct globals *alfred_init(int argc, char
> > *argv[])> 
> >  		{"change-interface",	required_argument,	NULL,	
'I'},
> >  		{"change-bat-iface",	required_argument,	NULL,	
'B'},
> >  		{"server-status",	required_argument,	NULL,	'S'},
> > 
> > +		{"event-monitor",	required_argument,	NULL,	'E'},
> 
> Why does it require an argument but the usage doesn't describe the argument?

Copy & paste error from server-status which does not require an argument 
either. Might need to fix in a separate patch.


> I am wondering now if it could be interesting for the listener whether the
> data is from us or some remote (for example via the source mac). Does anyone
> else have an opinion about that?

Currently, no use-case comes to my mind.


> > +static void unix_sock_event_listener_free(struct event_listener
> > *listener)
> > +{
> > +	list_del_init(&listener->list);
> > +	close(listener->fd);
> > +	free(listener);
> 
> list_del_init has no benefit (only downsides) when you free the memory
> anyway at the end of the function

What are those downsides you are referring to ?

Thanks for the review!

Kind regards,
Marek Lindner

--nextPart4033685.LUA7YngkGV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmJuTnUACgkQU1VOj+62
HMCoCwf7Bnpx/gigx0kWVmV9vo8kZDtJgScWwY6usvc1F7ODM9FvDhj2gPwc5wFU
hPqPGYfXY7cSrxZ1ylNQH9ovYSy6GKocuu3WrIJv/dq9/hbzAgP/YIo1nIkgma3o
fgU9o8lGRzgsNQOsUVpn+uP97zPy2DM35ebE3AldoyHIL3PK4P/bWcsLVGnHXReh
oIRfR34F70o8FYmZZX2CvVusMrFAlOJRkcgFQ9j8q+ka8OBmMwjyuDYxbeVygcuF
SgQ+xF6OQxrmKi3g/Wp5sJeaTpMfypYI1DnNWIsVfRow5Nltc6dAHb6dmm9QSdzz
fDI3FABGzLZKJFxWn7+DNW4s8SFRkg==
=HVa3
-----END PGP SIGNATURE-----

--nextPart4033685.LUA7YngkGV--


