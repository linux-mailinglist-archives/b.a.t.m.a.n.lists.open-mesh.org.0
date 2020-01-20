Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id E47C11432E3
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 20 Jan 2020 21:26:07 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 3A5C180760;
	Mon, 20 Jan 2020 21:26:00 +0100 (CET)
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by open-mesh.org (Postfix) with ESMTPS id 25BB480049
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 20 Jan 2020 18:44:13 +0100 (CET)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00KHcUYX053676;
 Mon, 20 Jan 2020 17:42:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=nsNYTKOD1G7P8637WPTXpEBWnVeiNPIbkuT9jeXT0js=;
 b=oJLiW6I6rOgABwklmW9RSbDKKN73DmHgvRle4GX4iIdpR9TRi2WhOeKw3EeFIF8A8Okc
 vtYm178GxljrTMcuf/SEsEY10tbUxSYvDtC8DpOLslO/imbqvXyMzTVmnh2ZuK+H1F6W
 NGpcF2+hs2tNEb0o6ZoVF09knBVEp8h4Vu93EIM6FyxP5F79psmdFsN9VszA7Ynw2ch5
 btcTrqx+lnTHCATaSCGxm2FwR7qI0PR1qcB688PPPQ66WLz4o+Gykfy/stmom5dZExzx
 5BkpQL+7X6JjVfmR7yTW1Yz6AhkRkFUhCM0PZ+YENpackQC55jxv0bApXUOsS7jJ0XuA 5Q== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2xkseu8vmq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Jan 2020 17:42:50 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00KHcveQ161458;
 Mon, 20 Jan 2020 17:42:50 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2xmbg8syfn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Jan 2020 17:42:50 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00KHgMnn028408;
 Mon, 20 Jan 2020 17:42:25 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 20 Jan 2020 09:42:22 -0800
Date: Mon, 20 Jan 2020 20:46:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ip_ext_cleanup
Message-ID: <20200120174615.GE21151@kadam>
References: <000000000000bdb5b2059c865f5c@google.com>
 <000000000000c795fa059c884c21@google.com>
 <20200120131930.pbhbsrm4bk4lq3d7@wittgenstein>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200120131930.pbhbsrm4bk4lq3d7@wittgenstein>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9506
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001200149
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9506
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001200149
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1579542254;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=nsNYTKOD1G7P8637WPTXpEBWnVeiNPIbkuT9jeXT0js=;
 b=cWe6mHFY4IlDmIYRCJBOuBhwffBEVx6t8lBxtQ323Y/PbvDL8ScLD1RVBdCxjqvOPwl+qo
 CMVRyV6Zu+B6QscJ69lcukxkR/ZxMrixhMXEVAxFV4oY2vqT8OQEV3atnwkyt3aT9YspnT
 v/1sxLEdvPltFSJ92EJ13KzlDVCb+OM=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579542254; a=rsa-sha256; cv=none;
 b=r1AoH/+QE2LXk9oTUD8Xn30nWevOIYua63Qp9nRcilPDv8DDtIz3jWzyH4B1hDZ28aTpKT
 fxcNoaoPJV4bJO5kKi73J/BS/8k6k5+fUaCngklbf+6rXftaZJPqqKWhDyjSOPXmceS65F
 05QVjEAjReC7f3QZisRNw8q7CLrBA8I=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=oracle.com header.s=corp-2019-08-05 header.b=oJLiW6I6;
 spf=pass (open-mesh.org: domain of dan.carpenter@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
X-Mailman-Approved-At: Mon, 20 Jan 2020 21:25:57 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
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
Cc: mareklindner@neomailbox.ch, peterz@infradead.org, catalin.marinas@arm.com,
 a@unstable.cc, jcmvbkbc@gmail.com,
 syzbot <syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com>, hpa@zytor.com,
 will@kernel.org, elena.reshetova@intel.com, hare@suse.com,
 johannes.berg@intel.com, florent.fourcot@wifirst.fr, x86@kernel.org,
 linux@armlinux.org.uk, kadlec@netfilter.org, coreteam@netfilter.org,
 geert@linux-m68k.org, allison@lohutok.net, pablo@netfilter.org,
 linux-arm-kernel@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 arnd@arndb.de, heiko.carstens@de.ibm.com, syzkaller-bugs@googlegroups.com,
 bp@alien8.de, viro@zeniv.linux.org.uk, tglx@linutronix.de, mingo@redhat.com,
 christian@brauner.io, axboe@kernel.dk, chris@zankel.net, jeremy@azazel.net,
 linux-api@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, fw@strlen.de,
 linux-kernel@vger.kernel.org, netfilter-devel@vger.kernel.org,
 netdev@vger.kernel.org, akpm@linux-foundation.org, info@metux.net,
 davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Mon, Jan 20, 2020 at 02:19:31PM +0100, Christian Brauner wrote:
> On Sun, Jan 19, 2020 at 05:35:01PM -0800, syzbot wrote:
> > syzbot has bisected this bug to:
> > 
> > commit d68dbb0c9ac8b1ff52eb09aa58ce6358400fa939
> > Author: Christian Brauner <christian@brauner.io>
> > Date:   Thu Jun 20 23:26:35 2019 +0000
> > 
> >     arch: handle arches who do not yet define clone3
> > 
> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1456fed1e00000
> > start commit:   09d4f10a net: sched: act_ctinfo: fix memory leak
> > git tree:       net
> > final crash:    https://syzkaller.appspot.com/x/report.txt?x=1656fed1e00000
> > console output: https://syzkaller.appspot.com/x/log.txt?x=1256fed1e00000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=7e89bd00623fe71e
> > dashboard link: https://syzkaller.appspot.com/bug?extid=6491ea8f6dddbf04930e
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=141af959e00000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1067fa85e00000
> > 
> > Reported-by: syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com
> > Fixes: d68dbb0c9ac8 ("arch: handle arches who do not yet define clone3")
> > 
> > For information about bisection process see: https://goo.gl/tpsmEJ#bisection
> 
> This bisect seems bogus.
> 

Yeah.  József Kadlecsik already fixed the bug in a different thread.  It
was reported as seven different bugs so there was a bunch of threads for
it.

regards,
dan carpenter
