.class Lcom/didi/game/activity/GameActivity$2;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/JavascriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/GameActivity;->addJavaScriptInterfaces()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/activity/GameActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/didi/game/activity/GameActivity$2;->this$0:Lcom/didi/game/activity/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .parameter "jsonObject"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/didi/game/activity/GameActivity$2;->this$0:Lcom/didi/game/activity/GameActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$2;->this$0:Lcom/didi/game/activity/GameActivity;

    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/didi/game/activity/GameActivity;->startActivity(Landroid/content/Intent;)V

    .line 254
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/didi/game/activity/GameActivity$2$1;

    invoke-direct {v1, p0}, Lcom/didi/game/activity/GameActivity$2$1;-><init>(Lcom/didi/game/activity/GameActivity$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method
