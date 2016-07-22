.class Lcom/didi/activity/ui/activity/ActivityWebActivity$1;
.super Ljava/lang/Object;
.source "ActivityWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/activity/ui/activity/ActivityWebActivity;->registerMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/activity/ActivityWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$1;->this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "jsonObject"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {p1}, Lcom/didi/frame/business/OrderHelper;->buildOrderByParams(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-object v1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$1;->this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

    invoke-virtual {v0}, Lcom/didi/activity/ui/activity/ActivityWebActivity;->checkOrderAndSend()V

    goto :goto_0
.end method
