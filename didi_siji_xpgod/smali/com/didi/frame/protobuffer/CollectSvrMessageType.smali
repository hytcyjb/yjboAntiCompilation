.class public final enum Lcom/didi/frame/protobuffer/CollectSvrMessageType;
.super Ljava/lang/Enum;
.source "CollectSvrMessageType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/CollectSvrMessageType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/CollectSvrMessageType;

.field public static final enum kCollectSvrMessageTypeCollectSvrCoordinateReq:Lcom/didi/frame/protobuffer/CollectSvrMessageType;

.field public static final enum kCollectSvrMessageTypeCollectSvrOrderFilterReq:Lcom/didi/frame/protobuffer/CollectSvrMessageType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9
    new-instance v0, Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    const-string v1, "kCollectSvrMessageTypeCollectSvrCoordinateReq"

    invoke-direct {v0, v1, v3, v2}, Lcom/didi/frame/protobuffer/CollectSvrMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->kCollectSvrMessageTypeCollectSvrCoordinateReq:Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    .line 10
    new-instance v0, Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    const-string v1, "kCollectSvrMessageTypeCollectSvrOrderFilterReq"

    invoke-direct {v0, v1, v2, v4}, Lcom/didi/frame/protobuffer/CollectSvrMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->kCollectSvrMessageTypeCollectSvrOrderFilterReq:Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    .line 7
    new-array v0, v4, [Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    sget-object v1, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->kCollectSvrMessageTypeCollectSvrCoordinateReq:Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->kCollectSvrMessageTypeCollectSvrOrderFilterReq:Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->$VALUES:[Lcom/didi/frame/protobuffer/CollectSvrMessageType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->value:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/CollectSvrMessageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/CollectSvrMessageType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->$VALUES:[Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/CollectSvrMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->value:I

    return v0
.end method
