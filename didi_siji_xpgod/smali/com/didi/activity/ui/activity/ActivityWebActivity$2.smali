.class Lcom/didi/activity/ui/activity/ActivityWebActivity$2;
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
    .line 67
    iput-object p1, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$2;->this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "jsonObject"

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, car_type:I
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$2;->this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

    const-class v3, Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "Business"

    if-nez v0, :cond_0

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$2;->this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Lcom/didi/activity/ui/activity/ActivityWebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    const/4 v2, 0x0

    return-object v2

    .line 74
    :cond_0
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    goto :goto_0
.end method
