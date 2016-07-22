.class public Lcom/didi/ddrive/net/http/response/ShareContent;
.super Ljava/lang/Object;
.source "ShareContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/http/response/ShareContent$Sms;,
        Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;,
        Lcom/didi/ddrive/net/http/response/ShareContent$WeixinFriends;,
        Lcom/didi/ddrive/net/http/response/ShareContent$Weibo;
    }
.end annotation


# instance fields
.field public sharesms:Lcom/didi/ddrive/net/http/response/ShareContent$Sms;

.field public sinaWeibo:Lcom/didi/ddrive/net/http/response/ShareContent$Weibo;

.field public weixing:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;

.field public weixingFriendster:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinFriends;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method
