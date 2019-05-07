Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3F516719
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  7 May 2019 17:45:14 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 28B5281D2D;
	Tue,  7 May 2019 17:45:11 +0200 (CEST)
Received: from v3-1039.vlinux.de (narfation.org [79.140.41.39])
 by open-mesh.org (Postfix) with ESMTPS id 8BFEB805F4
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  7 May 2019 17:45:08 +0200 (CEST)
Received: from bentobox.localnet (unknown [IPv6:2001:16b8:553e:edf2::505])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id B8C3B1100E8;
 Tue,  7 May 2019 17:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1557243908; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=jqkAg2CjekKXaWv2Rw/Q1PM+8nchOm9ehI2IHvrHj60=;
 b=yTGi/nmfBWQ7xP7WiGY4m/pxbGGwMzf8JLk9iWYgPWnZIsgkV1KEDyvuvBBdKOOYUM8VcH
 XpqNUGHHEvf7Pduw3joguWpDpG6SKwGl4C9x7o6aKC3NVnQ6vTO6IMR+ya9B8Acm2cdF+c
 paoeb2yGa+WgbVy6jsr/ZvqMaowagxw=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2] batman-adv: Introduce no noflood mark
Date: Tue, 07 May 2019 17:45:04 +0200
Message-ID: <8751913.vGonOqSknk@bentobox>
In-Reply-To: <20190507151723.GB1493@otheros>
References: <20190507072821.8147-1-linus.luessing@c0d3.blue>
 <1895475.8kFdyZb9vl@bentobox> <20190507151723.GB1493@otheros>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart8953029.KQddNnn0Kf";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1557243908;
 h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=jqkAg2CjekKXaWv2Rw/Q1PM+8nchOm9ehI2IHvrHj60=;
 b=c46pK8gvK1bDqCc/fPr4QUowmeUmdKJ5qMGT1oPABI4c+JJOzRaQfwn1ZWjli7ETJ87P66
 z4XlS1MofwUqq5BsmQFcu04ndk+ZEd1QBIJ7r1oVCtFFT5u8N53tzuuqso5or6OXKb7LBZ
 LMych+HiiII2cCYJaUAto4DU60pilW0=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1557243908; a=rsa-sha256; cv=none;
 b=zCI2iOU9XOxYD+URzz+AcrIkJAkZc0q6YwJngT+xPBCvmUda2qOq0TcSGodA7N01jvTHl6
 L2SF+eREtWzNngJIgMI639Qe9R/1wXzZLHmtvEOOirBa1/RAEU7h5mjetU6FZeE2mEN+z+
 icAw9s6FjFBNW5iN1GOGSKgzu00WtFo=
ARC-Authentication-Results: i=1; v3-1039.vlinux.de;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Marek Lindner <mareklindner@neomailbox.ch>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart8953029.KQddNnn0Kf
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday, 7 May 2019 17:17:23 CEST Linus L=FCssing wrote:
> Ah, that's an interesting idea. So basically filtering on the
> hardif instead of in batman-adv via some custom compiled BPF
> filters. So basically similar to writing a small program like the
> gluon-radv-filterd with a BPF_* parser?
>=20
> https://github.com/freifunk-gluon/gluon/blob/master/package/gluon-radv-fi=
lterd/src/gluon-radv-filterd.c#L223

Yes, but you don't have to write the stuff with these intrinsics and cBPF.
This was done in gluon-radv-filterd only to avoid extra dependencies to=20
build the program for this really minimal piece of code.
And I didn't had much benefits from using eBPF at the moment [1].

You can just write it in C and use clang to create (e)BPF bytecode as=20
described in http://man7.org/linux/man-pages/man8/tc-bpf.8.html

Kind regards,
	Sven

[1] https://github.com/freifunk-gluon/gluon/pull/838#issuecomment-355547594
--nextPart8953029.KQddNnn0Kf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzRqAAACgkQXYcKB8Em
e0ZdgQ/+I78xbh5yNkM5edrJuJNyYNbuDd9tLyTqc7+nyllD8vZ/QcOJNsuk+Y7e
uJcPD2ZgWFOnCHOyIAZBPPBLEhHS0+0UrXNJjWN3jH+dZCaKSJXI63upJn+CXd4t
oOVxRnAi/psvqqUxe2KyiAJ3nRZKtcPOTAUrkvhkRylfGCSzlk7hZJ/xUOnxwENS
WuORcowh3b/wm9q2lvOk81f0EeHdhfmkXf4wE6RCPx/rovgZKiNUOpSeZVEyuDR+
S6ox61ULqVwVgRu9p3PAoXNUiLwJv1UiQkeL8DxCwCVX2WA+OuYoFNF4SFyh5VoU
bV3TBHiSxQj2ljdlJX4TaOna/d8CwuBr1W24JebA3ZKjbgRmbuZECbyRJ9hkHwjr
lfFF3zGRUjrW9BcymprUk+cR4Dw86YvPbcnZwcyD7GzeSK1Y1L3RYyFakhY8Sbaf
YQ1CXZwZ4rf2a6w0dytJHj0+44YGcIJ4D7kOgjDOrzNvR+phYJ9WREJzUFObGkXv
JUJ2Fx0zS4vwPYhX9ysRLqueUxs+FS/CBEHiV78PLoMQNSXRMcVTZt5cGa4IvOwi
qmIruktyqb9zjaOHjKtJweAlgD0WJk8G77RFJ1dPBcE8U5T7mPlT8+E4dW7KFThS
J4tXkoSqiim840AVZriPB1UkRprYVTrrLML/b1ChPZ/w0w50XrU=
=WI+W
-----END PGP SIGNATURE-----

--nextPart8953029.KQddNnn0Kf--



