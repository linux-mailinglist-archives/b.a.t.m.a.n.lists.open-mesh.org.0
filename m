Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4743C414CBC
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 22 Sep 2021 17:10:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 224D582560;
	Wed, 22 Sep 2021 17:10:10 +0200 (CEST)
Received: from mta-us-central-03.viasat.com (mta-us-central-03.viasat.com [8.37.103.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6FBC18064C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 22 Sep 2021 17:10:06 +0200 (CEST)
Received: from pps.filterd (wdc1mta02.viasat.com [127.0.0.1])
	by wdc1mta02.viasat.com (8.16.0.43/8.16.0.43) with SMTP id 18MF3dHJ015858;
	Wed, 22 Sep 2021 15:10:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=viasat.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=pp1; bh=zhrb1NPjKPRbImZ9zI2JnHffWz6F5y5JLMmf6feP4ao=;
 b=y4R+3iBmh4bI9tTisH8S7u3huq80I3+WB8XU5aGK3jpmEEw5ejwTL0tdT4tBtbz93WLU
 G9svKAOUQQoRnNHGj0fmcmAr0S8rZAYtGDZFnAdOXTAcQqRWUoR2N768D7k2/Ullq9wz
 Cw4J1GisR6WTn2q8Hnn5vx2X0QA31eRUXRoidLD3KrECbslBALwrY+jco3V5syXYnnVP
 sxThrkl+7PkgG4OpJ2KR2oqZgw0+FMS0rHo8vPz0jOB3XPRBHFsU9OrNgjXxOBLpqE8a
 RBKp+0yhpLxpUB/ZavaiLh8kYTefrt9N+QG/BJQNJwUaPUJ4peIozmWYoWE8IjAR4mE2 Tg==
From: "Edmisten, Brian" <Brian.Edmisten@viasat.com>
To: Simon Wunderlich <sw@simonwunderlich.de>,
        "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: RE: Bonding Alternating
Thread-Topic: Bonding Alternating
Thread-Index: AQHXphOoP6gXJotlh0KJSfnzkSEapauh/diCgAHI05CAAVe6AIAAGbTwgAnG3ID//6xSYIABe5CAgAATzjA=
Date: Wed, 22 Sep 2021 15:10:01 +0000
Message-ID: <48ae7df0caa241f196067aba594f3805@viasat.com>
References: <8679334.VDzE56WMh6@prime> <4948508.lctyQggAPn@prime>
 <da01e7af03f44c5c90f2cad227721ce9@viasat.com> <2193349.8FveGl8YFJ@prime>
In-Reply-To: <2193349.8FveGl8YFJ@prime>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-tm-snts-smtp: 7B3506F614A7636B58B92D0D3072EE39C95CFC46314F985ADBC038744946B7D72000:8
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_003B_01D7AF89.3D016180"
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: zegsdbOcP_jQTMiwH_F_1mdU_ssQKt5K
X-Proofpoint-GUID: zegsdbOcP_jQTMiwH_F_1mdU_ssQKt5K
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-22_05:2021-09-22,2021-09-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 phishscore=0 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 mlxlogscore=958 mlxscore=0 bulkscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109200000 definitions=main-2109220107
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1632323406;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=zhrb1NPjKPRbImZ9zI2JnHffWz6F5y5JLMmf6feP4ao=;
	b=aJ2Hi3G59f+vGq3Bo1YKKC2U1mJZ4y8UpZfE7VRe/dL/K9YajnuzGeLv6WcL2xsS58FyN4
	xMbowG/V28nxOEdx3PPRWDWmewOZQds1Mq49me6z5E5dLmHAKWdKLkdhedT8ksawuAVPMl
	fF6nntRBmmEr3gdr1Sx9FFGP10o7rK8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=viasat.com header.s=pp1 header.b=y4R+3iBm;
	dmarc=pass (policy=none) header.from=viasat.com;
	spf=pass (diktynna.open-mesh.org: domain of "prvs=4899d8026c=brian.edmisten@viasat.com" designates 8.37.103.60 as permitted sender) smtp.mailfrom="prvs=4899d8026c=brian.edmisten@viasat.com"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1632323406; a=rsa-sha256;
	cv=none;
	b=v3z/eZ8aCW+KAJsXDKxBCs88RrkG+iVqQOtRj1EL1PI5zBvyU53jd+upLM0Ay5JNBH41Vc
	XuVGN86lY5ySqmqyMPO084u2k/2UUkx3ok5eVewTiOpZT4IYWPWF2e6dyy0hPPRXKV0lAu
	m6FpP7gEyspO9A8Nzehn/+cd3rqyxJg=
Message-ID-Hash: XP2OFXARUZNGWTXZY5QZEMN2YXWJTM3C
X-Message-ID-Hash: XP2OFXARUZNGWTXZY5QZEMN2YXWJTM3C
X-MailFrom: prvs=4899d8026c=brian.edmisten@viasat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XP2OFXARUZNGWTXZY5QZEMN2YXWJTM3C/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

------=_NextPart_000_003B_01D7AF89.3D016180
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Simon,

Thanks for clearing up the hop information.

The radios are not exactly the same throughput wise, but are similar at
short distance.  One is about 80% of the other.

Regards,
Brian Edmisten

-----Original Message-----
From: Simon Wunderlich [mailto:sw@simonwunderlich.de] 
Sent: Wednesday, September 22, 2021 12:55 AM
To: b.a.t.m.a.n@lists.open-mesh.org; Edmisten, Brian
<Brian.Edmisten@viasat.com>
Subject: Re: Bonding Alternating

Hi Brian,

please see inline:

On Tuesday, September 21, 2021 5:41:07 PM CEST Edmisten, Brian wrote:
> Simon,
> 
> The current scenario we are working with we have two different radio 
> systems that already provide a layer 2 mesh network each.  To the user 
> they look like two Ethernet interfaces one for one wave form and one for
the other.
> BATMAN so far is making it more stable in that the convergence of the 
> network is much faster.  There is an opportunity for 3 different radio 
> systems, but the third vendor is unconfirmed.  There was an ask to try 
> to increase bandwidth if the nodes were known to be close together.  
> We were trying out BATMAN's bonding features as using it could 
> simplify our setup and reduce some of the overhead we are getting with 
> the layers or software we are currently using.

Thank you for elaborating! Are these radios providing the same throughput?
One thing I noted when doing tests back then is that the slower link will
slow down the combined link, since it is sending packets in a round robin
fashion. 
In other words, with two links, if the slow link has half the throughput of
the fast link, you will not have any benefit.

> 
> When you say one hop, do you mean one BATMAN hop or something else?  If it
> makes a difference my testing was direct but I think the radios will
> actually look like there is a switch between the nodes.

Whether there is a switch or not doesn't matter to BATMAN. By one hop I
meant 
they are directly connected via Layer 2, there is no intermediate BATMAN hop

acting as a relay.

Since you will be using Ethernet links and not WiFi links, BATMAN will not
be 
able to detect that you are actually using radio links, since its only 
checking kernel internal structures (whether the device uses cfg80211 or 
wext). I'm adding a patch to generally treat interfaces like wireless 
interfaces from a routing perspective, this could also make a difference for

your VM tests.

> 
> Thank you for looking in to this for me.  BATMAN is doing great for our
> first use case.

Great to hear :)

Good luck using it and thank you for your feedback!

Cheers,
      Simon

> 
> Thank you,
> Brian Edmisten
> 
> -----Original Message-----
> From: Simon Wunderlich [mailto:sw@simonwunderlich.de]
> Sent: Tuesday, September 21, 2021 7:16 AM
> To: b.a.t.m.a.n@lists.open-mesh.org; Edmisten, Brian
> <Brian.Edmisten@viasat.com>
> Subject: Re: Bonding Alternating
> 
> Hi Brian,
> 
> I've checked it out and can confirm your issues. The bonding code as
> currently implemented is trying to use a different router from each
routing
> table towards the same originator[1]. However, with 1-hop Ethernet links
> those routers are always the same in all the routing tables. With WiFi
that
> would be a bit different (I've commented out the WiFi penalty check), but
> even then it only alternates between two of the three interfaces.
> 
> At this point I don't have a straight forward fix for this. Will you use
> three Ethernet devices in your later deployment, or will those be WiFi
> interfaces?
> Also, would it be useful for you to consider bonding/teams interfaces of
the
> Linux kernel to bond the link, and give that to batman-adv?
> 
> Cheers,
>        Simon
> 
> [1]
>
https://www.open-mesh.org/projects/batman-adv/wiki/Network-wide-multi-link-o
> ptimization
> 
> On Wednesday, September 15, 2021 4:58:58 PM CEST Edmisten, Brian wrote:
> > Simon,
> > 
> > Thank you. I appreciate you looking at this.
> > 
> > Regards,
> > Brian Edmisten
> > 
> > -----Original Message-----
> > From: Simon Wunderlich [mailto:sw@simonwunderlich.de]
> > Sent: Wednesday, September 15, 2021 12:26 AM
> > To: b.a.t.m.a.n@lists.open-mesh.org; Edmisten, Brian
> > <Brian.Edmisten@viasat.com>
> > Subject: Re: Bonding Alternating
> > 
> > Hi Brian,
> > 
> > hmm, I see. I will try to set up this scenario over the next few days
> > and let you know. I haven't used bonding for quite a while now, but I
> > also don't think that we had changes in the code which would break it.
> > 
> > Anyway, will test and let you know.
> > 
> > Cheers,
> > 
> >       Simon
> > 
> > On Tuesday, September 14, 2021 6:57:37 PM CEST Edmisten, Brian wrote:
> > > Simon,
> > > 
> > > I did check again.  batctl bonding responds with enabled.
> > > 
> > > Cheers,
> > > Brian Edmisten


------=_NextPart_000_003B_01D7AF89.3D016180
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
VR0OBBYEFBsH5+9JSPJWkcVvR29Ihy7Bwyu0MB8GA1UdIwQYMBaAFCi8Gj/qVzdVQhZMUychdZKi
LYolMIIBHQYDVR0fBIIBFDCCARAwggEMoIIBCKCCAQSGNWh0dHA6Ly9jcmwudmlhc2F0LmNvbS9j
cmwvVmlhc2F0JTIwU0hBJTIwMiUyMENBLTYuY3JshoHKbGRhcDovLy9DTj1WaWFzYXQlMjBTSEEl
MjAyJTIwQ0EtNixDTj12Y2FzaGEyY2FwMDYsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZp
Y2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9Y29ycCxEQz12aWFzYXQsREM9Y29t
P2NlcnRpZmljYXRlUmV2b2NhdGlvbkxpc3Q/YmFzZT9vYmplY3RDbGFzcz1jUkxEaXN0cmlidXRp
b25Qb2ludDCCAV0GCCsGAQUFBwEBBIIBTzCCAUswYQYIKwYBBQUHMAKGVWh0dHA6Ly9jcmwudmlh
c2F0LmNvbS9jcmwvdmNhc2hhMmNhcDA2LmhxLmNvcnAudmlhc2F0LmNvbV9WaWFzYXQlMjBTSEEl
MjAyJTIwQ0EtNi5jcnQwJgYIKwYBBQUHMAGGGmh0dHA6Ly9jcmwudmlhc2F0LmNvbS9vY3NwMIG9
BggrBgEFBQcwAoaBsGxkYXA6Ly8vQ049Vmlhc2F0JTIwU0hBJTIwMiUyMENBLTYsQ049QUlBLENO
PVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9
Y29ycCxEQz12aWFzYXQsREM9Y29tP2NBQ2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0
aWZpY2F0aW9uQXV0aG9yaXR5MAsGA1UdDwQEAwIF4DA8BgkrBgEEAYI3FQcELzAtBiUrBgEEAYI3
FQiFwrFU+p8hoYMphKH+SIKdo2+BfIfjhj2EyZRxAgFkAgF6MBMGA1UdJQQMMAoGCCsGAQUFBwME
MBsGCSsGAQQBgjcVCgQOMAwwCgYIKwYBBQUHAwQwJAYDVR0RBB0wG4EZQnJpYW4uRWRtaXN0ZW5A
dmlhc2F0LmNvbTBEBgkqhkiG9w0BCQ8ENzA1MA4GCCqGSIb3DQMCAgIAgDAOBggqhkiG9w0DBAIC
AIAwBwYFKw4DAgcwCgYIKoZIhvcNAwcwDQYJKoZIhvcNAQELBQADggEBAIAIqjbR9cebVJvFw6H3
Ey/MoQI3DLSf6jQyM4CtGuEfOlRJpVuNEj5gn+89zIQMk80nNDLApQh8CwwwUX9hCwnkHW61/hOn
og9CbFT98Z9shlUQLUAYumU28Mxk+TJN5uB0L0qVNwhkzeT8AvoUILufrifKe5v0RynfP2kh30mm
h7X6O0uARHXE0frQr2J3HHFXCjTOkX9R+T8Pk6WwnGNwXaeFHdxgpsW6BJAcfYZ1XZiZu/Ejgrx2
bGs+UTC7/DrCWk+Lclka5fHFn3Y2DWp8BO5imd4MsIk1z66b8jv9rdNh0om6pfdEhCBTW0/vSmak
BEGkKRMfEaI8GqXaXu0xggPnMIID4wIBATCBijBzMRMwEQYKCZImiZPyLGQBGRYDY29tMRYwFAYK
CZImiZPyLGQBGRYGdmlhc2F0MRQwEgYKCZImiZPyLGQBGRYEY29ycDESMBAGCgmSJomT8ixkARkW
AmhxMRowGAYDVQQDExFWaWFzYXQgU0hBIDIgQ0EtNgITbwAADtzJnoHDZwcIiQAAAAAO3DAJBgUr
DgMCGgUAoIICMTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMTA5
MjIxNTA5NTlaMCMGCSqGSIb3DQEJBDEWBBQy8zTVHAK3n+NicLtgoqDjydVURTCBkwYJKoZIhvcN
AQkPMYGFMIGCMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUD
BAECMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMw
CwYJYIZIAWUDBAICMAsGCWCGSAFlAwQCATCBmwYJKwYBBAGCNxAEMYGNMIGKMHMxEzARBgoJkiaJ
k/IsZAEZFgNjb20xFjAUBgoJkiaJk/IsZAEZFgZ2aWFzYXQxFDASBgoJkiaJk/IsZAEZFgRjb3Jw
MRIwEAYKCZImiZPyLGQBGRYCaHExGjAYBgNVBAMTEVZpYXNhdCBTSEEgMiBDQS02AhNvAAAO3Mme
gcNnBwiJAAAAAA7cMIGdBgsqhkiG9w0BCRACCzGBjaCBijBzMRMwEQYKCZImiZPyLGQBGRYDY29t
MRYwFAYKCZImiZPyLGQBGRYGdmlhc2F0MRQwEgYKCZImiZPyLGQBGRYEY29ycDESMBAGCgmSJomT
8ixkARkWAmhxMRowGAYDVQQDExFWaWFzYXQgU0hBIDIgQ0EtNgITbwAADtzJnoHDZwcIiQAAAAAO
3DANBgkqhkiG9w0BAQEFAASCAQA2VbxM/Pjt5aSE7XyKqWZKKMHeQm0kRjcfUWKMij8/774FuI3J
DijCwkZUasK8y530S+W3oWS08R0dtifXkbJnbPqcgHLRmrZD1UauDyR0EckR7356kdwHIwXNZJYX
NOaGWsT/AmMmbTqp/a2eg+L5jH4MOhfVnQ4lI/8z89NV/YFwEzMThHj2oKIU2zsnfQeoN0Y5Plai
c7sIQ+5DHx4kxawkgzRRLJ49xpVHOnqN3LzPrqyjYrCzGtFbXmm2t1q1N5AePqGg/+EEcREL9xo/
gXRC1Ys+zS7/MJxScwpnYuHBeOLldcX10wkRI1xDyHHBCfRptcsjZEE1/bFGrzqAAAAAAAAA

------=_NextPart_000_003B_01D7AF89.3D016180--
