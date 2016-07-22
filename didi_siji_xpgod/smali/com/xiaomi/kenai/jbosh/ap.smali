.class final Lcom/xiaomi/kenai/jbosh/ap;
.super Lcom/xiaomi/kenai/jbosh/b;


# static fields
.field private static final a:Lcom/xiaomi/kenai/jbosh/ac;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/kenai/jbosh/ag;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/kenai/jbosh/ae;

    invoke-direct {v0}, Lcom/xiaomi/kenai/jbosh/ae;-><init>()V

    sput-object v0, Lcom/xiaomi/kenai/jbosh/ap;->a:Lcom/xiaomi/kenai/jbosh/ac;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/kenai/jbosh/ag;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/b;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/ap;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/xiaomi/kenai/jbosh/ap;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ap;
    .locals 2

    sget-object v0, Lcom/xiaomi/kenai/jbosh/ap;->a:Lcom/xiaomi/kenai/jbosh/ac;

    invoke-interface {v0, p0}, Lcom/xiaomi/kenai/jbosh/ac;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ad;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/kenai/jbosh/ap;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/ad;->a()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/xiaomi/kenai/jbosh/ap;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/kenai/jbosh/ag;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ap;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ap;->c:Ljava/lang/String;

    return-object v0
.end method
