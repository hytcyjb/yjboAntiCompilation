.class public Lcom/avos/avoscloud/LogUtil$avlog;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "avlog"
.end annotation


# static fields
.field public static showAVLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/LogUtil$avlog;->showAVLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    sget-boolean v0, Lcom/avos/avoscloud/LogUtil$avlog;->showAVLog:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    sget-boolean v0, Lcom/avos/avoscloud/LogUtil$avlog;->showAVLog:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    sget-boolean v0, Lcom/avos/avoscloud/LogUtil$avlog;->showAVLog:Z

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->i(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    sget-boolean v0, Lcom/avos/avoscloud/LogUtil$avlog;->showAVLog:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->i(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method
