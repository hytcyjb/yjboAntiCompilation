.class final Lct/j;
.super Ljava/lang/Object;


# static fields
.field private static c:Lct/j;


# instance fields
.field private a:J

.field private b:I

.field private d:Lct/n;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lct/j;->c:Lct/j;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lct/j;->a:J

    const/4 v0, -0x1

    iput v0, p0, Lct/j;->b:I

    new-instance v0, Lct/k;

    invoke-direct {v0, p0}, Lct/k;-><init>(Lct/j;)V

    iput-object v0, p0, Lct/j;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Lct/m;

    invoke-direct {v0, p0}, Lct/m;-><init>(Lct/j;)V

    iput-object v0, p0, Lct/j;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lct/j;I)I
    .locals 0

    iput p1, p0, Lct/j;->b:I

    return p1
.end method

.method static synthetic a(Lct/j;)J
    .locals 2

    iget-wide v0, p0, Lct/j;->a:J

    return-wide v0
.end method

.method static synthetic a(Lct/j;J)J
    .locals 0

    iput-wide p1, p0, Lct/j;->a:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lct/j;
    .locals 2

    const-class v1, Lct/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lct/j;->c:Lct/j;

    if-nez v0, :cond_0

    new-instance v0, Lct/j;

    invoke-direct {v0}, Lct/j;-><init>()V

    sput-object v0, Lct/j;->c:Lct/j;

    :cond_0
    sget-object v0, Lct/j;->c:Lct/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lct/j;)I
    .locals 1

    iget v0, p0, Lct/j;->b:I

    return v0
.end method


# virtual methods
.method public final a(Lct/n;)V
    .locals 8

    const-wide/32 v4, 0x1b7740

    const/4 v7, 0x0

    iput-object p1, p0, Lct/j;->d:Lct/n;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lct/j;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "AccessSchedulerTrigger"

    const-string v1, "startListenNetworkChange..."

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AccessSchedulerTrigger"

    const-string v1, "try startAccessSchedulerTimer..."

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action.scheduler.access.trigger.timer"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lct/j;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v2, v1, v4

    new-instance v1, Landroid/content/Intent;

    const-string v6, "action.scheduler.access.trigger.timer"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string v0, "AccessSchedulerTrigger"

    const-string v1, "startAccessSchedulerTimer timer start..."

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lct/j;->d:Lct/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/j;->d:Lct/n;

    invoke-interface {v0}, Lct/n;->b()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AccessSchedulerTrigger"

    const-string v1, "onAccessSchedulerTriggered not call for triggerlistener is null"

    invoke-static {v0, v1}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
