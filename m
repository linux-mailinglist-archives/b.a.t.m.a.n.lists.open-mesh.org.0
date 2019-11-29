Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3B110D433
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 Nov 2019 11:33:45 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 223CA80648;
	Fri, 29 Nov 2019 11:33:40 +0100 (CET)
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by open-mesh.org (Postfix) with ESMTPS id 2D37580200
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 29 Nov 2019 11:23:38 +0100 (CET)
Received: from fsav301.sakura.ne.jp (fsav301.sakura.ne.jp [153.120.85.132])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id xAT9duVL025281;
 Fri, 29 Nov 2019 18:39:56 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav301.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav301.sakura.ne.jp);
 Fri, 29 Nov 2019 18:39:56 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav301.sakura.ne.jp)
Received: from [192.168.1.9] (softbank126040062084.bbtec.net [126.40.62.84])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id xAT9dnVK025145
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Fri, 29 Nov 2019 18:39:55 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Subject: Re: general protection fault in smack_socket_sendmsg (2)
To: syzbot <syzbot+131d2229316b7012ac06@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com
References: <000000000000723a32059870fbd4@google.com>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <ee964c66-da56-def6-9525-6d960ab9487a@I-love.SAKURA.ne.jp>
Date: Fri, 29 Nov 2019 18:39:49 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <000000000000723a32059870fbd4@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1575023019;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XK8eXr0bJBNx1o496Eb2vY5F8xnHeYVYbqVaWpI3EWw=;
 b=NMxtiUiEG496ZYaV/3dUXD5K+usezHc0Ay9hMPimfWEibZKbAVSoBuOXEyqFWGvF/SH8H6
 fqfLn7Q5KLmYTDyC1FOZxejklgr0TvYGch1VkrBoeNXik6DAeZGp4vI014CK+aPsen4wAe
 H8k4291KVSxLlJtvFCnMgVBbvdCgOAk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1575023019; a=rsa-sha256; cv=none;
 b=DzXBSDZelgFCI995She9NcURB6Xakdo8NZVWChAvvqmxLZgwCia9TIQknJcwBuipptBGGb
 KvSoIJ16RtbJTuYCDh31Tu69ifLluQhMJfGgzqNhZPNTTUDeI06HfZVBxIIPmwktELUwOK
 uOeNhWrJFDBsfrRjPsorEjGxcZMQTAk=
ARC-Authentication-Results: i=1; open-mesh.org; dkim=none;
 spf=none (open-mesh.org: domain of penguin-kernel@I-love.SAKURA.ne.jp has no
 SPF policy when checking 202.181.97.72)
 smtp.mailfrom=penguin-kernel@I-love.SAKURA.ne.jp
X-Mailman-Approved-At: Fri, 29 Nov 2019 11:33:38 +0100
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
Cc: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, jmorris@namei.org,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 Casey Schaufler <casey@schaufler-ca.com>, serge@hallyn.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On 2019/11/29 9:05, syzbot wrote:
>  rxrpc_send_keepalive+0x254/0x3c0 net/rxrpc/output.c:655

Again net/rxrpc/output.c:655

#syz dup: KMSAN: use-after-free in rxrpc_send_keepalive
