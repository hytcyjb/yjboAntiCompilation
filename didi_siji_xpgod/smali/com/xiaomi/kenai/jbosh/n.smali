.class final Lcom/xiaomi/kenai/jbosh/n;
.super Lcom/xiaomi/kenai/jbosh/c;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/kenai/jbosh/c;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/kenai/jbosh/n;->a(I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/n;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/kenai/jbosh/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/kenai/jbosh/n;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
