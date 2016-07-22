.class public final enum Lcom/didi/common/receiver/NetReceiver$NetState;
.super Ljava/lang/Enum;
.source "NetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/receiver/NetReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/common/receiver/NetReceiver$NetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/common/receiver/NetReceiver$NetState;

.field public static final enum DISCONNECTED:Lcom/didi/common/receiver/NetReceiver$NetState;

.field public static final enum GPRS:Lcom/didi/common/receiver/NetReceiver$NetState;

.field public static final enum WIFI:Lcom/didi/common/receiver/NetReceiver$NetState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/didi/common/receiver/NetReceiver$NetState;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/didi/common/receiver/NetReceiver$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/receiver/NetReceiver$NetState;->WIFI:Lcom/didi/common/receiver/NetReceiver$NetState;

    new-instance v0, Lcom/didi/common/receiver/NetReceiver$NetState;

    const-string v1, "GPRS"

    invoke-direct {v0, v1, v3}, Lcom/didi/common/receiver/NetReceiver$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/receiver/NetReceiver$NetState;->GPRS:Lcom/didi/common/receiver/NetReceiver$NetState;

    new-instance v0, Lcom/didi/common/receiver/NetReceiver$NetState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/didi/common/receiver/NetReceiver$NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/receiver/NetReceiver$NetState;->DISCONNECTED:Lcom/didi/common/receiver/NetReceiver$NetState;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/common/receiver/NetReceiver$NetState;

    sget-object v1, Lcom/didi/common/receiver/NetReceiver$NetState;->WIFI:Lcom/didi/common/receiver/NetReceiver$NetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/common/receiver/NetReceiver$NetState;->GPRS:Lcom/didi/common/receiver/NetReceiver$NetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/common/receiver/NetReceiver$NetState;->DISCONNECTED:Lcom/didi/common/receiver/NetReceiver$NetState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/common/receiver/NetReceiver$NetState;->$VALUES:[Lcom/didi/common/receiver/NetReceiver$NetState;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/common/receiver/NetReceiver$NetState;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/didi/common/receiver/NetReceiver$NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/common/receiver/NetReceiver$NetState;

    return-object v0
.end method

.method public static values()[Lcom/didi/common/receiver/NetReceiver$NetState;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/didi/common/receiver/NetReceiver$NetState;->$VALUES:[Lcom/didi/common/receiver/NetReceiver$NetState;

    invoke-virtual {v0}, [Lcom/didi/common/receiver/NetReceiver$NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/common/receiver/NetReceiver$NetState;

    return-object v0
.end method
