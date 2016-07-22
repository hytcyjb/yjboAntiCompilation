.class public final Lcom/avos/avoscloud/AVExceptionHolder;
.super Ljava/lang/Object;
.source "AVExceptionHolder.java"


# static fields
.field private static final local:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/avos/avoscloud/AVException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/avos/avoscloud/AVExceptionHolder$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVExceptionHolder$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVExceptionHolder;->local:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final add(Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    sget-object v0, Lcom/avos/avoscloud/AVExceptionHolder;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public static final exists()Z
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/avos/avoscloud/AVExceptionHolder;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final remove()Lcom/avos/avoscloud/AVException;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/avos/avoscloud/AVExceptionHolder;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVException;

    .line 25
    sget-object v1, Lcom/avos/avoscloud/AVExceptionHolder;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 26
    return-object v0
.end method
