.class final Lcom/xiaomi/kenai/jbosh/o;
.super Lcom/xiaomi/kenai/jbosh/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/kenai/jbosh/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/kenai/jbosh/a;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/o;
    .locals 1

    new-instance v0, Lcom/xiaomi/kenai/jbosh/o;

    invoke-direct {v0, p0}, Lcom/xiaomi/kenai/jbosh/o;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
