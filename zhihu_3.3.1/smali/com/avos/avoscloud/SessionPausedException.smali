.class public Lcom/avos/avoscloud/SessionPausedException;
.super Lcom/avos/avoscloud/AVRuntimeException;
.source "SessionPausedException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/SessionPausedException$Actions;
    }
.end annotation


# instance fields
.field private action:Lcom/avos/avoscloud/SessionPausedException$Actions;

.field private message:Ljava/lang/String;

.field private peerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/avos/avoscloud/AVRuntimeException;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getAction()Lcom/avos/avoscloud/SessionPausedException$Actions;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/avos/avoscloud/SessionPausedException;->action:Lcom/avos/avoscloud/SessionPausedException$Actions;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/SessionPausedException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/SessionPausedException;->peerIds:Ljava/util/List;

    return-object v0
.end method

.method public setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/avos/avoscloud/SessionPausedException;->action:Lcom/avos/avoscloud/SessionPausedException$Actions;

    .line 22
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/SessionPausedException;->message:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPeerIds(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lcom/avos/avoscloud/SessionPausedException;->peerIds:Ljava/util/List;

    .line 43
    return-void
.end method
