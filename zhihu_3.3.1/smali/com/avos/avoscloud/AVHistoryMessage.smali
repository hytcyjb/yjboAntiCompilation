.class public Lcom/avos/avoscloud/AVHistoryMessage;
.super Lcom/avos/avoscloud/AVMessage;
.source "AVHistoryMessage.java"


# instance fields
.field private convid:Ljava/lang/String;

.field private isRoom:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avos/avoscloud/AVMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getConvid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avos/avoscloud/AVHistoryMessage;->convid:Ljava/lang/String;

    return-object v0
.end method

.method public isRoom()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVHistoryMessage;->isRoom:Z

    return v0
.end method

.method setConvid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/avos/avoscloud/AVHistoryMessage;->convid:Ljava/lang/String;

    .line 44
    return-void
.end method

.method setRoom(Z)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVHistoryMessage;->isRoom:Z

    .line 30
    return-void
.end method
