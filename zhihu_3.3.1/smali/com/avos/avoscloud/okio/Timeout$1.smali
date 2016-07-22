.class final Lcom/avos/avoscloud/okio/Timeout$1;
.super Lcom/avos/avoscloud/okio/Timeout;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okio/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/avos/avoscloud/okio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lcom/avos/avoscloud/okio/Timeout;
    .locals 0
    .parameter

    .prologue
    .line 54
    return-object p0
.end method

.method public throwIfReached()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/avos/avoscloud/okio/Timeout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    return-object p0
.end method
