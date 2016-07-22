.class Lcom/xiaomi/stats/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/w$b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stats/a$1;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private b:Lcom/xiaomi/push/service/w$b;

.field private c:Lcom/xiaomi/smack/j;

.field private d:Lcom/xiaomi/push/service/w$c;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/w$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/stats/a;->f:Z

    iput-object p1, p0, Lcom/xiaomi/stats/a;->a:Lcom/xiaomi/push/service/XMPushService;

    sget-object v0, Lcom/xiaomi/push/service/w$c;->b:Lcom/xiaomi/push/service/w$c;

    iput-object v0, p0, Lcom/xiaomi/stats/a;->d:Lcom/xiaomi/push/service/w$c;

    iput-object p2, p0, Lcom/xiaomi/stats/a;->b:Lcom/xiaomi/push/service/w$b;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stats/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/stats/a;->c()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/stats/a;->b:Lcom/xiaomi/push/service/w$b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/w$b;->b(Lcom/xiaomi/push/service/w$b$a;)V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/stats/a;->b()V

    iget-boolean v0, p0, Lcom/xiaomi/stats/a;->f:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xiaomi/stats/a;->e:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/xiaomi/stats/e;->a()Lcom/xiaomi/stats/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stats/e;->e()Lcom/xiaomi/xmpush/thrift/e;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/stats/a$1;->a:[I

    iget-object v2, p0, Lcom/xiaomi/stats/a;->d:Lcom/xiaomi/push/service/w$c;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/w$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stats/a;->c:Lcom/xiaomi/smack/j;

    invoke-virtual {v1}, Lcom/xiaomi/smack/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    iget-object v1, p0, Lcom/xiaomi/stats/a;->b:Lcom/xiaomi/push/service/w$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/w$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/xmpush/thrift/e;->c:I

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/stats/a;->b:Lcom/xiaomi/push/service/w$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/w$b;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->a(B)Lcom/xiaomi/xmpush/thrift/e;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    invoke-static {}, Lcom/xiaomi/stats/e;->a()Lcom/xiaomi/stats/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/stats/e;->a(Lcom/xiaomi/xmpush/thrift/e;)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/xiaomi/stats/a;->e:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/xiaomi/xmpush/thrift/b;->t:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/xmpush/thrift/e;->b:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/xiaomi/stats/a;->e:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/xiaomi/xmpush/thrift/b;->A:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/xmpush/thrift/e;->b:I

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stats/e;->b()Lcom/xiaomi/stats/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stats/d;->c()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stats/c;->b(Ljava/lang/Exception;)Lcom/xiaomi/stats/c$a;

    move-result-object v1

    iget-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v2

    iput v2, v0, Lcom/xiaomi/xmpush/thrift/e;->b:I

    iget-object v1, v1, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/e;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/xiaomi/xmpush/thrift/b;->s:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/xmpush/thrift/e;->b:I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/stats/a;->b:Lcom/xiaomi/push/service/w$b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/w$b;->a(Lcom/xiaomi/push/service/w$b$a;)V

    iget-object v0, p0, Lcom/xiaomi/stats/a;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->h()Lcom/xiaomi/smack/j;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stats/a;->c:Lcom/xiaomi/smack/j;

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/w$c;Lcom/xiaomi/push/service/w$c;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/stats/a;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/w$c;->b:Lcom/xiaomi/push/service/w$c;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/xiaomi/stats/a;->d:Lcom/xiaomi/push/service/w$c;

    iput p3, p0, Lcom/xiaomi/stats/a;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/stats/a;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/stats/a;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/stats/b;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/stats/b;-><init>(Lcom/xiaomi/stats/a;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    return-void
.end method
