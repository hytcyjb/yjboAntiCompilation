.class Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "BtsCropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/upload/BtsCropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# static fields
.field static final ANIMATION_SCALE_PER_ITERATION_IN:F = 1.07f

.field static final ANIMATION_SCALE_PER_ITERATION_OUT:F = 0.93f


# instance fields
.field private final deltaScale:F

.field private final focalX:F

.field private final focalY:F

.field private final targetZoom:F

.field final synthetic this$0:Lcom/didi/beatles/upload/BtsCropImageView;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/upload/BtsCropImageView;FFFF)V
    .locals 1
    .parameter
    .parameter "currentZoom"
    .parameter "targetZoom"
    .parameter "focalX"
    .parameter "focalY"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput p3, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->targetZoom:F

    .line 326
    iput p4, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->focalX:F

    .line 327
    iput p5, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->focalY:F

    .line 329
    cmpg-float v0, p2, p3

    if-gez v0, :cond_0

    .line 330
    const v0, 0x3f88f5c3

    iput v0, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->deltaScale:F

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    const v0, 0x3f6e147b

    iput v0, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->deltaScale:F

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f80

    .line 337
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->suppMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->access$200(Lcom/didi/beatles/upload/BtsCropImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->deltaScale:F

    iget v4, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->deltaScale:F

    iget v5, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->focalX:F

    iget v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->focalY:F

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 338
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #calls: Lcom/didi/beatles/upload/BtsCropImageView;->checkAndDisplayMatrix()V
    invoke-static {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->access$300(Lcom/didi/beatles/upload/BtsCropImageView;)V

    .line 340
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-virtual {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->getScale()F

    move-result v0

    .line 342
    .local v0, currentScale:F
    iget v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->deltaScale:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_0

    iget v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->targetZoom:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->deltaScale:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_2

    iget v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->targetZoom:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_2

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #calls: Lcom/didi/beatles/upload/BtsCropImageView;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    invoke-static {v2, v3, p0}, Lcom/didi/beatles/upload/BtsCropImageView;->access$500(Lcom/didi/beatles/upload/BtsCropImageView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 354
    :goto_0
    return-void

    .line 350
    :cond_2
    iget v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->targetZoom:F

    div-float v1, v2, v0

    .line 351
    .local v1, delta:F
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->suppMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->access$200(Lcom/didi/beatles/upload/BtsCropImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->focalX:F

    iget v4, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->focalY:F

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 352
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #calls: Lcom/didi/beatles/upload/BtsCropImageView;->checkAndDisplayMatrix()V
    invoke-static {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->access$300(Lcom/didi/beatles/upload/BtsCropImageView;)V

    goto :goto_0
.end method
