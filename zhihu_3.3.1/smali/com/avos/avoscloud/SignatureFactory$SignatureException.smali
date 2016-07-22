.class public Lcom/avos/avoscloud/SignatureFactory$SignatureException;
.super Lcom/avos/avoscloud/AVException;
.source "SignatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/SignatureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureException"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 50
    return-void
.end method
