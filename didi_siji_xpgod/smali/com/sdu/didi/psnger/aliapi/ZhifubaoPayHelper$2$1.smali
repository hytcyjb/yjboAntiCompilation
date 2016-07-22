.class Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2$1;
.super Ljava/lang/Object;
.source "ZhifubaoPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2$1;->this$0:Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2;

    iput-object p2, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$2$1;->val$result:Ljava/lang/String;

    #calls: Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper;->onResp(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper;->access$000(Ljava/lang/String;)V

    .line 72
    return-void
.end method
