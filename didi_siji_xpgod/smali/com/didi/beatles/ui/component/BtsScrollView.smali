.class public Lcom/didi/beatles/ui/component/BtsScrollView;
.super Landroid/widget/ScrollView;
.source "BtsScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;
    }
.end annotation


# static fields
.field private static FLING_DISTANCE:I


# instance fields
.field private final SINGLE_TOP_INTERVAL:I

.field private downTime:J

.field private downX:F

.field private downY:F

.field private gestuerListener:Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;

.field private upTime:J

.field private upX:F

.field private upY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v0, 0xc8

    iput v0, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->SINGLE_TOP_INTERVAL:I

    .line 52
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/component/BtsScrollView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/16 v0, 0xc8

    iput v0, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->SINGLE_TOP_INTERVAL:I

    .line 43
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/component/BtsScrollView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/16 v0, 0xc8

    iput v0, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->SINGLE_TOP_INTERVAL:I

    .line 33
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/component/BtsScrollView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/high16 v0, 0x41f0

    invoke-static {p1, v0}, Lcom/didi/beatles/utils/BtsDensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/didi/beatles/ui/component/BtsScrollView;->FLING_DISTANCE:I

    .line 57
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 66
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 68
    :pswitch_1
    iput v7, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->upX:F

    iput v7, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->upY:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->upTime:J

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->downY:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->downTime:J

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->upX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->upY:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->upTime:J

    .line 78
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->gestuerListener:Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;

    if-eqz v2, :cond_0

    .line 79
    iget-wide v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->upTime:J

    iget-wide v4, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->downTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 80
    iget v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->upY:F

    iget v3, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->downY:F

    sub-float v1, v2, v3

    .line 81
    .local v1, yInstance:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lcom/didi/beatles/ui/component/BtsScrollView;->FLING_DISTANCE:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnGestureListener time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->upTime:J

    iget-wide v5, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->downTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",distance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 83
    cmpl-float v2, v1, v7

    if-lez v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->gestuerListener:Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;

    invoke-interface {v2}, Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;->onDownFling()V

    goto/16 :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->gestuerListener:Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;

    invoke-interface {v2}, Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;->onUpFling()V

    goto/16 :goto_0

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->gestuerListener:Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;

    invoke-interface {v2}, Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;->onOneTopClick()V

    goto/16 :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setOnGestureListener(Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;)V
    .locals 0
    .parameter "onGestuerListener"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsScrollView;->gestuerListener:Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;

    .line 61
    return-void
.end method
