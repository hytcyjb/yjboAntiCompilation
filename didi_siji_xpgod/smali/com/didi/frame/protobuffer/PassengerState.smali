.class public final enum Lcom/didi/frame/protobuffer/PassengerState;
.super Ljava/lang/Enum;
.source "PassengerState.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/PassengerState;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/PassengerState;

.field public static final enum PassengerStateHasCommented:Lcom/didi/frame/protobuffer/PassengerState;

.field public static final enum PassengerStateHasPaidOff:Lcom/didi/frame/protobuffer/PassengerState;

.field public static final enum PassengerStateNormal:Lcom/didi/frame/protobuffer/PassengerState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/didi/frame/protobuffer/PassengerState;

    const-string v1, "PassengerStateNormal"

    invoke-direct {v0, v1, v2, v2}, Lcom/didi/frame/protobuffer/PassengerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateNormal:Lcom/didi/frame/protobuffer/PassengerState;

    .line 16
    new-instance v0, Lcom/didi/frame/protobuffer/PassengerState;

    const-string v1, "PassengerStateHasPaidOff"

    invoke-direct {v0, v1, v3, v3}, Lcom/didi/frame/protobuffer/PassengerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateHasPaidOff:Lcom/didi/frame/protobuffer/PassengerState;

    .line 20
    new-instance v0, Lcom/didi/frame/protobuffer/PassengerState;

    const-string v1, "PassengerStateHasCommented"

    invoke-direct {v0, v1, v4, v4}, Lcom/didi/frame/protobuffer/PassengerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateHasCommented:Lcom/didi/frame/protobuffer/PassengerState;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/frame/protobuffer/PassengerState;

    sget-object v1, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateNormal:Lcom/didi/frame/protobuffer/PassengerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateHasPaidOff:Lcom/didi/frame/protobuffer/PassengerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateHasCommented:Lcom/didi/frame/protobuffer/PassengerState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/frame/protobuffer/PassengerState;->$VALUES:[Lcom/didi/frame/protobuffer/PassengerState;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/didi/frame/protobuffer/PassengerState;->value:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PassengerState;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/PassengerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/PassengerState;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/PassengerState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/PassengerState;->$VALUES:[Lcom/didi/frame/protobuffer/PassengerState;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/PassengerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/PassengerState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/didi/frame/protobuffer/PassengerState;->value:I

    return v0
.end method
