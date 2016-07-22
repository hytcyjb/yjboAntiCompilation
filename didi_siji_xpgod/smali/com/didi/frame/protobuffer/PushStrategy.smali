.class public final enum Lcom/didi/frame/protobuffer/PushStrategy;
.super Ljava/lang/Enum;
.source "PushStrategy.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/PushStrategy;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/PushStrategy;

.field public static final enum kPushStrategyMobileMsg:Lcom/didi/frame/protobuffer/PushStrategy;

.field public static final enum kPushStrategyNoResponse:Lcom/didi/frame/protobuffer/PushStrategy;

.field public static final enum kPushStrategyStatResponse:Lcom/didi/frame/protobuffer/PushStrategy;

.field public static final enum kPushStrategyTryBest:Lcom/didi/frame/protobuffer/PushStrategy;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 13
    new-instance v0, Lcom/didi/frame/protobuffer/PushStrategy;

    const-string v1, "kPushStrategyNoResponse"

    invoke-direct {v0, v1, v5, v2}, Lcom/didi/frame/protobuffer/PushStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/PushStrategy;->kPushStrategyNoResponse:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 18
    new-instance v0, Lcom/didi/frame/protobuffer/PushStrategy;

    const-string v1, "kPushStrategyStatResponse"

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/PushStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/PushStrategy;->kPushStrategyStatResponse:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 25
    new-instance v0, Lcom/didi/frame/protobuffer/PushStrategy;

    const-string v1, "kPushStrategyTryBest"

    invoke-direct {v0, v1, v3, v4}, Lcom/didi/frame/protobuffer/PushStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/PushStrategy;->kPushStrategyTryBest:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 32
    new-instance v0, Lcom/didi/frame/protobuffer/PushStrategy;

    const-string v1, "kPushStrategyMobileMsg"

    invoke-direct {v0, v1, v4, v6}, Lcom/didi/frame/protobuffer/PushStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/PushStrategy;->kPushStrategyMobileMsg:Lcom/didi/frame/protobuffer/PushStrategy;

    .line 7
    new-array v0, v6, [Lcom/didi/frame/protobuffer/PushStrategy;

    sget-object v1, Lcom/didi/frame/protobuffer/PushStrategy;->kPushStrategyNoResponse:Lcom/didi/frame/protobuffer/PushStrategy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/frame/protobuffer/PushStrategy;->kPushStrategyStatResponse:Lcom/didi/frame/protobuffer/PushStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/protobuffer/PushStrategy;->kPushStrategyTryBest:Lcom/didi/frame/protobuffer/PushStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/frame/protobuffer/PushStrategy;->kPushStrategyMobileMsg:Lcom/didi/frame/protobuffer/PushStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/frame/protobuffer/PushStrategy;->$VALUES:[Lcom/didi/frame/protobuffer/PushStrategy;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/didi/frame/protobuffer/PushStrategy;->value:I

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PushStrategy;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/PushStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/PushStrategy;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/PushStrategy;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/PushStrategy;->$VALUES:[Lcom/didi/frame/protobuffer/PushStrategy;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/PushStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/PushStrategy;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/didi/frame/protobuffer/PushStrategy;->value:I

    return v0
.end method
