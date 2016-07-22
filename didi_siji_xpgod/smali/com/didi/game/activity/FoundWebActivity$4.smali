.class Lcom/didi/game/activity/FoundWebActivity$4;
.super Ljava/lang/Object;
.source "FoundWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/FoundWebActivity;->addEnterGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/activity/FoundWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/FoundWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/didi/game/activity/FoundWebActivity$4;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "jsonObject"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/didi/game/activity/FoundWebActivity$4;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    iget-object v1, p0, Lcom/didi/game/activity/FoundWebActivity$4;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    new-instance v2, Lcom/didi/game/activity/FoundWebActivity$4$1;

    invoke-direct {v2, p0}, Lcom/didi/game/activity/FoundWebActivity$4$1;-><init>(Lcom/didi/game/activity/FoundWebActivity$4;)V

    invoke-static {v1, v2}, Lcom/didi/common/download/UpdateHelper;->doUpdateFromH5(Landroid/app/Activity;Lcom/didi/common/download/UpdateHelper$UpdatedListener;)Lthread/Job;

    move-result-object v1

    #setter for: Lcom/didi/game/activity/FoundWebActivity;->checkUpdateJob:Lthread/Job;
    invoke-static {v0, v1}, Lcom/didi/game/activity/FoundWebActivity;->access$302(Lcom/didi/game/activity/FoundWebActivity;Lthread/Job;)Lthread/Job;

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method
