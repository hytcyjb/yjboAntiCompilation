.class Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BtsCropImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/upload/BtsCropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiGestureDetector"
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field private isDragging:Z

.field private lastPointerCount:F

.field private lastTouchX:F

.field private lastTouchY:F

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final scaledTouchSlop:F

.field final synthetic this$0:Lcom/didi/beatles/upload/BtsCropImageView;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/upload/BtsCropImageView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 174
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 176
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    .line 177
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 179
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 180
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->scaledTouchSlop:F

    .line 181
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-virtual {v0}, Lcom/didi/beatles/upload/BtsCropImageView;->getScale()F

    move-result v2

    .line 297
    .local v2, scale:F
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-virtual {v0}, Lcom/didi/beatles/upload/BtsCropImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 298
    .local v4, x:F
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-virtual {v0}, Lcom/didi/beatles/upload/BtsCropImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    .line 300
    .local v5, y:F
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->midScale:F
    invoke-static {v0}, Lcom/didi/beatles/upload/BtsCropImageView;->access$400(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    .line 301
    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    new-instance v0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;

    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->midScale:F
    invoke-static {v3}, Lcom/didi/beatles/upload/BtsCropImageView;->access$400(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;-><init>(Lcom/didi/beatles/upload/BtsCropImageView;FFFF)V

    invoke-virtual {v6, v0}, Lcom/didi/beatles/upload/BtsCropImageView;->post(Ljava/lang/Runnable;)Z

    .line 311
    .end local v2           #scale:F
    .end local v4           #x:F
    .end local v5           #y:F
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 302
    .restart local v2       #scale:F
    .restart local v4       #x:F
    .restart local v5       #y:F
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->midScale:F
    invoke-static {v0}, Lcom/didi/beatles/upload/BtsCropImageView;->access$400(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->maxScale:F
    invoke-static {v0}, Lcom/didi/beatles/upload/BtsCropImageView;->access$000(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    .line 303
    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    new-instance v0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;

    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->maxScale:F
    invoke-static {v3}, Lcom/didi/beatles/upload/BtsCropImageView;->access$000(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;-><init>(Lcom/didi/beatles/upload/BtsCropImageView;FFFF)V

    invoke-virtual {v6, v0}, Lcom/didi/beatles/upload/BtsCropImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 307
    .end local v2           #scale:F
    .end local v4           #x:F
    .end local v5           #y:F
    :catch_0
    move-exception v0

    goto :goto_0

    .line 305
    .restart local v2       #scale:F
    .restart local v4       #x:F
    .restart local v5       #y:F
    :cond_1
    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    new-instance v0, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;

    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F
    invoke-static {v3}, Lcom/didi/beatles/upload/BtsCropImageView;->access$100(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v3

    invoke-direct/range {v0 .. v5}, Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;-><init>(Lcom/didi/beatles/upload/BtsCropImageView;FFFF)V

    invoke-virtual {v6, v0}, Lcom/didi/beatles/upload/BtsCropImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/high16 v3, 0x3f80

    .line 185
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-virtual {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->getScale()F

    move-result v0

    .line 187
    .local v0, scale:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 188
    .local v1, scaleFactor:F
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-virtual {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->maxScale:F
    invoke-static {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->access$000(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-gtz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F
    invoke-static {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->access$100(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    cmpg-float v2, v1, v3

    if-gez v2, :cond_4

    .line 189
    :cond_1
    mul-float v2, v1, v0

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F
    invoke-static {v3}, Lcom/didi/beatles/upload/BtsCropImageView;->access$100(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F
    invoke-static {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->access$100(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v2

    div-float v1, v2, v0

    .line 192
    :cond_2
    mul-float v2, v1, v0

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->maxScale:F
    invoke-static {v3}, Lcom/didi/beatles/upload/BtsCropImageView;->access$000(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->maxScale:F
    invoke-static {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->access$000(Lcom/didi/beatles/upload/BtsCropImageView;)F

    move-result v2

    div-float v1, v2, v0

    .line 195
    :cond_3
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->suppMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->access$200(Lcom/didi/beatles/upload/BtsCropImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-virtual {v3}, Lcom/didi/beatles/upload/BtsCropImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-virtual {v4}, Lcom/didi/beatles/upload/BtsCropImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 196
    iget-object v2, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #calls: Lcom/didi/beatles/upload/BtsCropImageView;->checkAndDisplayMatrix()V
    invoke-static {v2}, Lcom/didi/beatles/upload/BtsCropImageView;->access$300(Lcom/didi/beatles/upload/BtsCropImageView;)V

    .line 198
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 208
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 211
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v7

    .line 215
    :cond_1
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 220
    const/4 v4, 0x0

    .local v4, x:F
    const/4 v5, 0x0

    .line 221
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 222
    .local v3, pointerCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 223
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v4, v8

    .line 224
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v5, v8

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 226
    :cond_2
    int-to-float v8, v3

    div-float/2addr v4, v8

    .line 227
    int-to-float v8, v3

    div-float/2addr v5, v8

    .line 232
    int-to-float v8, v3

    iget v9, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->lastPointerCount:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_4

    .line 233
    iput-boolean v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->isDragging:Z

    .line 234
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_3

    .line 235
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 237
    :cond_3
    iput v4, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->lastTouchX:F

    .line 238
    iput v5, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->lastTouchY:F

    .line 240
    :cond_4
    int-to-float v8, v3

    iput v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->lastPointerCount:F

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_5

    .line 245
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    .line 249
    :goto_2
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 251
    iput v4, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->lastTouchX:F

    .line 252
    iput v5, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->lastTouchY:F

    .line 253
    iput-boolean v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->isDragging:Z

    goto :goto_0

    .line 247
    :cond_5
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_2

    .line 257
    :pswitch_1
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->lastTouchX:F

    sub-float v0, v4, v8

    .local v0, dx:F
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->lastTouchY:F

    sub-float v1, v5, v8

    .line 259
    .local v1, dy:F
    iget-boolean v8, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->isDragging:Z

    if-nez v8, :cond_7

    .line 262
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iget v10, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->scaledTouchSlop:F

    float-to-double v10, v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_6

    move v6, v7

    :cond_6
    iput-boolean v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->isDragging:Z

    .line 265
    :cond_7
    iget-boolean v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->isDragging:Z

    if-eqz v6, :cond_0

    .line 266
    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    invoke-virtual {v6}, Lcom/didi/beatles/upload/BtsCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 267
    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #getter for: Lcom/didi/beatles/upload/BtsCropImageView;->suppMatrix:Landroid/graphics/Matrix;
    invoke-static {v6}, Lcom/didi/beatles/upload/BtsCropImageView;->access$200(Lcom/didi/beatles/upload/BtsCropImageView;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 268
    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->this$0:Lcom/didi/beatles/upload/BtsCropImageView;

    #calls: Lcom/didi/beatles/upload/BtsCropImageView;->checkAndDisplayMatrix()V
    invoke-static {v6}, Lcom/didi/beatles/upload/BtsCropImageView;->access$300(Lcom/didi/beatles/upload/BtsCropImageView;)V

    .line 271
    :cond_8
    iput v4, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->lastTouchX:F

    .line 272
    iput v5, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->lastTouchY:F

    .line 274
    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 275
    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 282
    .end local v0           #dx:F
    .end local v1           #dy:F
    :pswitch_2
    const/4 v6, 0x0

    iput v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->lastPointerCount:F

    .line 283
    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 284
    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 285
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
