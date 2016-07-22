.class public final enum Lcom/didi/ddrive/net/http/config/KDHttpTransaction;
.super Ljava/lang/Enum;
.source "KDHttpTransaction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/ddrive/net/http/config/KDHttpTransaction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

.field public static final enum COMMERCIAL:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

.field public static final enum DRIVE:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

.field public static final enum SPECIAL_CAR:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

.field public static final enum TAXI:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    const-string v1, "TAXI"

    invoke-direct {v0, v1, v2}, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->TAXI:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    .line 8
    new-instance v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    const-string v1, "SPECIAL_CAR"

    invoke-direct {v0, v1, v3}, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->SPECIAL_CAR:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    .line 10
    new-instance v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    const-string v1, "DRIVE"

    invoke-direct {v0, v1, v4}, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->DRIVE:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    .line 12
    new-instance v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    const-string v1, "COMMERCIAL"

    invoke-direct {v0, v1, v5}, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->COMMERCIAL:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    sget-object v1, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->TAXI:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->SPECIAL_CAR:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->DRIVE:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->COMMERCIAL:Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->$VALUES:[Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/ddrive/net/http/config/KDHttpTransaction;
    .locals 1
    .parameter "name"

    .prologue
    .line 4
    const-class v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    return-object v0
.end method

.method public static values()[Lcom/didi/ddrive/net/http/config/KDHttpTransaction;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->$VALUES:[Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    invoke-virtual {v0}, [Lcom/didi/ddrive/net/http/config/KDHttpTransaction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/ddrive/net/http/config/KDHttpTransaction;

    return-object v0
.end method
