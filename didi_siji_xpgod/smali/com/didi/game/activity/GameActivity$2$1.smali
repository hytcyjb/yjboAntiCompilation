.class Lcom/didi/game/activity/GameActivity$2$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/GameActivity$2;->execute(Lorg/json/JSONObject;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/game/activity/GameActivity$2;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/GameActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/didi/game/activity/GameActivity$2$1;->this$1:Lcom/didi/game/activity/GameActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 257
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/MainActivity;->closeDrawer()V

    .line 258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isFromGame"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    const-string v1, "game"

    iget-object v2, p0, Lcom/didi/game/activity/GameActivity$2$1;->this$1:Lcom/didi/game/activity/GameActivity$2;

    iget-object v2, v2, Lcom/didi/game/activity/GameActivity$2;->this$0:Lcom/didi/game/activity/GameActivity;

    #getter for: Lcom/didi/game/activity/GameActivity;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v2}, Lcom/didi/game/activity/GameActivity;->access$000(Lcom/didi/game/activity/GameActivity;)Lcom/didi/game/model/H5game;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 261
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity$2$1;->this$1:Lcom/didi/game/activity/GameActivity$2;

    iget-object v1, v1, Lcom/didi/game/activity/GameActivity$2;->this$0:Lcom/didi/game/activity/GameActivity;

    invoke-virtual {v1}, Lcom/didi/game/activity/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/didi/common/ui/component/UiHelper;->promptLoginDialog(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 262
    iget-object v1, p0, Lcom/didi/game/activity/GameActivity$2$1;->this$1:Lcom/didi/game/activity/GameActivity$2;

    iget-object v1, v1, Lcom/didi/game/activity/GameActivity$2;->this$0:Lcom/didi/game/activity/GameActivity;

    invoke-virtual {v1}, Lcom/didi/game/activity/GameActivity;->finish()V

    .line 263
    return-void
.end method
