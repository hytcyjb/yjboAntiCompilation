.class public Lcom/xiaomi/stats/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smack/m;


# instance fields
.field a:Lcom/xiaomi/push/service/XMPushService;

.field private b:I

.field private c:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/stats/d;->a:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/stats/d;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->h()Lcom/xiaomi/smack/j;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->h:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaomi/smack/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stats/f;->a(IILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "STATS: current connection should not be null"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/stats/d;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/stats/d;->c:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iput p1, p0, Lcom/xiaomi/stats/d;->b:I

    iput-object p2, p0, Lcom/xiaomi/stats/d;->c:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/xiaomi/stats/d;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->h()Lcom/xiaomi/smack/j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/smack/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/xiaomi/stats/f;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "STATS: current connection should not be null"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaomi/stats/d;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/stats/d;->c:Ljava/lang/Exception;

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->h:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v0

    invoke-static {v1, v0}, Lcom/xiaomi/stats/f;->a(II)V

    return-void
.end method

.method c()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/stats/d;->c:Ljava/lang/Exception;

    return-object v0
.end method
