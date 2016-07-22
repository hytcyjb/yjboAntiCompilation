.class Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1$1;
.super Ljava/lang/Object;
.source "ZhifubaoPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;

.field final synthetic val$isExist:Z


# direct methods
.method constructor <init>(Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1$1;->this$0:Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;

    iput-boolean p2, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1$1;->val$isExist:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1$1;->val$isExist:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1$1;->this$0:Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;

    iget-object v0, v0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;->val$callback:Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;

    invoke-interface {v0}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;->onZhifubaoAppSupported()V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1$1;->this$0:Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;

    iget-object v0, v0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$1;->val$callback:Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;

    invoke-interface {v0}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;->onZhifubaoAppUnSupported()V

    goto :goto_0
.end method
