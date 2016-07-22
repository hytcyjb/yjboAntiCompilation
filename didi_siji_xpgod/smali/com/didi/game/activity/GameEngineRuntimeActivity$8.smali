.class Lcom/didi/game/activity/GameEngineRuntimeActivity$8;
.super Ljava/lang/Object;
.source "GameEngineRuntimeActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/GameEngineRuntimeActivity;->changeMenuDrawerVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/GameEngineRuntimeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$8;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/didi/game/activity/GameEngineRuntimeActivity$8;->this$0:Lcom/didi/game/activity/GameEngineRuntimeActivity;

    #getter for: Lcom/didi/game/activity/GameEngineRuntimeActivity;->menuDrawer:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->access$700(Lcom/didi/game/activity/GameEngineRuntimeActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 661
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 656
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 652
    return-void
.end method
