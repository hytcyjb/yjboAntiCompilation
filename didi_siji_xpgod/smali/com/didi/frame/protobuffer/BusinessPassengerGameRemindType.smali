.class public final enum Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;
.super Ljava/lang/Enum;
.source "BusinessPassengerGameRemindType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

.field public static final enum GameRemindType_Game:Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

.field public static final enum GameRemindType_RedBackground:Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

.field public static final enum GameRemindType_WhiteBackground:Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;


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
    new-instance v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    const-string v1, "GameRemindType_Game"

    invoke-direct {v0, v1, v2, v2}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;->GameRemindType_Game:Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    .line 16
    new-instance v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    const-string v1, "GameRemindType_RedBackground"

    invoke-direct {v0, v1, v3, v3}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;->GameRemindType_RedBackground:Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    .line 20
    new-instance v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    const-string v1, "GameRemindType_WhiteBackground"

    invoke-direct {v0, v1, v4, v4}, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;->GameRemindType_WhiteBackground:Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    sget-object v1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;->GameRemindType_Game:Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;->GameRemindType_RedBackground:Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;->GameRemindType_WhiteBackground:Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;->$VALUES:[Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

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
    iput p3, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;->value:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;->$VALUES:[Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/didi/frame/protobuffer/BusinessPassengerGameRemindType;->value:I

    return v0
.end method
