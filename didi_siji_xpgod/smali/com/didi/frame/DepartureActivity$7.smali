.class Lcom/didi/frame/DepartureActivity$7;
.super Ljava/lang/Object;
.source "DepartureActivity.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/DepartureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/DepartureActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/DepartureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$7;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public onFinish()V
    .locals 3

    .prologue
    .line 550
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$7;->this$0:Lcom/didi/frame/DepartureActivity;

    const v2, 0x7f040018

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 551
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity$7;->this$0:Lcom/didi/frame/DepartureActivity;

    #getter for: Lcom/didi/frame/DepartureActivity;->departicon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/didi/frame/DepartureActivity;->access$2100(Lcom/didi/frame/DepartureActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 552
    return-void
.end method
