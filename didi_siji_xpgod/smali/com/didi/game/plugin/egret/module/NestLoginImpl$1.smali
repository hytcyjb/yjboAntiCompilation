.class Lcom/didi/game/plugin/egret/module/NestLoginImpl$1;
.super Ljava/lang/Object;
.source "NestLoginImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/plugin/egret/module/NestLoginImpl;->showDidiLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/plugin/egret/module/NestLoginImpl;


# direct methods
.method constructor <init>(Lcom/didi/game/plugin/egret/module/NestLoginImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl$1;->this$0:Lcom/didi/game/plugin/egret/module/NestLoginImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/MainActivity;->closeDrawer()V

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isFromGame"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string v1, "game"

    iget-object v2, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl$1;->this$0:Lcom/didi/game/plugin/egret/module/NestLoginImpl;

    #getter for: Lcom/didi/game/plugin/egret/module/NestLoginImpl;->mGame:Lcom/didi/game/model/H5game;
    invoke-static {v2}, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->access$000(Lcom/didi/game/plugin/egret/module/NestLoginImpl;)Lcom/didi/game/model/H5game;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 131
    iget-object v1, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl$1;->this$0:Lcom/didi/game/plugin/egret/module/NestLoginImpl;

    #getter for: Lcom/didi/game/plugin/egret/module/NestLoginImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->access$100(Lcom/didi/game/plugin/egret/module/NestLoginImpl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/didi/common/ui/component/UiHelper;->promptLoginDialog(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    iget-object v1, p0, Lcom/didi/game/plugin/egret/module/NestLoginImpl$1;->this$0:Lcom/didi/game/plugin/egret/module/NestLoginImpl;

    #getter for: Lcom/didi/game/plugin/egret/module/NestLoginImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/didi/game/plugin/egret/module/NestLoginImpl;->access$100(Lcom/didi/game/plugin/egret/module/NestLoginImpl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 133
    return-void
.end method
