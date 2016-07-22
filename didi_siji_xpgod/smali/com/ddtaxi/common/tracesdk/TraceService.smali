.class public Lcom/ddtaxi/common/tracesdk/TraceService;
.super Landroid/app/Service;


# static fields
.field public static final CMD_ACTION:Ljava/lang/String; = "cmd_action"

.field public static final CMD_NONE:I = -0x23000000

.field public static final CMD_START:I = -0x22ffffff

.field public static final CMD_STOP:I = -0x22fffffe

.field private static final DEFAULT_MSG:I


# instance fields
.field private mRedelivery:Z

.field private volatile mServiceHandler:Lcom/ddtaxi/common/tracesdk/be;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ddtaxi/common/tracesdk/TraceService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/TraceService;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHandleIntent thread id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    const-string v0, "cmd_action"

    const/high16 v1, -0x2300

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/TraceService;->startTrace()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/TraceService;->stopTrace()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceService;->mServiceHandler:Lcom/ddtaxi/common/tracesdk/be;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/be;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/TraceService;->stopSelf()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x23000000
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startTrace()V
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/a;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/a;->a()V

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/l;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/l;->a()V

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/bk;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/bk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/bk;->a(Z)V

    :goto_0
    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/bk;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/bk;->a()V

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/k;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/k;->a()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/bk;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/bk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/bk;->a(Z)V

    goto :goto_0
.end method

.method private stopTrace()V
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/a;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/a;->b()V

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/l;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/l;->b()V

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/bk;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/bk;->b()V

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/k;->a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/k;->b()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "LCService#onCreate"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LCService["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceService;->mServiceLooper:Landroid/os/Looper;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/be;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/TraceService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/common/tracesdk/be;-><init>(Lcom/ddtaxi/common/tracesdk/TraceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceService;->mServiceHandler:Lcom/ddtaxi/common/tracesdk/be;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "LCService#onDestroy"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "LCService#onStart"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/TraceService;->mServiceHandler:Lcom/ddtaxi/common/tracesdk/be;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/be;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/TraceService;->mServiceHandler:Lcom/ddtaxi/common/tracesdk/be;

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/be;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/TraceService;->setIntentRedelivery(Z)V

    invoke-virtual {p0, p1, p3}, Lcom/ddtaxi/common/tracesdk/TraceService;->onStart(Landroid/content/Intent;I)V

    iget-boolean v0, p0, Lcom/ddtaxi/common/tracesdk/TraceService;->mRedelivery:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setIntentRedelivery(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/common/tracesdk/TraceService;->mRedelivery:Z

    return-void
.end method
