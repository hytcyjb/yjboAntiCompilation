.class public final enum Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;
.super Ljava/lang/Enum;
.source "BtsCheckOrderPayStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

.field public static final enum PAY_CLOSE:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

.field public static final enum PAY_CREATE:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

.field public static final enum PAY_FAIL:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

.field public static final enum PAY_SUCCESS:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    const-string v1, "PAY_CREATE"

    invoke-direct {v0, v1, v2}, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_CREATE:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    .line 56
    new-instance v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    const-string v1, "PAY_FAIL"

    invoke-direct {v0, v1, v3}, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_FAIL:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    .line 60
    new-instance v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    const-string v1, "PAY_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_SUCCESS:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    .line 64
    new-instance v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    const-string v1, "PAY_CLOSE"

    invoke-direct {v0, v1, v5}, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_CLOSE:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    sget-object v1, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_CREATE:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_FAIL:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_SUCCESS:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->PAY_CLOSE:Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->$VALUES:[Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    return-object v0
.end method

.method public static values()[Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->$VALUES:[Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    invoke-virtual {v0}, [Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus$PayStatus;

    return-object v0
.end method
