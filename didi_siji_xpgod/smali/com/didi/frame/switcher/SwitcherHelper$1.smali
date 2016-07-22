.class final Lcom/didi/frame/switcher/SwitcherHelper$1;
.super Ljava/lang/Object;
.source "SwitcherHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/switcher/SwitcherHelper;->setContentViewAnimated(Landroid/view/View;)V
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
    .line 197
    iput-object p1, p0, Lcom/didi/frame/switcher/SwitcherHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/switcher/SwitcherHelper$1;->seted:Z

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 202
    iget-boolean v1, p0, Lcom/didi/frame/switcher/SwitcherHelper$1;->seted:Z

    if-eqz v1, :cond_0

    .line 208
    :goto_0
    return v3

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/switcher/SwitcherHelper$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 205
    .local v0, height:I
    iput-boolean v3, p0, Lcom/didi/frame/switcher/SwitcherHelper$1;->seted:Z

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitcherHelper--setContentViewAnimated seted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/didi/frame/switcher/SwitcherHelper$1;->seted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call setPanelContentHeightAnimated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 207
    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->setPanelContentHeightAnimated(I)V

    goto :goto_0
.end method
