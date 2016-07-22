.class Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$3;
.super Ljava/lang/Object;
.source "BtsAddNewRouteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 262
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18

    iget-object v4, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_hour:I
    invoke-static {v4}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->access$100(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->start_time_minute:I
    invoke-static {v5}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->access$200(Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->newInstance(IIIII)Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;

    move-result-object v0

    .line 268
    .local v0, dialog:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity$3;->this$0:Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 272
    .end local v0           #dialog:Lcom/didi/beatles/ui/component/BtsHourMinuteDialog;
    :cond_0
    return-void
.end method
