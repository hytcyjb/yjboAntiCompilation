.class Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;
.super Landroid/os/AsyncTask;
.source "CommonPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/pay/helper/CommonPayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PayAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/didi/game/model/DiDiParam",
        "<+",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/didi/game/model/DiDiResult",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/didi/game/model/DiDiResult",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field mContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mSupportListener:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;)V
    .locals 1
    .parameter "context"
    .parameter "supportListener"

    .prologue
    .line 292
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 293
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->mContext:Ljava/lang/ref/SoftReference;

    .line 294
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->mSupportListener:Ljava/lang/ref/SoftReference;

    .line 295
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/didi/game/model/DiDiParam;)Lcom/didi/game/model/DiDiResult;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/didi/game/model/DiDiParam",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/didi/game/model/DiDiResult",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, params:[Lcom/didi/game/model/DiDiParam;,"[Lcom/didi/game/model/DiDiParam<+Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 325
    const/4 v2, 0x0

    .line 326
    .local v2, result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    :cond_0
    move-object v3, v2

    .line 347
    .end local v2           #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    .local v3, result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    :goto_0
    return-object v3

    .line 329
    .end local v3           #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    .restart local v2       #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    :cond_1
    aget-object v0, p1, v5

    .line 330
    .local v0, param:Lcom/didi/game/model/DiDiParam;,"Lcom/didi/game/model/DiDiParam<+Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lcom/didi/game/model/DiDiParam;->getRequestFlag()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    move-object v3, v2

    .line 347
    .end local v2           #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    .restart local v3       #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    goto :goto_0

    .line 332
    .end local v3           #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    .restart local v2       #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    :pswitch_0
    iget-object v4, p0, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->mSupportListener:Ljava/lang/ref/SoftReference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->mSupportListener:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 333
    :cond_2
    const-string v4, "mSupportListener is null"

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    move-object v3, v2

    .line 334
    .end local v2           #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    .restart local v3       #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    goto :goto_0

    .line 336
    .end local v3           #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    .restart local v2       #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    :cond_3
    new-instance v2, Lcom/didi/game/model/DiDiResult;

    .end local v2           #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    invoke-direct {v2}, Lcom/didi/game/model/DiDiResult;-><init>()V

    .line 338
    .restart local v2       #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->mSupportListener:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;

    invoke-interface {v4}, Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;->beginCheckState()I

    move-result v1

    .line 339
    .local v1, responseFlag:I
    invoke-virtual {v2, v1}, Lcom/didi/game/model/DiDiResult;->setResponseFlag(I)V

    .line 340
    invoke-static {}, Lcom/didi/pay/helper/CommonPayHelper;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 341
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/didi/game/model/DiDiResult;

    aput-object v2, v4, v5

    invoke-virtual {p0, v4}, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 342
    :cond_4
    invoke-virtual {v0}, Lcom/didi/game/model/DiDiParam;->getObjMap()Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "prePayParam"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/didi/game/model/DiDiResult;->setData(Ljava/lang/Object;)V

    .line 343
    iget-object v4, p0, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->mSupportListener:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;

    invoke-interface {v4, v2}, Lcom/didi/pay/helper/CommonPayHelper$CommonSupportListener;->doCheck(Lcom/didi/game/model/DiDiResult;)Z

    goto :goto_1

    .line 330
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, [Lcom/didi/game/model/DiDiParam;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->doInBackground([Lcom/didi/game/model/DiDiParam;)Lcom/didi/game/model/DiDiResult;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 374
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 375
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 376
    return-void
.end method

.method protected onPostExecute(Lcom/didi/game/model/DiDiResult;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/game/model/DiDiResult",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 353
    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Lcom/didi/game/model/DiDiResult;->getResponseFlag()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 370
    return-void

    .line 357
    :pswitch_0
    invoke-static {}, Lcom/didi/pay/helper/CommonPayHelper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const v0, 0x7f0b0261

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    goto :goto_0

    .line 361
    :pswitch_1
    invoke-static {}, Lcom/didi/pay/helper/CommonPayHelper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const v0, 0x7f0b0260

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, Lcom/didi/game/model/DiDiResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->onPostExecute(Lcom/didi/game/model/DiDiResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 299
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 300
    iget-object v0, p0, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->mContext:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    const v0, 0x7f0b0162

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 305
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0b025f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Lcom/didi/game/model/DiDiResult;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/didi/game/model/DiDiResult",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:[Lcom/didi/game/model/DiDiResult;,"[Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 309
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 310
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 311
    aget-object v0, p1, v4

    .line 312
    .local v0, result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lcom/didi/game/model/DiDiResult;->getResponseFlag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 321
    .end local v0           #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local v0       #result:Lcom/didi/game/model/DiDiResult;,"Lcom/didi/game/model/DiDiResult<Ljava/lang/Object;>;"
    :pswitch_0
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 316
    iget-object v1, p0, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f0b0263

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, [Lcom/didi/game/model/DiDiResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/pay/helper/CommonPayHelper$PayAsyncTask;->onProgressUpdate([Lcom/didi/game/model/DiDiResult;)V

    return-void
.end method
