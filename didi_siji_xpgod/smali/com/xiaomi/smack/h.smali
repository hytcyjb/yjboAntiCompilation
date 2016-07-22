.class Lcom/xiaomi/smack/h;
.super Lcom/xiaomi/push/service/XMPushService$e;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/xiaomi/smack/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/b;ILjava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/h;->b:Lcom/xiaomi/smack/b;

    iput-object p3, p0, Lcom/xiaomi/smack/h;->a:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smack/h;->b:Lcom/xiaomi/smack/b;

    iget-object v0, v0, Lcom/xiaomi/smack/b;->n:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/smack/h;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->b(ILjava/lang/Exception;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shutdown the connection. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/h;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
