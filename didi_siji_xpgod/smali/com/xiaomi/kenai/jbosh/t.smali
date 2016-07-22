.class Lcom/xiaomi/kenai/jbosh/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/kenai/jbosh/s;


# direct methods
.method constructor <init>(Lcom/xiaomi/kenai/jbosh/s;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/t;->a:Lcom/xiaomi/kenai/jbosh/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/t;->a:Lcom/xiaomi/kenai/jbosh/s;

    invoke-static {v0}, Lcom/xiaomi/kenai/jbosh/s;->a(Lcom/xiaomi/kenai/jbosh/s;)V

    return-void
.end method
