.class Lcom/didi/beatles/upload/BtsPicUploadWebActivity$4;
.super Ljava/lang/Object;
.source "BtsPicUploadWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/upload/BtsPicUploadWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/upload/BtsPicUploadWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$4;->this$0:Lcom/didi/beatles/upload/BtsPicUploadWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "jsonObject"

    .prologue
    const/4 v3, 0x0

    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v1, "\u53c2\u6570\u9519\u8bef"

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-object v3

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$4;->this$0:Lcom/didi/beatles/upload/BtsPicUploadWebActivity;

    const-string v2, "callback"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->mCallBackMethod:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->access$102(Lcom/didi/beatles/upload/BtsPicUploadWebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$4;->this$0:Lcom/didi/beatles/upload/BtsPicUploadWebActivity;

    const-class v2, Lcom/didi/beatles/upload/BtsPicUploadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UPLOAD_URL_KEY"

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "DATA_PARAMS_KEY"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "type"

    const-string v2, "camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadWebActivity$4;->this$0:Lcom/didi/beatles/upload/BtsPicUploadWebActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/didi/beatles/upload/BtsPicUploadWebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
