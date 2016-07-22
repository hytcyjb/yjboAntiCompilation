.class Lcom/didi/beatles/business/route/BtsModifyRouteActivity$2;
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
    .line 138
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 142
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsModifyRouteActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsModifyRouteActivity;

    const/4 v1, 0x0

    #calls: Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->redirectToSearch(Z)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->access$000(Lcom/didi/beatles/business/route/BtsModifyRouteActivity;Z)V

    .line 145
    :cond_0
    return-void
.end method
