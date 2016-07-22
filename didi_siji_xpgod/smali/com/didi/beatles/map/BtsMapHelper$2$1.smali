.class Lcom/didi/beatles/map/BtsMapHelper$2$1;
.super Ljava/lang/Object;
.source "BtsMapHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/map/BtsMapHelper$2;->showTip(Lcom/didi/beatles/map/BtsRouteTipMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/map/BtsMapHelper$2;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tipPoint:Lcom/didi/beatles/map/BtsRoutePoint;


# direct methods
.method constructor <init>(Lcom/didi/beatles/map/BtsMapHelper$2;Landroid/content/Context;Lcom/didi/beatles/map/BtsRoutePoint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/didi/beatles/map/BtsMapHelper$2$1;->this$0:Lcom/didi/beatles/map/BtsMapHelper$2;

    iput-object p2, p0, Lcom/didi/beatles/map/BtsMapHelper$2$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/didi/beatles/map/BtsMapHelper$2$1;->val$tipPoint:Lcom/didi/beatles/map/BtsRoutePoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapHelper$2$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/didi/beatles/map/BtsMapHelper$2$1;->val$tipPoint:Lcom/didi/beatles/map/BtsRoutePoint;

    iget-object v1, v1, Lcom/didi/beatles/map/BtsRoutePoint;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/beatles/helper/BtsClipboardHelper;->copy(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$600()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 259
    return-void
.end method
