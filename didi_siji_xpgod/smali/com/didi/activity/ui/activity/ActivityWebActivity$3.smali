.class Lcom/didi/activity/ui/activity/ActivityWebActivity$3;
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
    .line 81
    iput-object p1, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$3;->this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8
    .parameter "jsonObject"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 85
    const-string v7, "address_type"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 86
    .local v4, type:I
    const-string v7, "city_name"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, cityName:Ljava/lang/String;
    const-string v7, "city_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, cityId:Ljava/lang/String;
    if-nez v4, :cond_0

    move v3, v5

    .line 89
    .local v3, requestCode:I
    :goto_0
    if-nez v4, :cond_1

    move v4, v5

    .line 90
    :goto_1
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$3;->this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

    const-class v6, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "search_extra_type"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v5, "search_extra_order_type"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v5, "search_extra_cityid"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v5, "search_extra_cityname"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v5, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$3;->this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

    invoke-virtual {v5, v2, v3}, Lcom/didi/activity/ui/activity/ActivityWebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    const/4 v5, 0x0

    return-object v5

    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #requestCode:I
    :cond_0
    move v3, v6

    .line 88
    goto :goto_0

    .restart local v3       #requestCode:I
    :cond_1
    move v4, v6

    .line 89
    goto :goto_1
.end method
