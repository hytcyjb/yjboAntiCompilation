.class public final enum Lcom/ddtaxi/a/a/eg;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/ddtaxi/a/a/eg;

.field public static final enum b:Lcom/ddtaxi/a/a/eg;

.field public static final enum c:Lcom/ddtaxi/a/a/eg;

.field private static final synthetic d:[Lcom/ddtaxi/a/a/eg;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ddtaxi/a/a/eg;

    const-string v1, "IMMUTABLE"

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/eg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ddtaxi/a/a/eg;->a:Lcom/ddtaxi/a/a/eg;

    new-instance v0, Lcom/ddtaxi/a/a/eg;

    const-string v1, "MUTABLE"

    invoke-direct {v0, v1, v3}, Lcom/ddtaxi/a/a/eg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ddtaxi/a/a/eg;->b:Lcom/ddtaxi/a/a/eg;

    new-instance v0, Lcom/ddtaxi/a/a/eg;

    const-string v1, "PROTO1"

    invoke-direct {v0, v1, v4}, Lcom/ddtaxi/a/a/eg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ddtaxi/a/a/eg;->c:Lcom/ddtaxi/a/a/eg;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ddtaxi/a/a/eg;

    sget-object v1, Lcom/ddtaxi/a/a/eg;->a:Lcom/ddtaxi/a/a/eg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ddtaxi/a/a/eg;->b:Lcom/ddtaxi/a/a/eg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ddtaxi/a/a/eg;->c:Lcom/ddtaxi/a/a/eg;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ddtaxi/a/a/eg;->d:[Lcom/ddtaxi/a/a/eg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ddtaxi/a/a/eg;
    .locals 1

    const-class v0, Lcom/ddtaxi/a/a/eg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eg;

    return-object v0
.end method

.method public static a()[Lcom/ddtaxi/a/a/eg;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ddtaxi/a/a/eg;->d:[Lcom/ddtaxi/a/a/eg;

    array-length v1, v0

    new-array v2, v1, [Lcom/ddtaxi/a/a/eg;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
