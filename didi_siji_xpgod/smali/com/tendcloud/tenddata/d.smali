.class public Lcom/tendcloud/tenddata/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/d$a;
    }
.end annotation


# static fields
.field private static b:Lcom/tendcloud/tenddata/d; = null

.field private static final c:J = 0x2710L

.field private static final d:I = 0xa

.field private static final e:I = 0x5


# instance fields
.field private a:Landroid/content/Context;

.field private f:Landroid/hardware/SensorManager;

.field private g:Lcom/tendcloud/tenddata/d$a;

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/d;->b:Lcom/tendcloud/tenddata/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/d;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tendcloud/tenddata/d;->g:Lcom/tendcloud/tenddata/d$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/d;->h:I

    new-instance v0, Lcom/tendcloud/tenddata/ae;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/ae;-><init>(Lcom/tendcloud/tenddata/d;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/d;->i:Landroid/os/Handler;

    new-instance v0, Lcom/tendcloud/tenddata/ab;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/ab;-><init>(Lcom/tendcloud/tenddata/d;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/d;->j:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lcom/tendcloud/tenddata/d;->a:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tendcloud/tenddata/d;->f:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/tendcloud/tenddata/d;->f:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tendcloud/tenddata/d;->j:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/tendcloud/tenddata/d;->f:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/tendcloud/tenddata/d;->i:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/d;I)I
    .locals 0

    iput p1, p0, Lcom/tendcloud/tenddata/d;->h:I

    return p1
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/d;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/d;->f:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tendcloud/tenddata/d;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/d;->b:Lcom/tendcloud/tenddata/d;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/d;->b:Lcom/tendcloud/tenddata/d;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tendcloud/tenddata/d;->b(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/d;->b:Lcom/tendcloud/tenddata/d;

    return-object v0
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/d;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/d;->j:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/d;->b:Lcom/tendcloud/tenddata/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/d;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tendcloud/tenddata/d;->b:Lcom/tendcloud/tenddata/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/d;)I
    .locals 2

    iget v0, p0, Lcom/tendcloud/tenddata/d;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tendcloud/tenddata/d;->h:I

    return v0
.end method

.method static synthetic d(Lcom/tendcloud/tenddata/d;)I
    .locals 1

    iget v0, p0, Lcom/tendcloud/tenddata/d;->h:I

    return v0
.end method

.method static synthetic e(Lcom/tendcloud/tenddata/d;)Lcom/tendcloud/tenddata/d$a;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/d;->g:Lcom/tendcloud/tenddata/d$a;

    return-object v0
.end method

.method static synthetic f(Lcom/tendcloud/tenddata/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/d;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tendcloud/tenddata/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/d;->g:Lcom/tendcloud/tenddata/d$a;

    return-void
.end method
