Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E79209E3B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 25 Jun 2020 14:14:23 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E14AC80912;
	Thu, 25 Jun 2020 14:14:21 +0200 (CEST)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 322428034B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 14:14:19 +0200 (CEST)
Received: by mail-lf1-x135.google.com with SMTP id k15so3082374lfc.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 25 Jun 2020 05:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=h/0E63yWPGEHsFel4WgvhUsEuB+N9obVUOlVdfBwrmM=;
        b=NVYC5hTeER8CZTSTZ7EPDBEYQSD9pGvUlSy9pHiGBG9oWdCjVlZPJgFE0wvVW4B+Dw
         kmRN5MNbOuEm+d4/h64V5q9Ag1cBTHP/ztZ4d5oWyPv+XdHNiHnhl0E8h3sTFed62cIb
         BG16Trj7kXj7qtba26BeDPYpuzZU69cmyBs2sJeP+n599RqGv8so9QBODb4UX3FkwQlu
         Q52CuKQ5SzwRy6aLXDga0DqZ6XePxyIyfz53eK1U3SWOE41YW5TV2Zy8lLO5G4xV6KOX
         wPrxmrtYthq0/vg8xjucsiEfNmz6xEnWlLhhAQ3NoQh741rOpnNAcwvzqZrpoZLMyp2m
         BQUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=h/0E63yWPGEHsFel4WgvhUsEuB+N9obVUOlVdfBwrmM=;
        b=P7q+CgtQ8WjgRhH0jFx479GGq+G7aq3EqZfzrKm5advPFBYUlCIJvKpMXxvf7WBjZO
         LS7bEKv0dg1wS8eKYB7cDMDMR6oPB8JFRVXOH9rXCDKk9/LnFlk9GL8J5scfKmpM+rFc
         1EQyfxW3HdHeopWz3aLwES4bvpLuVxP7xG9Ix7V54yJ0ublGj9PZ9kPwUHLJq7+4QomF
         bg1QWnaQTnW/DQnydAnAAiDJVBRUwlUqYucRXbexighRgE3+QY0eoXVYB5JUIqc8d7bP
         MCu7xKIeklbhzdxjTqA0AqVfn49mh554pRPx5OClg0jQIT6hA0RJNTPBv8KAlwk95Cjf
         uSxQ==
X-Gm-Message-State: AOAM530n/B8QhE1KHodqm6GqqEfudPyqcOh32CjD85qnzw8VYmPWofvf
	7LVb+DXhgJcnNogvmTBSC+t4hO+aCCx0Gyw9o2aYXQ5Q1g8=
X-Google-Smtp-Source: ABdhPJxyH2ifcJfhWsmz1hJ2ZZQW9A3kJ8cEhH3aySI9hTfzX7NUyPvUxhJvqeYOdxi6/d2fma9Ob03+hzyiuTlRpgE=
X-Received: by 2002:ac2:4295:: with SMTP id m21mr13711560lfh.186.1593087257978;
 Thu, 25 Jun 2020 05:14:17 -0700 (PDT)
MIME-Version: 1.0
From: Mark Birss <markbirss@gmail.com>
Date: Thu, 25 Jun 2020 14:14:06 +0200
Message-ID: <CADg1mwL-H_PULsXqVb0r58k0_zkAYWTOm=cM5QZrDoqRxKqdLw@mail.gmail.com>
Subject: Batman-adv Tweaking - bonding
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593087259;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=h/0E63yWPGEHsFel4WgvhUsEuB+N9obVUOlVdfBwrmM=;
	b=w4zyyi7YiDudCJrOJn/ueRu194HsFWZjfi/SQqWDW8OUD+Yi4AWAF0R43D8yMTc0lk6/qW
	2KKSjToQ9RoUe6MPZLDiKEPFgl+n7JeDY6ScATuwDvcXLJZwtxRuEcmypX3o24fyIhj27O
	KtBUtWnFCJYta2ep4Wft6VUEnD2Xb9o=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593087259; a=rsa-sha256;
	cv=none;
	b=Xx/VCiv/u3hDZkcXZMHo4L0+p7SKdYDZJ/QkOHKYn2U0GlXy++xzJdDss8mXGfnhB4li08
	49eDi3HWQOsFEXGTk1p0/FAZPr7wwTu/g1vldZIEhOQEIr5IuLyY5MY80UXfFT3nEOzLIo
	YsdD3zg8GrwpQTaZTN54SVY2gKVi1pQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=NVYC5hTe;
	spf=pass (diktynna.open-mesh.org: domain of markbirss@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=markbirss@gmail.com
Message-ID-Hash: BBXNWDSYANKLH7BC6FLCBHAB33BOEYDO
X-Message-ID-Hash: BBXNWDSYANKLH7BC6FLCBHAB33BOEYDO
X-MailFrom: markbirss@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BBXNWDSYANKLH7BC6FLCBHAB33BOEYDO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi

With reference to the wiki topic at
https://www.open-mesh.org/projects/batman-adv/wiki/Tweaking
bonding

Available since: batman-adv 2010.1.0

When running the mesh over multiple WiFi interfaces per node
batman-adv is capable of optimizing the traffic flow to gain maximum
performance. Per default it operates in the "interface alternating"
mode (which is suitable for most situations) that switches the WiFi
interface with each hop to avoid store & forward. Alternatively,
batman-adv can be switched into "bonding mode" in which batman-adv is
using all interfaces at the same time to send & receive data. However,
this mode is only recommended in special one-hop cases. You can read
about our alternatebonding test results to see what suits you best.


The wiki shows that this is the only change required on both nodes to
use it in default interface alternating mode

batctl meshif bat0 bonding enabled

The wiki does not say how the throughput was measured after bonding was enabled

Will batctl tp be ok?

Regards
