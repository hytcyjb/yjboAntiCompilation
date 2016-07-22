.class final Lcom/avos/avoscloud/AVExceptionHolder$1;
.super Ljava/lang/ThreadLocal;
.source "AVExceptionHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVExceptionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/avos/avoscloud/AVException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/avos/avoscloud/AVException;
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVExceptionHolder$1;->initialValue()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method
