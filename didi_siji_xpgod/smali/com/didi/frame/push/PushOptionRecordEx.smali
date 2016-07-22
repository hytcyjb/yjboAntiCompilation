.class public abstract Lcom/didi/frame/push/PushOptionRecordEx;
.super Lcom/didi/frame/push/PushOptionRecord;
.source "PushOptionRecordEx.java"


# static fields
.field private static final serialVersionUID:J = 0x6b4ec21f5bf1ad47L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/didi/frame/push/PushOptionRecord;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onPushOptionResponsed(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
