.class public final enum Lcom/ddtaxi/a/a/gu;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/ddtaxi/a/a/gu;

.field public static final enum b:Lcom/ddtaxi/a/a/gu;

.field private static final synthetic c:[Lcom/ddtaxi/a/a/gu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ddtaxi/a/a/gu;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/gu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ddtaxi/a/a/gu;->a:Lcom/ddtaxi/a/a/gu;

    new-instance v0, Lcom/ddtaxi/a/a/gu;

    const-string v1, "EXTENSION_SET"

    invoke-direct {v0, v1, v3}, Lcom/ddtaxi/a/a/gu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ddtaxi/a/a/gu;->b:Lcom/ddtaxi/a/a/gu;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ddtaxi/a/a/gu;

    sget-object v1, Lcom/ddtaxi/a/a/gu;->a:Lcom/ddtaxi/a/a/gu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ddtaxi/a/a/gu;->b:Lcom/ddtaxi/a/a/gu;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ddtaxi/a/a/gu;->c:[Lcom/ddtaxi/a/a/gu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ddtaxi/a/a/gu;
    .locals 1

    const-class v0, Lcom/ddtaxi/a/a/gu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gu;

    return-object v0
.end method

.method public static a()[Lcom/ddtaxi/a/a/gu;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ddtaxi/a/a/gu;->c:[Lcom/ddtaxi/a/a/gu;

    array-length v1, v0

    new-array v2, v1, [Lcom/ddtaxi/a/a/gu;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
