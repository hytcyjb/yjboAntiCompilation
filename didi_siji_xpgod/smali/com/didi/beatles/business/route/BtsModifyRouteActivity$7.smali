.class Lcom/didi/beatles/business/route/BtsModifyRouteActivity$7;
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
    .line 305
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$7;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 309
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$7;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->finish()V

    .line 312
    :cond_0
    return-void
.end method
