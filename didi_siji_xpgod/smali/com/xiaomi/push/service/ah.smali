.class Lcom/xiaomi/push/service/ah;
.super Lcom/xiaomi/push/service/XMPushService$e;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/ah;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/stats/e;->a()Lcom/xiaomi/stats/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/ah;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/ah;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/u;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/service/ah;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/b;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/stats/e;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/u;Lcom/xiaomi/smack/b;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/ah;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "prepare the mi push account."

    return-object v0
.end method
