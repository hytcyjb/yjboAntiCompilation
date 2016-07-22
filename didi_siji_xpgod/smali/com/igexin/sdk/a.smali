.class Lcom/igexin/sdk/a;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/igexin/sdk/PushServiceUser;


# direct methods
.method constructor <init>(Lcom/igexin/sdk/PushServiceUser;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/sdk/a;->a:Lcom/igexin/sdk/PushServiceUser;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/a;->a:Lcom/igexin/sdk/PushServiceUser;

    invoke-virtual {v0}, Lcom/igexin/sdk/PushServiceUser;->stopSelf()V

    return-void
.end method
