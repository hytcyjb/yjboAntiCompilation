.class Lcom/didi/beatles/business/route/BtsModifyRouteActivity$4;
.super Ljava/lang/Object;
.source "BtsModifyRouteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/route/BtsModifyRouteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$4;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 198
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$4;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    #calls: Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->showDelRouteComfirm()V
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->access$100(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;)V

    .line 201
    :cond_0
    return-void
.end method
