.class public final enum Lcom/didi/ddrive/net/http/config/KDUrlType;
.super Ljava/lang/Enum;
.source "KDUrlType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/ddrive/net/http/config/KDUrlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/ddrive/net/http/config/KDUrlType;

.field public static final enum COMMERCIAL:Lcom/didi/ddrive/net/http/config/KDUrlType;

.field public static final enum DRIVE:Lcom/didi/ddrive/net/http/config/KDUrlType;

.field public static final enum FILE:Lcom/didi/ddrive/net/http/config/KDUrlType;

.field public static final enum PASSENGER:Lcom/didi/ddrive/net/http/config/KDUrlType;

.field public static final enum PASSENGER_FORM:Lcom/didi/ddrive/net/http/config/KDUrlType;

.field public static final enum USER:Lcom/didi/ddrive/net/http/config/KDUrlType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/didi/ddrive/net/http/config/KDUrlType;

    const-string v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/didi/ddrive/net/http/config/KDUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDUrlType;->USER:Lcom/didi/ddrive/net/http/config/KDUrlType;

    .line 8
    new-instance v0, Lcom/didi/ddrive/net/http/config/KDUrlType;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v4}, Lcom/didi/ddrive/net/http/config/KDUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDUrlType;->FILE:Lcom/didi/ddrive/net/http/config/KDUrlType;

    .line 10
    new-instance v0, Lcom/didi/ddrive/net/http/config/KDUrlType;

    const-string v1, "PASSENGER"

    invoke-direct {v0, v1, v5}, Lcom/didi/ddrive/net/http/config/KDUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDUrlType;->PASSENGER:Lcom/didi/ddrive/net/http/config/KDUrlType;

    .line 12
    new-instance v0, Lcom/didi/ddrive/net/http/config/KDUrlType;

    const-string v1, "PASSENGER_FORM"

    invoke-direct {v0, v1, v6}, Lcom/didi/ddrive/net/http/config/KDUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDUrlType;->PASSENGER_FORM:Lcom/didi/ddrive/net/http/config/KDUrlType;

    .line 14
    new-instance v0, Lcom/didi/ddrive/net/http/config/KDUrlType;

    const-string v1, "COMMERCIAL"

    invoke-direct {v0, v1, v7}, Lcom/didi/ddrive/net/http/config/KDUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDUrlType;->COMMERCIAL:Lcom/didi/ddrive/net/http/config/KDUrlType;

    .line 16
    new-instance v0, Lcom/didi/ddrive/net/http/config/KDUrlType;

    const-string v1, "DRIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/didi/ddrive/net/http/config/KDUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDUrlType;->DRIVE:Lcom/didi/ddrive/net/http/config/KDUrlType;

    .line 4
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/didi/ddrive/net/http/config/KDUrlType;

    sget-object v1, Lcom/didi/ddrive/net/http/config/KDUrlType;->USER:Lcom/didi/ddrive/net/http/config/KDUrlType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/ddrive/net/http/config/KDUrlType;->FILE:Lcom/didi/ddrive/net/http/config/KDUrlType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/ddrive/net/http/config/KDUrlType;->PASSENGER:Lcom/didi/ddrive/net/http/config/KDUrlType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/ddrive/net/http/config/KDUrlType;->PASSENGER_FORM:Lcom/didi/ddrive/net/http/config/KDUrlType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/didi/ddrive/net/http/config/KDUrlType;->COMMERCIAL:Lcom/didi/ddrive/net/http/config/KDUrlType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/didi/ddrive/net/http/config/KDUrlType;->DRIVE:Lcom/didi/ddrive/net/http/config/KDUrlType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDUrlType;->$VALUES:[Lcom/didi/ddrive/net/http/config/KDUrlType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/didi/ddrive/net/http/config/KDUrlType;
    .locals 1
    .parameter "name"

    .prologue
    .line 4
    const-class v0, Lcom/didi/ddrive/net/http/config/KDUrlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/http/config/KDUrlType;

    return-object v0
.end method

.method public static values()[Lcom/didi/ddrive/net/http/config/KDUrlType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/didi/ddrive/net/http/config/KDUrlType;->$VALUES:[Lcom/didi/ddrive/net/http/config/KDUrlType;

    invoke-virtual {v0}, [Lcom/didi/ddrive/net/http/config/KDUrlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/ddrive/net/http/config/KDUrlType;

    return-object v0
.end method
