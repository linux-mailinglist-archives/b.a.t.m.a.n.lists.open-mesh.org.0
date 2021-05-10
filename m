Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC6337908D
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 May 2021 16:22:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6EF2683EDE;
	Mon, 10 May 2021 16:22:35 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5752780595
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 May 2021 16:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1620656552;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QDsz+X7tcdTfGT7/m/c6mKGEikE6XBTYfuUKbcffCzQ=;
	b=g94ZIAgLQJcicjBGfr5Nz765RpOczR4vtcfau0hJsBA8Xurg1C7k5vrralb4orCwgRFt5u
	iCNLong433lPC8mVaccnu4TpCusiWt8QBrAd3dgBJI6FPiecR4z8ePjfRLmeNiGyR+9jYS
	G3JUhqYcAosCZ8u3KVxTfbGtF7CVxcs=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2 2/2] batctl: Add JSON debug commands
Date: Mon, 10 May 2021 16:22:21 +0200
Message-ID: <2573355.sAYfyd1srq@ripper>
In-Reply-To: <8402068.deHtlMXeMU@ripper>
References: <62326514.53yIySlcTU@sven-l14> <20210510075826.12523.26721@diktynna.open-mesh.org> <8402068.deHtlMXeMU@ripper>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2360567.FcV7eagA4t"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1620656552; a=rsa-sha256;
	cv=none;
	b=FTxhC/3pwnz2hBvYBEu0X7/RQ548a+yJ2BcQADmEtArZoy67NvRRgIMXxQCoYQbIKs0Sub
	Gdd6m6/L/J8W9ob7EJrw0zE4iWr/U97Xtcb8ByeGyVGmQyBBvSLkFYbUM97nbptMUtyHk+
	ruFvT6VySjhwPE5QCx/F/Llc6bF4Uxg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=g94ZIAgL;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620656552;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=QDsz+X7tcdTfGT7/m/c6mKGEikE6XBTYfuUKbcffCzQ=;
	b=pjJPieE8rq0jFy0d0B/QBsnS0jNV8ggiRbNgyrwG7yCkr0H9FMG2XglWUX2lkwlj1k/JUo
	65cfT80Xce6ZJ6Ox1raGrCE7dFJh6CExbTxfFBNZPdJ3vbZI8t0ik6pZLcMGSLBMMjQ8xj
	WS9Zcxagoi3HyXutJbPr/1IKMl6X+vw=
Message-ID-Hash: W25NHXN56FA2VKRCDZROU32BPTBTVRGK
X-Message-ID-Hash: W25NHXN56FA2VKRCDZROU32BPTBTVRGK
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: asarmanow@gmail.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/W25NHXN56FA2VKRCDZROU32BPTBTVRGK/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2360567.FcV7eagA4t
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: asarmanow@gmail.com
Subject: Re: [PATCH v2 2/2] batctl: Add JSON debug commands
Date: Mon, 10 May 2021 16:22:21 +0200
Message-ID: <2573355.sAYfyd1srq@ripper>
In-Reply-To: <8402068.deHtlMXeMU@ripper>
References: <62326514.53yIySlcTU@sven-l14> <20210510075826.12523.26721@diktynna.open-mesh.org> <8402068.deHtlMXeMU@ripper>

On Monday, 10 May 2021 12:14:10 CEST Sven Eckelmann wrote:
>     void sanitize_string(const char *str)
>     {
>            while (*str) {
>                    if (*str == '"')
>                            puts("\"");
>                    else if (*str == '\\')
>                            puts("\\\\");
>                    else if (!isprint(*str))
>                            printf("\\x%02x", *str);
>                    else
>                            putc(*str);
> 
>                    str++;
>           }
>    }

Should have tested this. It should be more like:

    void sanitize_string(const char *str)
    {
    	while (*str) {
    		if (*str == '"' || *str == '\\') {
    			putchar('\\');
    			putchar(*str);
    		} else if (!isprint(*str)) {
    			printf("\\x%02x", *str);
    		} else {
    			putchar(*str);
    		}
    	}
    }

Kind regards,
	Sven
--nextPart2360567.FcV7eagA4t
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmCZQZ0ACgkQXYcKB8Em
e0ZgThAAioRAb6Wk4Idf9nQ+2AUaEacMfafOIn/haui0XgAiacDm5y7F36xmEFzy
gCLu3yxf2ZTmA9w5SO17RyMSvn9RFWMNImRulGe3xVxhCquE2Tky3y8SrLgC9Lv/
j9W5qz/CxS1rz09v8ee64HR32qfHuhC4+MaiMXKnc0Q9SV4/eHBdXPLQdvnJlEP6
TR5Q8dSDOLLQSaMYt5R1hK1si+ShgpaNJRHuwlHAHBp32+DrKdP0WZiTxramNQTB
YRaakLW0dX4FRRJAsikn75rMZryZHD+z/vmFIdmqbO4MzGFqqsKgcRnJm/1bK3s2
23TjoU5Wrzd2Or8RzAcAUkWXjYw5rCo84SIzUTsw5xhy44dctteaDj1LuADuQLMT
q5he1q0VWV+htSZ8xrUtDRT0rNzWgfXFLT0kwZ4sIM3lSpJFggf9XLLhVxyeS/AW
w5eEVZifDs9XDJF5WxtBQN5CUR3c26kf39xujklVurOvkt/GiXUYO/kAHsx6bTpW
n7rL2l0uqYmyiDKZvzYL+2XDp1TJaCbs9ICTtXOaze5S1hV08uX4HdHYX+8aZXiW
td9Dwy16Dnk38rJaJZuhAQmNm+2kjyAXUNegeWLgRGsMGsyBbO8P0k1QsR8ncc+J
uAMCyO2XPfrZT9F+I5tIoNQ9bfEs5xoivJO+XG8AQvbZR1YbWNA=
=C8Rr
-----END PGP SIGNATURE-----

--nextPart2360567.FcV7eagA4t--


