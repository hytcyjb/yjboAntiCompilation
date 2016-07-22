.class final Lcom/didi/frame/switcher/SwitcherHelper$2;
.super Ljava/lang/Object;
.source "SwitcherHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/switcher/SwitcherHelper;->setContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field seted:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/didi/frame/switcher/SwitcherHelper$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/switcher/SwitcherHelper$2;->seted:Z

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 275
    iget-boolean v1, p0, Lcom/didi/frame/switcher/SwitcherHelper$2;->seted:Z

    if-eqz v1, :cond_0

    .line 280
    :goto_0
    return v2

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/switcher/SwitcherHelper$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 278
    .local v0, height:I
    iput-boolean v2, p0, Lcom/didi/frame/switcher/SwitcherHelper$2;->seted:Z

    .line 279
    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->setPanelContentHeight(I)V

    goto :goto_0
.end method
