.class abstract Lcom/avos/avoscloud/SignatureCallback;
.super Ljava/lang/Object;
.source "SignatureCallback.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheSignature()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public abstract computeSignature()Lcom/avos/avoscloud/Signature;
.end method

.method public abstract onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
.end method

.method public useSignatureCache()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method
