.class public final enum Lcom/didi/frame/protobuffer/DispatchMessageType;
.super Ljava/lang/Enum;
.source "DispatchMessageType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/DispatchMessageType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/DispatchMessageType;

.field public static final enum kDispatchMessageTypeDriverFilterOrderReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

.field public static final enum kDispatchMessageTypeDriverOrderGetReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

.field public static final enum kDispatchMessageTypeDriverOrderMoneyGetReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

.field public static final enum kDispatchMessageTypeMonitorResultReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

.field public static final enum kDispatchMessageTypeOnlineModeConnectReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

.field public static final enum kDispatchMessageTypeOnlineModeDisconnectReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

.field public static final enum kDispatchMessageTypePassengerDiverLocGetByIdReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

.field public static final enum kDispatchMessageTypePassengerDiverLocGetByLocReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

.field public static final enum kDispatchMessageTypePassengerOrderGetReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

.field public static final enum kDispatchMessageTypePassengerPayStatusReq:Lcom/didi/frame/protobuffer/DispatchMessageType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 12
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    const-string v1, "kDispatchMessageTypeDriverOrderGetReq"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/didi/frame/protobuffer/DispatchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeDriverOrderGetReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    .line 16
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    const-string v1, "kDispatchMessageTypeMonitorResultReq"

    invoke-direct {v0, v1, v4, v5}, Lcom/didi/frame/protobuffer/DispatchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeMonitorResultReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    .line 17
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    const-string v1, "kDispatchMessageTypeOnlineModeConnectReq"

    invoke-direct {v0, v1, v5, v6}, Lcom/didi/frame/protobuffer/DispatchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeOnlineModeConnectReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    .line 18
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    const-string v1, "kDispatchMessageTypeOnlineModeDisconnectReq"

    invoke-direct {v0, v1, v6, v7}, Lcom/didi/frame/protobuffer/DispatchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeOnlineModeDisconnectReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    .line 19
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    const-string v1, "kDispatchMessageTypePassengerOrderGetReq"

    invoke-direct {v0, v1, v7, v8}, Lcom/didi/frame/protobuffer/DispatchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerOrderGetReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    .line 20
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    const-string v1, "kDispatchMessageTypeDriverOrderMoneyGetReq"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/didi/frame/protobuffer/DispatchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeDriverOrderMoneyGetReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    .line 24
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    const-string v1, "kDispatchMessageTypePassengerPayStatusReq"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/DispatchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerPayStatusReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    .line 28
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    const-string v1, "kDispatchMessageTypeDriverFilterOrderReq"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/DispatchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeDriverFilterOrderReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    .line 29
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    const-string v1, "kDispatchMessageTypePassengerDiverLocGetByLocReq"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/DispatchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerDiverLocGetByLocReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    .line 30
    new-instance v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    const-string v1, "kDispatchMessageTypePassengerDiverLocGetByIdReq"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/DispatchMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerDiverLocGetByIdReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    .line 7
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/didi/frame/protobuffer/DispatchMessageType;

    const/4 v1, 0x0

    sget-object v2, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeDriverOrderGetReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeMonitorResultReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeOnlineModeConnectReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeOnlineModeDisconnectReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerOrderGetReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeDriverOrderMoneyGetReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerPayStatusReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypeDriverFilterOrderReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerDiverLocGetByLocReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/didi/frame/protobuffer/DispatchMessageType;->kDispatchMessageTypePassengerDiverLocGetByIdReq:Lcom/didi/frame/protobuffer/DispatchMessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->$VALUES:[Lcom/didi/frame/protobuffer/DispatchMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/didi/frame/protobuffer/DispatchMessageType;->value:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DispatchMessageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/DispatchMessageType;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/DispatchMessageType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/DispatchMessageType;->$VALUES:[Lcom/didi/frame/protobuffer/DispatchMessageType;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/DispatchMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/DispatchMessageType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/didi/frame/protobuffer/DispatchMessageType;->value:I

    return v0
.end method
