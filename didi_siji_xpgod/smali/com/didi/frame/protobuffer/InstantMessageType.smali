.class public final enum Lcom/didi/frame/protobuffer/InstantMessageType;
.super Ljava/lang/Enum;
.source "InstantMessageType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/InstantMessageType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/InstantMessageType;

.field public static final enum kInstantMessageTypeText:Lcom/didi/frame/protobuffer/InstantMessageType;

.field public static final enum kInstantMessageTypeVoice:Lcom/didi/frame/protobuffer/InstantMessageType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/didi/frame/protobuffer/InstantMessageType;

    const-string v1, "kInstantMessageTypeText"

    invoke-direct {v0, v1, v2, v2}, Lcom/didi/frame/protobuffer/InstantMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageType;->kInstantMessageTypeText:Lcom/didi/frame/protobuffer/InstantMessageType;

    .line 10
    new-instance v0, Lcom/didi/frame/protobuffer/InstantMessageType;

    const-string v1, "kInstantMessageTypeVoice"

    invoke-direct {v0, v1, v3, v3}, Lcom/didi/frame/protobuffer/InstantMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageType;->kInstantMessageTypeVoice:Lcom/didi/frame/protobuffer/InstantMessageType;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/didi/frame/protobuffer/InstantMessageType;

    sget-object v1, Lcom/didi/frame/protobuffer/InstantMessageType;->kInstantMessageTypeText:Lcom/didi/frame/protobuffer/InstantMessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/protobuffer/InstantMessageType;->kInstantMessageTypeVoice:Lcom/didi/frame/protobuffer/InstantMessageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageType;->$VALUES:[Lcom/didi/frame/protobuffer/InstantMessageType;

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
    iput p3, p0, Lcom/didi/frame/protobuffer/InstantMessageType;->value:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/InstantMessageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/InstantMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/InstantMessageType;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/InstantMessageType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/InstantMessageType;->$VALUES:[Lcom/didi/frame/protobuffer/InstantMessageType;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/InstantMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/InstantMessageType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/didi/frame/protobuffer/InstantMessageType;->value:I

    return v0
.end method
