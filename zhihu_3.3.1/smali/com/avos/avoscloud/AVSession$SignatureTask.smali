.class Lcom/avos/avoscloud/AVSession$SignatureTask;
.super Landroid/os/AsyncTask;
.source "AVSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SignatureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/avos/avoscloud/Signature;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/avos/avoscloud/SignatureCallback;

.field signatureException:Lcom/avos/avoscloud/AVException;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/SignatureCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 627
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    .line 628
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/Signature;
    .locals 3
    .parameter

    .prologue
    .line 632
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 634
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-virtual {v0}, Lcom/avos/avoscloud/SignatureCallback;->useSignatureCache()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    invoke-static {v1}, Lcom/avos/avoscloud/AVSessionCacheHelper;->getSessionSignature(Ljava/lang/String;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/Signature;->isExpired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 637
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    const-string v1, "get signature from cache"

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 655
    :cond_0
    :goto_0
    return-object v0

    .line 642
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    const-string v0, "signature expired"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 648
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-virtual {v0}, Lcom/avos/avoscloud/SignatureCallback;->computeSignature()Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 649
    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-virtual {v2}, Lcom/avos/avoscloud/SignatureCallback;->cacheSignature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVSessionCacheHelper;->addSessionSignature(Ljava/lang/String;Lcom/avos/avoscloud/Signature;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->signatureException:Lcom/avos/avoscloud/AVException;

    .line 655
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 622
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVSession$SignatureTask;->doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/avos/avoscloud/Signature;)V
    .locals 2
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->signatureException:Lcom/avos/avoscloud/AVException;

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/SignatureCallback;->onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V

    .line 662
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    check-cast p1, Lcom/avos/avoscloud/Signature;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVSession$SignatureTask;->onPostExecute(Lcom/avos/avoscloud/Signature;)V

    return-void
.end method
