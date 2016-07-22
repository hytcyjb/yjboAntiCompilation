.class final Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;
.super Lthread/Job;
.source "ZhifubaoPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper;->checkZhifubaoPaySupport(Landroid/app/Activity;Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;->val$callback:Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 3

    .prologue
    .line 28
    new-instance v1, Lcom/alipay/sdk/app/PayTask;

    iget-object v2, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 29
    .local v1, payTask:Lcom/alipay/sdk/app/PayTask;
    invoke-virtual {v1}, Lcom/alipay/sdk/app/PayTask;->checkAccountIfExist()Z

    move-result v0

    .line 31
    .local v0, isExist:Z
    new-instance v2, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1$1;

    invoke-direct {v2, p0, v0}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1$1;-><init>(Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;Z)V

    invoke-static {v2}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method
