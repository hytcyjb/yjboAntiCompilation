.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;
.super Ljava/lang/Object;
.source "SubsamplingScaleImageView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;


# direct methods
.method constructor <init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 270
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;I)I

    .line 272
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->performLongClick()Z

    .line 274
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V

    .line 276
    :cond_0
    return v2
.end method
