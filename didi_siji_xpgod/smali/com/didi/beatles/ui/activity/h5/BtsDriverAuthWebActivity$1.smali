.class Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity$1;
.super Ljava/lang/Object;
.source "BtsDriverAuthWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity$1;->this$0:Lcom/didi/beatles/ui/activity/h5/BtsDriverAuthWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "jsonObject"

    .prologue
    .line 46
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v0

    .line 47
    .local v0, info:Lcom/didi/beatles/model/role/BtsRoleInfo;
    invoke-virtual {v0}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v1

    const-string v2, "car_auth_state"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->car_auth_state:Ljava/lang/String;

    .line 48
    const/4 v1, 0x0

    return-object v1
.end method
