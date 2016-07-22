.class public Lcom/didi/pay/common/bean/CommonPayResp;
.super Ljava/lang/Object;
.source "CommonPayResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/pay/common/bean/CommonPayResp$ErrCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private errmsg:Ljava/lang/String;

.field private errno:I

.field private resp:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private wxVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, this:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<TT;>;"
    .local p1, resp:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/didi/pay/common/bean/CommonPayResp;->resp:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<TT;>;"
    iget-object v0, p0, Lcom/didi/pay/common/bean/CommonPayResp;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getErrno()I
    .locals 1

    .prologue
    .line 23
    .local p0, this:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<TT;>;"
    iget v0, p0, Lcom/didi/pay/common/bean/CommonPayResp;->errno:I

    return v0
.end method

.method public getResp()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<TT;>;"
    iget-object v0, p0, Lcom/didi/pay/common/bean/CommonPayResp;->resp:Ljava/lang/Object;

    return-object v0
.end method

.method public getWxVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<TT;>;"
    iget-object v0, p0, Lcom/didi/pay/common/bean/CommonPayResp;->wxVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errmsg"

    .prologue
    .line 35
    .local p0, this:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<TT;>;"
    iput-object p1, p0, Lcom/didi/pay/common/bean/CommonPayResp;->errmsg:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setErrno(I)V
    .locals 0
    .parameter "errno"

    .prologue
    .line 27
    .local p0, this:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<TT;>;"
    iput p1, p0, Lcom/didi/pay/common/bean/CommonPayResp;->errno:I

    .line 28
    return-void
.end method

.method public setResp(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<TT;>;"
    .local p1, resp:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/didi/pay/common/bean/CommonPayResp;->resp:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public setWxVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "wxVersion"

    .prologue
    .line 43
    .local p0, this:Lcom/didi/pay/common/bean/CommonPayResp;,"Lcom/didi/pay/common/bean/CommonPayResp<TT;>;"
    iput-object p1, p0, Lcom/didi/pay/common/bean/CommonPayResp;->wxVersion:Ljava/lang/String;

    .line 44
    return-void
.end method
