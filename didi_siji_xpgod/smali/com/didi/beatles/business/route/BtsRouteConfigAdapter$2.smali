.class Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$2;
.super Ljava/lang/Object;
.source "BtsRouteConfigAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->fillUI(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Lcom/didi/beatles/model/route/BtsRoute;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

.field final synthetic val$route:Lcom/didi/beatles/model/route/BtsRoute;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;Lcom/didi/beatles/model/route/BtsRoute;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$2;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$2;->val$route:Lcom/didi/beatles/model/route/BtsRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$2;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

    #getter for: Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->access$600(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$2;->val$route:Lcom/didi/beatles/model/route/BtsRoute;

    invoke-static {v0, v1}, Lcom/didi/beatles/business/route/BtsModifyRouteActivity;->startActivity(Landroid/app/Activity;Lcom/didi/beatles/model/route/BtsRoute;)V

    .line 165
    return-void
.end method
