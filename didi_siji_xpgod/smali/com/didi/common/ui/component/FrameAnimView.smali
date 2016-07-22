.class public Lcom/didi/common/ui/component/FrameAnimView;
.super Landroid/widget/ImageView;
.source "FrameAnimView.java"


# static fields
.field private static final MIN_INTERVAL:J = 0x5L

.field private static final MSG_TYPE_GONE:I = 0x2

.field private static final MSG_TYPE_UPDATE:I = 0x1


# instance fields
.field private mAnimThread:Ljava/lang/Thread;

.field private mDrawables:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFrameCount:I

.field private mHandler:Landroid/os/Handler;

.field private mInterval:J

.field private volatile mReverse:Z

.field private volatile mStart:Z

.field private mTotalFrame:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mDrawables:Ljava/util/Vector;

    .line 22
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mInterval:J

    .line 24
    iput v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mTotalFrame:I

    .line 27
    iput-boolean v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mStart:Z

    .line 29
    iput v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I

    .line 31
    iput-boolean v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mReverse:Z

    .line 92
    new-instance v0, Lcom/didi/common/ui/component/FrameAnimView$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/FrameAnimView$1;-><init>(Lcom/didi/common/ui/component/FrameAnimView;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/didi/common/ui/component/FrameAnimView$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/FrameAnimView$2;-><init>(Lcom/didi/common/ui/component/FrameAnimView;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mAnimThread:Ljava/lang/Thread;

    .line 35
    iput-boolean v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mStart:Z

    .line 36
    iput v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I

    .line 37
    iput-boolean v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mReverse:Z

    .line 39
    iget-object v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mAnimThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/component/FrameAnimView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/didi/common/ui/component/FrameAnimView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/didi/common/ui/component/FrameAnimView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/component/FrameAnimView;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mDrawables:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$201(Lcom/didi/common/ui/component/FrameAnimView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/common/ui/component/FrameAnimView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mStart:Z

    return v0
.end method

.method static synthetic access$302(Lcom/didi/common/ui/component/FrameAnimView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/didi/common/ui/component/FrameAnimView;->mStart:Z

    return p1
.end method

.method static synthetic access$400(Lcom/didi/common/ui/component/FrameAnimView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mReverse:Z

    return v0
.end method

.method static synthetic access$500(Lcom/didi/common/ui/component/FrameAnimView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mTotalFrame:I

    return v0
.end method

.method static synthetic access$600(Lcom/didi/common/ui/component/FrameAnimView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/common/ui/component/FrameAnimView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/didi/common/ui/component/FrameAnimView;->mInterval:J

    return-wide v0
.end method

.method public static getInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter "paras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, classParas:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 45
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 48
    .local v0, con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 58
    .end local v0           #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 49
    .restart local v0       #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 50
    :catch_1
    move-exception v2

    goto :goto_0

    .line 51
    :catch_2
    move-exception v2

    goto :goto_0

    .line 52
    :catch_3
    move-exception v2

    goto :goto_0

    .line 55
    .end local v0           #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :catch_4
    move-exception v2

    goto :goto_0

    .line 54
    :catch_5
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public setFrames(Ljava/util/Vector;J)V
    .locals 3
    .parameter
    .parameter "interval"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, resId:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x5

    .line 62
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mStart:Z

    .line 64
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    iput v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mTotalFrame:I

    .line 65
    iget-object v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mDrawables:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 66
    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .end local p2
    :goto_0
    iput-wide p2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mInterval:J

    .line 67
    return-void

    .restart local p2
    :cond_0
    move-wide p2, v0

    .line 66
    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    if-nez p1, :cond_0

    .line 72
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iput-boolean v1, p0, Lcom/didi/common/ui/component/FrameAnimView;->mReverse:Z

    .line 74
    iput v1, p0, Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I

    .line 80
    :goto_0
    iput-boolean v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mStart:Z

    .line 81
    iget-object v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mAnimThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView;->mAnimThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    return-void

    .line 76
    :cond_0
    iput-boolean v2, p0, Lcom/didi/common/ui/component/FrameAnimView;->mReverse:Z

    .line 77
    iget v1, p0, Lcom/didi/common/ui/component/FrameAnimView;->mTotalFrame:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/IllegalMonitorStateException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalMonitorStateException;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v0           #e:Ljava/lang/IllegalMonitorStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
