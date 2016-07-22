.class Lcom/xiaomi/smack/k;
.super Lcom/xiaomi/push/service/XMPushService$e;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/smack/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/j;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/k;->c:Lcom/xiaomi/smack/j;

    iput-object p3, p0, Lcom/xiaomi/smack/k;->a:Ljava/lang/Object;

    iput-object p4, p0, Lcom/xiaomi/smack/k;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/smack/k;->c:Lcom/xiaomi/smack/j;

    iget-object v1, p0, Lcom/xiaomi/smack/k;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChallenge hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/k;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/smack/k;->c:Lcom/xiaomi/smack/j;

    iget-object v1, p0, Lcom/xiaomi/smack/k;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/smack/j;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/smack/k;->c:Lcom/xiaomi/smack/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaomi/smack/j;->a(IILjava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "drop challenge = \u201c +  challenge + \u201c connection was already disconnected"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Receive challenge"

    return-object v0
.end method
