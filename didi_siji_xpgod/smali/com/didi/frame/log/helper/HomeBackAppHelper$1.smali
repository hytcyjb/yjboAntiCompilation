.class final Lcom/didi/frame/log/helper/HomeBackAppHelper$1;
.super Lthread/Job;
.source "HomeBackAppHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/log/helper/HomeBackAppHelper;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/frame/log/helper/HomeBackAppHelper$1;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/didi/frame/log/helper/HomeBackAppHelper$1;->val$info:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/didi/common/helper/AppWatcherHelper;->uploadAppInfo(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method
