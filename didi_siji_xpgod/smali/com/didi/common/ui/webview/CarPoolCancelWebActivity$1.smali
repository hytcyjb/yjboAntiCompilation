.class Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$1;
.super Ljava/lang/Object;
.source "CarPoolCancelWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$1;->this$0:Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "jsonObject"

    .prologue
    const/4 v3, 0x0

    .line 54
    const-string v1, "reasonCode"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, reasonCode:I
    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 56
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/frame/carpool/CarPoolHelper;->setCurrentCarPoolType(I)V

    .line 57
    iget-object v1, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$1;->this$0:Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;

    #calls: Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->redirectConfirmFragment()V
    invoke-static {v1}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->access$000(Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;)V

    .line 58
    iget-object v1, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$1;->this$0:Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;

    invoke-virtual {v1}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->finish()V

    .line 69
    :goto_0
    return-object v3

    .line 60
    :cond_0
    const/16 v1, 0x29

    if-ne v0, v1, :cond_1

    .line 61
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/didi/frame/carpool/CarPoolHelper;->setCurrentCarPoolType(I)V

    .line 62
    iget-object v1, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$1;->this$0:Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;

    #calls: Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->redirectConfirmFragment()V
    invoke-static {v1}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->access$000(Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;)V

    .line 63
    iget-object v1, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$1;->this$0:Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;

    invoke-virtual {v1}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->finish()V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity$1;->this$0:Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;

    #calls: Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->redictTaxiRealtimeFragment()V
    invoke-static {v1}, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;->access$100(Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;)V

    goto :goto_0
.end method
