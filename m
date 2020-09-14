Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4051A268240
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Sep 2020 03:21:43 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2C3CA80816;
	Mon, 14 Sep 2020 03:21:42 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id EF683801A0
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Sep 2020 03:21:38 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1600046498;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OLSinFrBP18LxtMsfiiyxeQMiEWUetCu+0j/au6o6lA=;
	b=jNhkPx6VmPv7xxU2RZ/AbIYUnD9+J5HuMIo3rgpbkm4TZ8eb7beq6S2efYsTF1uxmk0aCf
	4meFC4aF3+U+7Lu0xKgZA4ybSV4Is+LKU9toTcruVUdg5hgKGlYsuhuySa+R7YozA+dTCx
	gIhCX5QpDAkU33Ys2Q1r43vlWSTgUu0ioGEfHpwE+7/G7xGzUMPUXCJ4CSYa/ENkr4K9D0
	ktnbRub4WWK97p5kJcvbn3Ly28ESgCOWuS4A9ReEmgG4mRVcf/fwG/QfQgl2WQe3A48uCM
	LbOLJZ2vVk8cJHsZ+BcUlB1tq2snwIqXNx5EjNhVlXmdrHH4WyxqQb1YSB5enQ==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint v3 0/3] batman-adv: mcast: BLA fixes
Date: Mon, 14 Sep 2020 03:21:33 +0200
Message-Id: <20200914012136.5278-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600046499;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=OLSinFrBP18LxtMsfiiyxeQMiEWUetCu+0j/au6o6lA=;
	b=13Sf4tF0Jdd4id1AmaExutdEYglbk7SwoBlbYCGmardvVou3HQqAieTaEtpOThoPmDou6t
	AEoOFwT2A0ypWjO6/uzxOc9fV3sKH6mFWGPipUiiKdtZeyb/8LWISRruka/nrxJnG/6U3a
	fiCt1r4blTkq8Yuh+URQQi/n+WW4pg8=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600046499; a=rsa-sha256;
	cv=none;
	b=2vPnTp4s+0OuODj63mABpHeCxkULe/xCAjozoDXcQ2B+plxNxhAZ26PJ3hTxw5ozWjixSj
	IIHbG0BknUL9Rj4YEu5lCZHQNJy+fR1/GM9DUkWqBz7O3R+HtCQodEniD+Y2WnXD69+4RQ
	apEWl6rqF6BrPdpcK+tG4Taugc8U72I=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=jNhkPx6V;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: ZKDS52WSUTY4DZ2ZH67ZNM7SKHK37JSW
X-Message-ID-Hash: ZKDS52WSUTY4DZ2ZH67ZNM7SKHK37JSW
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZKDS52WSUTY4DZ2ZH67ZNM7SKHK37JSW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

These are three fixes for issues which occur when using the batman-adv
multicast-to-unicast feature.

They fix issues when using the multicast-to-unicast conversion
while BLA is enabled and some nodes are sharing the same LAN side. Here
it either causes "just" duplicates in the "good" scenario (Patch 3/3).
But can also cause multiple BLA backbones to send a frame from the mesh
into the same, shared LAN segment (Patch 2/3). Or in the worst case, even
reflect packets back to the host in the shared LAN, which completely
confuses switches/bridges and ICMPv6 Neighbor Discovery (Patch 1/3).

Regards, Linus

---

Changelog v3:
* removed 1/4, as it was already applied
* renamed title (excluded TT, as already applied)

* Patch 1/3:
  - moved bla-backbone check into multicast code:
    -> to stay on the safe side for net, to touch less other code
       paths - the issue was observed specifically for multicast
       and the fix was tested for that
  - added a note regarding implications for mcast-fanout
* Patch 2/3:
  - previous approach was broken, it would break the DHCPv6 gateway
    code; instead distinguish by batadv 3 vs. 4 addr unicast header
  - added some more code comments
  - updated commit message with new approach
* Patch 3/3:
  - made code a bit more verbose and explicit
  - added some more code comments
  - added missing kernel doc for "orig" parameter to
    new batadv_bla_check_duplist()

Changelog v2:
* Adding "Fixes:" lines

