.class final Lcom/avos/avoscloud/AVInstallation$1;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVInstallation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVInstallation;->updateCurrentInstallation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback",
        "<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 280
    check-cast p1, Lcom/avos/avoscloud/AVInstallation;

    .line 282
    :try_start_0
    #calls: Lcom/avos/avoscloud/AVInstallation;->writeInstallationFile(Lcom/avos/avoscloud/AVInstallation;)V
    invoke-static {p1}, Lcom/avos/avoscloud/AVInstallation;->access$000(Lcom/avos/avoscloud/AVInstallation;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
