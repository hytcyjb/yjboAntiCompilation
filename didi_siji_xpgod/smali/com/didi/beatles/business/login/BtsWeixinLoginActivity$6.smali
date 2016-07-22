.class Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$6;
.super Ljava/lang/Object;
.source "BtsWeixinLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$6;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$6;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    const-string v2, "wxd5b252a1660012b4"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 281
    .local v0, api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    const-string v1, "wxd5b252a1660012b4"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 283
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$6;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->sendWXRequest(Lcom/tencent/mm/sdk/openapi/IWXAPI;)V

    .line 284
    return-void
.end method
