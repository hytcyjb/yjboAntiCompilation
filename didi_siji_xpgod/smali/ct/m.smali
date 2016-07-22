.class final Lct/m;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lct/j;


# direct methods
.method constructor <init>(Lct/j;)V
    .locals 0

    iput-object p1, p0, Lct/m;->a:Lct/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "AccessSchedulerTrigger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAccessSchedulerTriggered by timer, curTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lct/m;->a:Lct/j;

    invoke-virtual {v0}, Lct/j;->b()V

    return-void
.end method
