.class final Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;
.super Ljava/lang/Object;
.source "ZhifubaoPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper;->sendZhifubaoPayRequest(Landroid/app/Activity;Lcom/didi/common/model/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$payParams:Lcom/didi/common/model/PayParams;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/didi/common/model/PayParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;->val$payParams:Lcom/didi/common/model/PayParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v2, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 65
    .local v0, alipay:Lcom/alipay/sdk/app/PayTask;
    iget-object v2, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;->val$payParams:Lcom/didi/common/model/PayParams;

    iget-object v2, v2, Lcom/didi/common/model/PayParams;->zfbParams:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, result:Ljava/lang/String;
    new-instance v2, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2$1;

    invoke-direct {v2, p0, v1}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2$1;-><init>(Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method
