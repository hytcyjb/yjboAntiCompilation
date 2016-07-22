.class Lcom/xiaomi/channel/commonutils/misc/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/channel/commonutils/misc/b$b;

.field final synthetic b:Lcom/xiaomi/channel/commonutils/misc/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/commonutils/misc/b;Lcom/xiaomi/channel/commonutils/misc/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/misc/d;->b:Lcom/xiaomi/channel/commonutils/misc/b;

    iput-object p2, p0, Lcom/xiaomi/channel/commonutils/misc/d;->a:Lcom/xiaomi/channel/commonutils/misc/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/d;->b:Lcom/xiaomi/channel/commonutils/misc/b;

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/misc/d;->a:Lcom/xiaomi/channel/commonutils/misc/b$b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/b;->a(Lcom/xiaomi/channel/commonutils/misc/b$b;)V

    return-void
.end method
