.class Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;
.super Lthread/Job;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/download/UpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateCheckJob"
.end annotation


# instance fields
.field private md5:Ljava/lang/String;

.field final synthetic this$0:Lcom/didi/common/download/UpdateHelper;


# direct methods
.method constructor <init>(Lcom/didi/common/download/UpdateHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;->this$0:Lcom/didi/common/download/UpdateHelper;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostRun()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob$1;

    invoke-direct {v0, p0}, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob$1;-><init>(Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;)V

    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;->md5:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/net/CommonRequest;->doUpdate(Lcom/didi/common/net/ResponseListener;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 186
    :try_start_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getInstallApk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;->this$0:Lcom/didi/common/download/UpdateHelper;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/didi/common/download/UpdateHelper;->oldApk:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/didi/common/download/UpdateHelper;->access$502(Lcom/didi/common/download/UpdateHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    invoke-static {v1}, Lcom/didi/common/util/MD5;->readRandomByte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/MD5;->toMD5([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;->md5:Ljava/lang/String;

    .line 190
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VersionName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " VersionCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MD5:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/download/UpdateHelper$UpdateCheckJob;->md5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
